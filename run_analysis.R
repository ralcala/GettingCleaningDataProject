
suppressWarnings(library(dplyr))

source("options.inc.R")

#' Run the analysis on the data sets of the wereable device.
#'
#' @param path.data_dir   Folder containing the datasets.
#' @param path.tidy_data  Name of the file where to store the tidy dataset.
#' @param limit.rows      Maximum number of rows to load from the datasets. Use -1 for loading all the rows.
#' @examples
#'  run_analysis()
#'  run_analysis(limit.rows = 100)
run_analysis <- function(path.data_dir = options.path.data_dir, path.tidy_data = options.path.tidy_data, limit.rows = options.limit.rows)
{
    # Check that the data directory exists.
    if (! dir.exists(path.data_dir)) {
        stop(paste("Data dir ", path.data_dir, " not found!."))
    }

    # Load training data.
    train_set <- read.table(file.path(path.data_dir, "train", "X_train.txt"), nrows = limit.rows)
    train_lab <- read.table(file.path(path.data_dir, "train", "y_train.txt"), nrows = limit.rows)
    train_sub <- read.table(file.path(path.data_dir, "train", "subject_train.txt"), nrows = limit.rows)

    # Load test data.
    test_set <- read.table(file.path(path.data_dir, "test", "X_test.txt"), nrows = limit.rows)
    test_lab <- read.table(file.path(path.data_dir, "test", "y_test.txt"), nrows = limit.rows)
    test_sub <- read.table(file.path(path.data_dir, "test", "subject_test.txt"), nrows = limit.rows)

    # Load helper datasets.
    features   <- read.table(file.path(path.data_dir, "features.txt"))
    activities <- read.table(file.path(path.data_dir, "activity_labels.txt"))

    # Rename non-sensor datasets to avoid troubles selecting their variables (i.e.: using an incorrect column).
    names(test_lab) <- names(train_lab) <- c("activity")
    names(test_sub) <- names(train_sub) <- c("subject")

    names(features)   <- c("position", "name")
    names(activities) <- c("id", "name")


    # PART 1: Merges the training and the test sets to create one data set.

    # Stack one dataset after another, for each f the 3 datasets regarding training and testing.
    data_set <- rbind(train_set, test_set)
    data_lab <- rbind(train_lab, test_lab)
    data_sub <- rbind(train_sub, test_sub)


    # PART 2: Extracts only the measurements on the mean and standard deviation for each measurement.

    # Extract all the columns which contains a hyphen folowed by the words "mean" or "std".
    # This regexp excludes the angle() related measures, as the result is really an angle and not a mean or the std.
    cols <- grep("-(mean|std)", features$name)
    narrow_data_set <- data_set[, cols]


    # PART 3: Uses descriptive activity names to name the activities in the data set.

    # Convert the activity numeric value into a factor with a descriptive name and append to the dataset.
    data_lab <- factor(data_lab$activity, labels = activities$name)
    narrow_data_set <- cbind(narrow_data_set, data_lab)


    # PART 4: Appropriately labels the data set with descriptive variable names.

    # Get the features names and rename the default names (V1..V561) by the correct one, plus "activity" for the previously added column.
    col_names <- grep("-(mean|std)", features$name, value = TRUE)
    col_names <- make.unique(col_names)

    names(narrow_data_set) <- c(col_names, "activity")


    # PART 5: Create a tidy data set with the average of each variable for each activity and each subject.

    # Append the subject to the dataset.
    narrow_data_set <- cbind(narrow_data_set, data_sub)

    # Apply the mean to all the columns, groupng rows by activity and subject.
    group_list <- list(narrow_data_set$activity, narrow_data_set$subject)
    tidy_data_set <- aggregate(narrow_data_set[, col_names], group_list, mean)

    # REname the grouping columns (aggregate doesn't preserve the name) plus cleaning the other measurements variables,
    # because they containg invalid characters, that get replaced by many dots (showing many continous dots in the name).
    # This way only a single dot separating words is displayed instead of several ones.
    col_names <- names(tidy_data_set)
    col_names <- sub("^Group.1$", "activity", col_names, ignore.case = TRUE)
    col_names <- sub("^Group.2$", "subject",  col_names, ignore.case = TRUE)
    col_names <- gsub("-",  ".", col_names)
    col_names <- gsub("()", "",  col_names, fixed = TRUE)
    names(tidy_data_set) <- col_names

    # Store the results as indicated in the project assignment.
    write.table(tidy_data_set, path.tidy_data, row.names = FALSE)
}
