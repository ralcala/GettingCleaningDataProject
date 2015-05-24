# Introduction

Simple repository to store the project files of the third course in Coursera's **Data Science specialization**: *Getting and Cleaning Data*.

# How to run the project

The `run_analysis.R` script is structured as a function, which can be called without arguments (no need to change the default values).

A helper R script, `options.inc.R`, is expected to be located in the same folder as the analysis script. It contains several R scripts options:

- The dataset directory. Value: 'UCI HAR Dataset'.
- The tidy dataset output name. Value: 'tidy_data.txt'.
- The number of rows to read. Value: -1 (no limit, load all records)

The dataset is expected to be decompressed from the ZIP file in the sale directory, which would create the `UCI HAR Dataset` folder containing the data files (the dataset folder path can be changed from the options script).

For running the analysis execute in the R console:

```R
source("run_analysis.R")

run_analysis()
```

After a successful execution the tidy dataset will be located in the file `tidy_data.txt` file (the path of this file can be changed from the options script).

# Loading the tidy dataset

It can be easily be read back from the R console doing:

```R
tidy_dataset <- read.table("tidy_data.txt", header = TRUE)
```

# Helper scripts

Two helper scripts are associated. One is the options script that has been described previously (to store common options between scripts and separate the executing scripts and their default options).

The second one is called `codebook_variables.R`, which heps generating the codebook variables names and their descriptions. It can be run easily:

```R
source("codebook_variables.R")

write.table(codebook_variables(), "descriptions.txt", col.names = FALSE, row.names = FALSE, quote = FALSE)
```

After a succesful execution, the `descriptions.txt` conatins GitHub MarkDown text to be inserted in the `CodeBook.md` file with the list and descriptions of the tidy dataset variables.
