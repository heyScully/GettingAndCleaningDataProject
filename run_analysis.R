
############################################################################
# Script assumes the working directory contains a folder "UCI HAR Dataset"
# which then contains subfolders for "train" and "test" raw data.
############################################################################

# Check if data directory exists in working directory, and error out if not.

if(!file.exists("UCI HAR Dataset/train") || !file.exists("UCI HAR Dataset/test")){
  stop("Cannot find raw data as required in working directory.")
}

# Read in expected data files to local variables

xTestData <- read.table("./UCI HAR Dataset/test/X_test.txt")
subjectTestData <- read.table("./UCI HAR Dataset/test/subject_test.txt")
yTestData <- read.table("./UCI HAR Dataset/test/y_test.txt")
xTrainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
subjectTrainData <- read.table("./UCI HAR Dataset/train/subject_train.txt")
yTrainData <- read.table("./UCI HAR Dataset/train/y_train.txt")
featuresData <- read.table("./UCI HAR Dataset/features.txt")
activityLabelsData <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Add subjectId and activityId to create trainData and testData

trainData <- cbind(subjectTrainData, yTrainData, xTrainData)
testData <- cbind(subjectTestData, yTestData, xTestData)

# Combine Test and Train data

combinedData <- rbind(trainData, testData)

# Apply descriptive column labels

names(combinedData) <- c("subjectId", "activityId",as.vector(featuresData$V2))

# Filter down to columns of just measurements on the mean and standard deviation for each measurement

tidyData <- cbind(combinedData[1:2], combinedData[,grep("mean\\(\\)",colnames(combinedData))], combinedData[,grep("std",colnames(combinedData))])

# Replace activityId column with "activity" (descriptive)

tidyData <- merge(tidyData, activityLabelsData, by.x = "activityId", by.y = "V1", all = TRUE)
colnames(tidyData)[69] <- "activity"
tidyData <- tidyData[,-1]

# step 5, create new tidy data set for std and mean of each variable for each subject on each activity

library("dplyr")
tidyData <- group_by(tidyData,subjectId,activity )
finalTidy <- summarise_each(tidyData,funs(mean))

# Output final tidy table to file

write.table(finalTidy, "ProjectQ1Tidy.txt", row.name=FALSE)