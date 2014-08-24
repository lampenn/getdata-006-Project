## run_analysis.R takes the UCI HAR Dataset and produces:
## 1) a data subset (dfSubSet) of feature variables containing "mean" or "std"
## 2) a data set "output.txt" with with the average of each variable 
##    for each activity and each subject using the output of 1) dfSubSet



## PART 1 -- 

## Merge training & test sets to create one data set

## Load headers for input data
headers <- read.table("./UCI HAR Dataset/features.txt")

## Build Train data set: join y_test & subject_test to x_test; apply features labels
dfInputData <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(dfInputData) <- headers$V2
dfInputLabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(dfInputLabels) <- "Activity"
dfInputSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(dfInputSubjects) <- "Subject"

dfDataSet <- cbind(dfInputData, dfInputLabels, dfInputSubjects)

## Build Test data set: join y_train & subject_train to x_train; apply features labels
dfInputData <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(dfInputData) <- headers$V2
dfInputLabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(dfInputLabels) <- "Activity"
dfInputSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(dfInputSubjects) <- "Subject"

dfDataSet2 <- cbind(dfInputData, dfInputLabels, dfInputSubjects)

## Combine both datasets: join x_test & x_train
dfDataSet <- rbind(dfDataSet, dfDataSet2)
rm(dfDataSet2, dfInputData, dfInputLabels, dfInputSubjects, headers)


## Extract mean and standard deviation for each measurement
dfSubSet <- dfDataSet[,c(grep("mean", names(dfDataSet)), 
                         grep("std", names(dfDataSet)),
                         grep("Activity", names(dfDataSet)),
                         grep("Subject", names(dfDataSet)))]


## Rename activitiy names
labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
dfSubSet$Activity[which(dfSubSet$Activity == 1)] <- as.character(labels$V2[1])
dfSubSet$Activity[which(dfSubSet$Activity == 2)] <- as.character(labels$V2[2])
dfSubSet$Activity[which(dfSubSet$Activity == 3)] <- as.character(labels$V2[3])
dfSubSet$Activity[which(dfSubSet$Activity == 4)] <- as.character(labels$V2[4])
dfSubSet$Activity[which(dfSubSet$Activity == 5)] <- as.character(labels$V2[5])
dfSubSet$Activity[which(dfSubSet$Activity == 6)] <- as.character(labels$V2[6])


## Label dataset with descriptive variable names
## Feature labels are sufficient - see README.md.


## PART 2 -- 

## Produce tidy data set with the average of each variable for each activiy
## and each subject
library(reshape)
require(plyr)
mdata <- melt(dfSubSet, id=c("Activity", "Subject"))
mAverages <- ddply(mdata, .(Activity, Subject, variable), summarize, 
      mean(value, na.rm=TRUE))
mAverages <- cast(mAverages, Activity*Subject ~ variable, value = "..1")

## Output to file
write.table(mAverages, file="output.txt", row.names = FALSE)