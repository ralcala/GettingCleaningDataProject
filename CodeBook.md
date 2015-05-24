# Variables selection

The variables has been selected among the ones that conatined one hyphen `-` folowed by the words `mean` or `std`. This pattern exclude the variables that are used to compute an angle (which are not considered a mean or a standadrd deviation).

# Naming convention

The names has been preserved as much as possible. The only characters removed have been the ones that caused trouble when loading the file and were replaced with dots by R.

This means that soem words were separated by multiple dots. This charatcers has been replaces by a dot, so the clened names only have one dot separating the words. Example: `fBodyGyro-entropy()-X` in the original dataset is encoded as `fBodyGyro.entropy.X` when storing the tidy dataset.

# Dataset variables description

The list has been generated automatically using a helper R script called `codebook_variables.R` which search specific word in the variable name and from that appends the related description in an incremental way.

*Note: The names describe the original variable content, because the tidy dataset is the average of the varaibles grouped by activity and subject.*

- **activity**: Activy name (waliking, sitting, lying...).
- **subject**: Subject identifier (an integer).
- **tBodyAcc.mean.X**: Mean of the body acceleration signal along the X axis (expressed in time domain).
- **tBodyAcc.mean.Y**: Mean of the body acceleration signal along the Y axis (expressed in time domain).
- **tBodyAcc.mean.Z**: Mean of the body acceleration signal along the Z axis (expressed in time domain).
- **tBodyAcc.std.X**: Std. dev. of the body acceleration signal along the X axis (expressed in time domain).
- **tBodyAcc.std.Y**: Std. dev. of the body acceleration signal along the Y axis (expressed in time domain).
- **tBodyAcc.std.Z**: Std. dev. of the body acceleration signal along the Z axis (expressed in time domain).
- **tGravityAcc.mean.X**: Mean of the gravity acceleration signal along the X axis (expressed in time domain).
- **tGravityAcc.mean.Y**: Mean of the gravity acceleration signal along the Y axis (expressed in time domain).
- **tGravityAcc.mean.Z**: Mean of the gravity acceleration signal along the Z axis (expressed in time domain).
- **tGravityAcc.std.X**: Std. dev. of the gravity acceleration signal along the X axis (expressed in time domain).
- **tGravityAcc.std.Y**: Std. dev. of the gravity acceleration signal along the Y axis (expressed in time domain).
- **tGravityAcc.std.Z**: Std. dev. of the gravity acceleration signal along the Z axis (expressed in time domain).
- **tBodyAccJerk.mean.X**: Mean of the body acceleration jerk signal along the X axis (expressed in time domain).
- **tBodyAccJerk.mean.Y**: Mean of the body acceleration jerk signal along the Y axis (expressed in time domain).
- **tBodyAccJerk.mean.Z**: Mean of the body acceleration jerk signal along the Z axis (expressed in time domain).
- **tBodyAccJerk.std.X**: Std. dev. of the body acceleration jerk signal along the X axis (expressed in time domain).
- **tBodyAccJerk.std.Y**: Std. dev. of the body acceleration jerk signal along the Y axis (expressed in time domain).
- **tBodyAccJerk.std.Z**: Std. dev. of the body acceleration jerk signal along the Z axis (expressed in time domain).
- **tBodyGyro.mean.X**: Mean of the body gyroscope signal along the X axis (expressed in time domain).
- **tBodyGyro.mean.Y**: Mean of the body gyroscope signal along the Y axis (expressed in time domain).
- **tBodyGyro.mean.Z**: Mean of the body gyroscope signal along the Z axis (expressed in time domain).
- **tBodyGyro.std.X**: Std. dev. of the body gyroscope signal along the X axis (expressed in time domain).
- **tBodyGyro.std.Y**: Std. dev. of the body gyroscope signal along the Y axis (expressed in time domain).
- **tBodyGyro.std.Z**: Std. dev. of the body gyroscope signal along the Z axis (expressed in time domain).
- **tBodyGyroJerk.mean.X**: Mean of the body gyroscope jerk signal along the X axis (expressed in time domain).
- **tBodyGyroJerk.mean.Y**: Mean of the body gyroscope jerk signal along the Y axis (expressed in time domain).
- **tBodyGyroJerk.mean.Z**: Mean of the body gyroscope jerk signal along the Z axis (expressed in time domain).
- **tBodyGyroJerk.std.X**: Std. dev. of the body gyroscope jerk signal along the X axis (expressed in time domain).
- **tBodyGyroJerk.std.Y**: Std. dev. of the body gyroscope jerk signal along the Y axis (expressed in time domain).
- **tBodyGyroJerk.std.Z**: Std. dev. of the body gyroscope jerk signal along the Z axis (expressed in time domain).
- **tBodyAccMag.mean**: Mean of the body acceleration signal (expressed in time domain).
- **tBodyAccMag.std**: Std. dev. of the body acceleration signal (expressed in time domain).
- **tGravityAccMag.mean**: Mean of the gravity acceleration signal (expressed in time domain).
- **tGravityAccMag.std**: Std. dev. of the gravity acceleration signal (expressed in time domain).
- **tBodyAccJerkMag.mean**: Mean of the body acceleration jerk signal (expressed in time domain).
- **tBodyAccJerkMag.std**: Std. dev. of the body acceleration jerk signal (expressed in time domain).
- **tBodyGyroMag.mean**: Mean of the body gyroscope signal (expressed in time domain).
- **tBodyGyroMag.std**: Std. dev. of the body gyroscope signal (expressed in time domain).
- **tBodyGyroJerkMag.mean**: Mean of the body gyroscope jerk signal (expressed in time domain).
- **tBodyGyroJerkMag.std**: Std. dev. of the body gyroscope jerk signal (expressed in time domain).
- **fBodyAcc.mean.X**: Mean of the body acceleration signal along the X axis (expressed in frequency domain).
- **fBodyAcc.mean.Y**: Mean of the body acceleration signal along the Y axis (expressed in frequency domain).
- **fBodyAcc.mean.Z**: Mean of the body acceleration signal along the Z axis (expressed in frequency domain).
- **fBodyAcc.std.X**: Std. dev. of the body acceleration signal along the X axis (expressed in frequency domain).
- **fBodyAcc.std.Y**: Std. dev. of the body acceleration signal along the Y axis (expressed in frequency domain).
- **fBodyAcc.std.Z**: Std. dev. of the body acceleration signal along the Z axis (expressed in frequency domain).
- **fBodyAcc.meanFreq.X**: Mean of the body acceleration signal along the X axis (expressed in frequency domain).
- **fBodyAcc.meanFreq.Y**: Mean of the body acceleration signal along the Y axis (expressed in frequency domain).
- **fBodyAcc.meanFreq.Z**: Mean of the body acceleration signal along the Z axis (expressed in frequency domain).
- **fBodyAccJerk.mean.X**: Mean of the body acceleration jerk signal along the X axis (expressed in frequency domain).
- **fBodyAccJerk.mean.Y**: Mean of the body acceleration jerk signal along the Y axis (expressed in frequency domain).
- **fBodyAccJerk.mean.Z**: Mean of the body acceleration jerk signal along the Z axis (expressed in frequency domain).
- **fBodyAccJerk.std.X**: Std. dev. of the body acceleration jerk signal along the X axis (expressed in frequency domain).
- **fBodyAccJerk.std.Y**: Std. dev. of the body acceleration jerk signal along the Y axis (expressed in frequency domain).
- **fBodyAccJerk.std.Z**: Std. dev. of the body acceleration jerk signal along the Z axis (expressed in frequency domain).
- **fBodyAccJerk.meanFreq.X**: Mean of the body acceleration jerk signal along the X axis (expressed in frequency domain).
- **fBodyAccJerk.meanFreq.Y**: Mean of the body acceleration jerk signal along the Y axis (expressed in frequency domain).
- **fBodyAccJerk.meanFreq.Z**: Mean of the body acceleration jerk signal along the Z axis (expressed in frequency domain).
- **fBodyGyro.mean.X**: Mean of the body gyroscope signal along the X axis (expressed in frequency domain).
- **fBodyGyro.mean.Y**: Mean of the body gyroscope signal along the Y axis (expressed in frequency domain).
- **fBodyGyro.mean.Z**: Mean of the body gyroscope signal along the Z axis (expressed in frequency domain).
- **fBodyGyro.std.X**: Std. dev. of the body gyroscope signal along the X axis (expressed in frequency domain).
- **fBodyGyro.std.Y**: Std. dev. of the body gyroscope signal along the Y axis (expressed in frequency domain).
- **fBodyGyro.std.Z**: Std. dev. of the body gyroscope signal along the Z axis (expressed in frequency domain).
- **fBodyGyro.meanFreq.X**: Mean of the body gyroscope signal along the X axis (expressed in frequency domain).
- **fBodyGyro.meanFreq.Y**: Mean of the body gyroscope signal along the Y axis (expressed in frequency domain).
- **fBodyGyro.meanFreq.Z**: Mean of the body gyroscope signal along the Z axis (expressed in frequency domain).
- **fBodyAccMag.mean**: Mean of the body acceleration signal (expressed in frequency domain).
- **fBodyAccMag.std**: Std. dev. of the body acceleration signal (expressed in frequency domain).
- **fBodyAccMag.meanFreq**: Mean of the body acceleration signal (expressed in frequency domain).
- **fBodyBodyAccJerkMag.mean**: Mean of the body acceleration jerk signal (expressed in frequency domain).
- **fBodyBodyAccJerkMag.std**: Std. dev. of the body acceleration jerk signal (expressed in frequency domain).
- **fBodyBodyAccJerkMag.meanFreq**: Mean of the body acceleration jerk signal (expressed in frequency domain).
- **fBodyBodyGyroMag.mean**: Mean of the body gyroscope signal (expressed in frequency domain).
- **fBodyBodyGyroMag.std**: Std. dev. of the body gyroscope signal (expressed in frequency domain).
- **fBodyBodyGyroMag.meanFreq**: Mean of the body gyroscope signal (expressed in frequency domain).
- **fBodyBodyGyroJerkMag.mean**: Mean of the body gyroscope jerk signal (expressed in frequency domain).
- **fBodyBodyGyroJerkMag.std**: Std. dev. of the body gyroscope jerk signal (expressed in frequency domain).
- **fBodyBodyGyroJerkMag.meanFreq**: Mean of the body gyroscope jerk signal (expressed in frequency domain).

# How to load the tidy dataset

The format when storing hte tidy dataset is done as per project assigment specifications.

It can be read back doing:

```R
tidy_dataset <- read.table("tidy_data.txt", header = TRUE)
```

It should be a data.frame object with 180 observations and 81 variables.
