# Getting And Cleaning Data Course Project

## Files included
* README.md - This file
* CodeBook.md - Code book describing the resulting tidy data set
* run_analysis.R - R script that transforms the raw data given for the assignment into the tidy data set.
* ProjectQ1Tidy.txt - Including the output tidy data set here just for good measure (even though it has also been uploaded with the project submission as instructed)


## Raw Data Provided for this Assignment (for reference)
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Originally obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Assumptions

This analysis assumes three things:

* The user has the dplyr library installed. If not, he/she must first run install.packages("dplyr").
* The the working directory contains a folder "UCI HAR Dataset" which then contains subfolders for "train" and "test" raw data.
* Step #2 from the assignment is assumed to *EXCLUDE* "meanFreq" variables, which represents the mean of a derived measurement rather than the mean of a raw data measurement.

## The Script

The script first checks to see if the assumed data directories exist.  If so, it will load the text files into data frames.

The script next binds the subjectId and activityId with each observation in the test and train data sets.  It next combines the test and train data and labels all columns appropriately, using the more descriptive labels provided in features.txt.

Next, per the assignment instructions, the script removes any columns that do not represent a standard deviation or mean of a measurement (subject to assumption #3 above).

The activityId column is then replaced with the description of the corresponding activity as required of the assignment.

The dplyr library is loaded, which enables the creation of finalTidy data frame, containing the means of each variable grouped by subject and activity.  

Finally, this data frame is written out to file.



