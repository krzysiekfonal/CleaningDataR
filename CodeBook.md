
## Data
The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone in cleaned form according to Coursera Data Science assigment like features are filtered by the ones containing 'mean' and 'std' characters with activity names and subject ids.

## Variables

Features representing measurments are normalized and bounded within [-1,1]. The sensor signals (accelerometer and gyroscope) were colected with the frequency 50Hz over three axis X, Y, Z.  The sammples were grouped with sliding window with 50% overlap and 128 readings per window. The rows represents means and standard deviations of readings in the window.

The time space features are prefixed with *t* and the frequency space features are prefixed with *f*.

* "activity_name" 				- Name of activity: 
                                    LAYING 
                                    SITTING 
                                    STANDING 
                                    WALKING 
                                    WALKING_DOWNSTAIRS
                                    WALKING_UPSTAIRS
* "subject_id" 					- The id of a subject of experiment - person who performed activity.
* "tBodyAcc_Mean_X"				- mean of acceleration
* "tBodyAcc_Mean_Y" 			
* "tBodyAcc_Mean_Z" 
* "fBodyAcc_Mean_X" 
* "fBodyAcc_Mean_Y" 
* "fBodyAcc_Mean_Z" 
* "tBodyAcc_Std_X"				- standard deviation of acceleration
* "tBodyAcc_Std_Y" 
* "tBodyAcc_Std_Z" 
* "fBodyAcc_Std_X" 
* "fBodyAcc_Std_Y" 
* "fBodyAcc_Std_Z" 
* "tGravityAcc_Mean_X"			- mean of gravity acceleration	 
* "tGravityAcc_Mean_Y" 
* "tGravityAcc_Mean_Z" 
* "tGravityAcc_Std_X" 			- standard deviation of gravity acceleration
* "tGravityAcc_Std_Y" 
* "tGravityAcc_Std_Z" 
* "tBodyAccJerk_Mean_X" 		- mean of acceleration jerk
* "tBodyAccJerk_Mean_Y" 
* "tBodyAccJerk_Mean_Z" 
* "tBodyAccJerk_Std_X" 			- standard deviation of acceleration jerk
* "tBodyAccJerk_Std_Y" 
* "tBodyAccJerk_Std_Z" 
* "fBodyAccJerk_Std_X" 
* "fBodyAccJerk_Std_Y" 
* "fBodyAccJerk_Std_Z" 
* "tBodyGyro_Mean_X" 			- mean of gyroscope	
* "tBodyGyro_Mean_Y" 
* "tBodyGyro_Mean_Z" 
* "fBodyGyro_Mean_X" 
* "fBodyGyro_Mean_Y" 
* "fBodyGyro_Mean_Z" 
* "tBodyGyro_Std_X" 			- standard deviation of gyroscope
* "tBodyGyro_Std_Y" 
* "tBodyGyro_Std_Z" 
* "fBodyGyro_Std_X" 
* "fBodyGyro_Std_Y" 
* "fBodyGyro_Std_Z" 
* "tBodyGyroJerk_Mean_X" 		- mean of gyroscope jerk
* "tBodyGyroJerk_Mean_Y" 
* "tBodyGyroJerk_Mean_Z" 
* "tBodyGyroJerk_Std_X" 		- standard deviation of gyroscope jerk
* "tBodyGyroJerk_Std_Y" 
* "tBodyGyroJerk_Std_Z" 
* "tBodyAccMag-mean()" 
* "tBodyAccMag-std()" 
* "tGravityAccMag-mean()" 
* "tGravityAccMag-std()" 
* "tBodyAccJerkMag-mean()" 
* "tBodyAccJerkMag-std()" 
* "tBodyGyroMag-mean()" 
* "tBodyGyroMag-std()" 
* "tBodyGyroJerkMag-mean()" 
* "tBodyGyroJerkMag-std()" 
* "fBodyBodyGyroJerkMag-mean()" 
* "fBodyBodyGyroJerkMag-std()"
* "fBodyAccMag-mean()" 
* "fBodyAccMag-std()" 
* "fBodyBodyAccJerkMag-mean()" 
* "fBodyBodyAccJerkMag-std()" 
* "fBodyBodyGyroMag-mean()" 
* "fBodyBodyGyroMag-std()" 


## Transformations

To generate result.txt file the following steps were performed:

1. Read labels and features from text files.
2. Read training and test data
3. Names column properly
4. Merge training and test data
5. Filter columns by 'mean' and 'std' characters
6. Group and summarize data
7. Write the result file
