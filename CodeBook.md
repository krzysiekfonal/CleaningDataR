
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
* "tBodyAcc-mean()-X"				- mean of acceleration
* "tBodyAcc-mean()-Y" 			
* "tBodyAcc-mean()-Z" 
* "fBodyAcc-mean()-X" 
* "fBodyAcc-mean()-Y" 
* "fBodyAcc-mean()-Z" 
* "tBodyAcc-std()-X"				- standard deviation of acceleration
* "tBodyAcc-std()-Y" 
* "tBodyAcc-std()-Z" 
* "fBodyAcc-std()-X" 
* "fBodyAcc-std()-Y" 
* "fBodyAcc-std()-Z" 
* "tGravityAcc-mean()-X"			- mean of gravity acceleration	 
* "tGravityAcc-mean()-Y" 
* "tGravityAcc-mean()-Z" 
* "tGravityAcc-std()-X" 			- standard deviation of gravity acceleration
* "tGravityAcc-std()-Y" 
* "tGravityAcc-std()-Z" 
* "tBodyAccJerk-mean()-X" 		- mean of acceleration jerk
* "tBodyAccJerk-mean()-Y" 
* "tBodyAccJerk-mean()-Z" 
* "tBodyAccJerk-std()-X" 			- standard deviation of acceleration jerk
* "tBodyAccJerk-std()-Y" 
* "tBodyAccJerk-std()-Z" 
* "fBodyAccJerk-std()-X" 
* "fBodyAccJerk-std()-Y" 
* "fBodyAccJerk-std()-Z" 
* "tBodyGyro-mean()-X" 			- mean of gyroscope	
* "tBodyGyro-mean()-Y" 
* "tBodyGyro-mean()-Z" 
* "fBodyGyro-mean()-X" 
* "fBodyGyro-mean()-Y" 
* "fBodyGyro-mean()-Z" 
* "tBodyGyro-std()-X" 			- standard deviation of gyroscope
* "tBodyGyro-std()-Y" 
* "tBodyGyro-std()-Z" 
* "fBodyGyro-std()-X" 
* "fBodyGyro-std()-Y" 
* "fBodyGyro-std()-Z" 
* "tBodyGyroJerk-mean()-X" 		- mean of gyroscope jerk
* "tBodyGyroJerk-mean()-Y" 
* "tBodyGyroJerk-mean()-Z" 
* "tBodyGyroJerk-std()-X" 		- standard deviation of gyroscope jerk
* "tBodyGyroJerk-std()-Y" 
* "tBodyGyroJerk-std()-Z" 
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
