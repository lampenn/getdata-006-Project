---
title: "run_analysis.R README"
author: "Penny Lam"
date: "Sunday, August 24, 2014"
output: html_document
---

# Summary

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

# Data dictionary

 [1] "Activity"
 Type of activity performed; replace y_train & y_test values 1 to 6 with variables names found in activity_labels.txt
 LAYING
 SITTING
 STANDING
 WALKING
 WALKING_DOWNSTAIRS
 WALKING_UPSTAIRS
          
 [2] "Subject"
     Identifies the subject who performed the activity for each window sample.
          1..30

The following are the averages of the feature variables for each Activity and Subject.  Feature names are explained in features_info.txt.

 [3] "tBodyAcc-mean()-X"
 [4] "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"              
 [6] "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"           
 [8] "tGravityAcc-mean()-Z"           
 [9] "tBodyAccJerk-mean()-X"          
[10] "tBodyAccJerk-mean()-Y"          
[11] "tBodyAccJerk-mean()-Z"          
[12] "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"             
[14] "tBodyGyro-mean()-Z"             
[15] "tBodyGyroJerk-mean()-X"         
[16] "tBodyGyroJerk-mean()-Y"         
[17] "tBodyGyroJerk-mean()-Z"         
[18] "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"          
[20] "tBodyAccJerkMag-mean()"         
[21] "tBodyGyroMag-mean()"            
[22] "tBodyGyroJerkMag-mean()"        
[23] "fBodyAcc-mean()-X"              
[24] "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"              
[26] "fBodyAcc-meanFreq()-X"          
[27] "fBodyAcc-meanFreq()-Y"          
[28] "fBodyAcc-meanFreq()-Z"          
[29] "fBodyAccJerk-mean()-X"          
[30] "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"          
[32] "fBodyAccJerk-meanFreq()-X"      
[33] "fBodyAccJerk-meanFreq()-Y"      
[34] "fBodyAccJerk-meanFreq()-Z"      
[35] "fBodyGyro-mean()-X"             
[36] "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"             
[38] "fBodyGyro-meanFreq()-X"         
[39] "fBodyGyro-meanFreq()-Y"         
[40] "fBodyGyro-meanFreq()-Z"         
[41] "fBodyAccMag-mean()"             
[42] "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"     
[44] "fBodyBodyAccJerkMag-meanFreq()" 
[45] "fBodyBodyGyroMag-mean()"        
[46] "fBodyBodyGyroMag-meanFreq()"    
[47] "fBodyBodyGyroJerkMag-mean()"    
[48] "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"               
[50] "tBodyAcc-std()-Y"               
[51] "tBodyAcc-std()-Z"               
[52] "tGravityAcc-std()-X"            
[53] "tGravityAcc-std()-Y"            
[54] "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"           
[56] "tBodyAccJerk-std()-Y"           
[57] "tBodyAccJerk-std()-Z"           
[58] "tBodyGyro-std()-X"              
[59] "tBodyGyro-std()-Y"              
[60] "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"          
[62] "tBodyGyroJerk-std()-Y"          
[63] "tBodyGyroJerk-std()-Z"          
[64] "tBodyAccMag-std()"              
[65] "tGravityAccMag-std()"           
[66] "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"             
[68] "tBodyGyroJerkMag-std()"         
[69] "fBodyAcc-std()-X"               
[70] "fBodyAcc-std()-Y"               
[71] "fBodyAcc-std()-Z"               
[72] "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"           
[74] "fBodyAccJerk-std()-Z"           
[75] "fBodyGyro-std()-X"              
[76] "fBodyGyro-std()-Y"              
[77] "fBodyGyro-std()-Z"              
[78] "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"      
[80] "fBodyBodyGyroMag-std()"         
[81] "fBodyBodyGyroJerkMag-std()" 