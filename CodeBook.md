# Code Book
ProjectQ1Tidy.txt includes a tidy data set, where each row represents one user's mean measurements for one activity detected from an accelerometer and gyroscope on a smartphone.

## Units
* For variables prefixed with t, a measurement of time was originally applied
* For variables prefixed with f, a measurement of frequency was originally applied
* Measurements were then normalized to be bound between [-1, 1] (no units)
* All these normalized values were then averaged up per subject, per activity

## Fields
* subjectId - unique identifier for a particular subject (1-30)
* activity - descriptor of one of 6 activities for which the subject has been observed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* [ Means of Measured Variables ]
  * tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z: mean of Body Acceleration for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z: mean of Gravity Acceleration for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z: mean of Body Acceleration Jerk for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z: mean of Body Gyro for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z: mean of Body Gyro Jerk for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyAccMag-mean(): mean of Body Acceleration Magnitude for a particular subject and activity
  * tGravityAccMag-mean(): mean of Gravity Acceleration Magnitude for a particular subject and activity
  * tBodyAccJerkMag-mean(): mean of Body Acceleration Jerk Magnitude for a particular subject and activity
  * fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z: frequency mean of Body Acceleration for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z: frequency mean of Body Acceleration Jerk for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z: frequency mean of Body Gyro for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * fBodyAccMag-mean(): frequency mean of Body Acceleration Magnitude
  * fBodyBodyAccJerkMag-mean():  frequency mean of Body Acceleration Jerk Magnitude
  * fBodyBodyGyroMag-mean():  frequency mean of Body Gyro Magnitude
  * fBodyBodyGyroJerkMag-mean():  frequency mean of Body Gyro Jerk Magnitude
  * tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z: mean of standard deviation of Body Acceleration for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z: mean of standard deviation of Gravity Acceleration for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z: mean of standard deviation of Body Acceleration Jerk for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z: mean of standard deviation of Body Gyro for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z: mean of standard deviation of Body Gyro Jerk for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * tBodyAccMag-std(): mean of standard deviation of Body Acceleration Magnitude for a particular subject and activity 
  * tGravityAccMag-std(): mean of standard deviation of Gravity Acceleration Magnitude for a particular subject and activity 
  * tBodyAccJerkMag-std(): mean of standard deviation of Body Acceleration Jerk Magnitude for a particular subject and activity 
  * tBodyGyroMag-std(): mean of standard deviation of Body Gyro Magnitude for a particular subject and activity 
  * tBodyGyroJerkMag-std(): mean of standard deviation of Body Gyro Jerk Magnitude for a particular subject and activity 
  * fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z: mean of frequency standard deviation of Body Acceleration for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z: mean of frequency standard deviation of Body Acceleration Jerk for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z: mean of frequency standard deviation of Body Gyro for a particular subject and activity measured across 3-axial signals X, Y, and Z
  * fBodyAccMag-std(): mean of frequency standard deviation of Body Acceleration Magnitude for a particular subject and activity
  * fBodyBodyAccJerkMag-std(): mean of frequency standard deviation of Body Acceleration Jerk Magnitude for a particular subject and activity
  * fBodyBodyGyroMag-std(): mean of frequency standard deviation of Body Acceleration Jerk Magnitude for a particular subject and activity
  * fBodyBodyGyroJerkMag-std(): mean of frequency standard deviation of Body Gyro Jerk Magnitude for a particular subject and activity