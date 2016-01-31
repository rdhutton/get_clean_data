This document describes the variables in the dataset full.tidy and how this data was obtained.

The underlying data for this dataset is from the following dataset :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data set has been summarized and tidied in a number of ways to obtain the current data set.  Chiefly :

- Only values relating to the mean or standard deviation of any given measure for a single observation have been retained.
- The data has been reshaped to an intermediary state so that each row of data represented a subject, activity, measurement type and the value of that measurement
- The data was then summarized to produced the average of each of all the measurements in the intermediary stage at the level of a given subject and given activity type.

The variables in the final tiday data set are as follows :

* subjects

This indicates the person from whom the measurements are being taken - the 30 subjects are assigned a number from 1 to 30 

* activities

This specifies which of the 6 activities were being undertaken when the measurements were taken.
Possible values are :
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


* variable

This specifies which of the 86 measurment types is being considered. These are mean or standard deviation values for a specific mesurement type as indicated by inclusion of the text "mean" or "std" in value given.  

Possible values are : 

tBodyAccmeanX
tBodyAccmeanY
tBodyAccmeanZ
tBodyAccstdX
tBodyAccstdY
tBodyAccstdZ
tGravityAccmeanX
tGravityAccmeanY
tGravityAccmeanZ
tGravityAccstdX
tGravityAccstdY
tGravityAccstdZ
tBodyAccJerkmeanX
tBodyAccJerkmeanY
tBodyAccJerkmeanZ
tBodyAccJerkstdX
tBodyAccJerkstdY
tBodyAccJerkstdZ
tBodyGyromeanX
tBodyGyromeanY
tBodyGyromeanZ
tBodyGyrostdX
tBodyGyrostdY
tBodyGyrostdZ
tBodyGyroJerkmeanX
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ
tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ
tBodyAccMagmean
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd
tBodyGyroJerkMagmean
tBodyGyroJerkMagstd
fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ
fBodyAccmeanFreqX
fBodyAccmeanFreqY
fBodyAccmeanFreqZ
fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ
fBodyAccJerkmeanFreqX
fBodyAccJerkmeanFreqY
fBodyAccJerkmeanFreqZ
fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ
fBodyGyromeanFreqX
fBodyGyromeanFreqY
fBodyGyromeanFreqZ
fBodyAccMagmean
fBodyAccMagstd
fBodyAccMagmeanFreq
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd
fBodyBodyAccJerkMagmeanFreq
fBodyBodyGyroMagmean
fBodyBodyGyroMagstd
fBodyBodyGyroMagmeanFreq
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagstd
fBodyBodyGyroJerkMagmeanFreq
angletBodyAccMeangravity
angletBodyAccJerkMeangravityMean
angletBodyGyroMeangravityMean
angletBodyGyroJerkMeangravityMean
angleXgravityMean
angleYgravityMean
angleZgravityMean

* mn

The mean of the measurement across all observations for the given subject and activity
