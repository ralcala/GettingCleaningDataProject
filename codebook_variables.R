
source("options.inc.R")

codebook_variables <- function(file = options.path.tidy_data)
{
    tidy_data <- read.table(file, header = TRUE, nrows = 1)

    descriptions <- sapply(names(tidy_data), function(name) {
        if (name == "activity") {
            return(paste0("- ", name, ": Activy name."))
        }
        else if (name == "subject") {
            return(paste0("- ", name, ": Subject identifier."))
        }

        parts <- strsplit(name, ".", fixed = TRUE)
        parts <- unlist(parts)

        text <- paste0("- ", name, ":")

        if (parts[2] %in% c("mean", "meanFreq")) {
            text <- paste(text, "Mean")
        }
        else if (parts[2] == "std") {
            text <- paste(text, "Std. dev.")
        }
        else {
            stop(paste0("Unknown summary function ", parts[2], "."))
        }

        text <- paste(text, "of the")

        if (grepl("Body", parts[1])) {
            text <- paste(text, "body")
        }
        else if (grepl("Gravity", parts[1])) {
            text <- paste(text, "gravity")
        }
        else {
            stop(paste("Not a body or gravity measurement:", parts[1]))
        }

        if (grepl("Acc", parts[1])) {
            text <- paste(text, "acceleration")
        }
        else if (grepl("Gyro", parts[1])) {
            text <- paste(text, "gyroscope")
        }
        else {
            stop(paste("Not an acceleration or gyroscope measurement:", parts[1]))
        }

        if (grepl("Jerk", parts[1])) {
            text <- paste(text, "jerk")
        }
        text <- paste(text, "signal")

        if (length(parts) > 2) {
            text <- paste(text, "along the", parts[3], "axis")
        }

        if (grepl("^t", parts[1])) {
            text <- paste(text, "(expressed in time domain)")
        }
        else if (grepl("^f", parts[1])) {
            text <- paste(text, "(expressed in frequency domain)")
        }
        else {
            stop("Unknown variable expressed domain.")
        }

        text <- paste0(text, ".")

        return(text)
    })

    return(descriptions)
}
