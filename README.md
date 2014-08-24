---
title: "run_analysis.R README"
author: "Penny Lam"
date: "Sunday, August 24, 2014"
output: word_document
---

The run_analysis.R script takes data sourced from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

And executes the following steps:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


For steps 1 - 4, only the feature variables containing "mean" or "std" from the original feature set is used.


For step 5, the full dataset created from step 1 is used.


The script expects following directory structure:
./UCI HAR Dataset/...
./run_analysis.R
./README.md