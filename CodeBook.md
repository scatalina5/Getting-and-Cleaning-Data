# CodeBook

This document describes the variables, the data, and any transformations or work that was performed to clean up the data.

##Data Set Weblinks:
<A HREF='http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/' TARGET='blank'>Data Science, Wearable Computing and the Battle for the Throne as World’s Top Sports Brand</A><BR>
<A HREF='http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones' TARGET='blank'>Human Activity Recognition Using Smartphones Data Set</A><BR>
<A HREF='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' TARGET='blank'>Data for the project</A><BR>

##Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:<BR>
 =========================================
 - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:<BR>
 =========================================
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: <BR>
 ======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

##Tidy Data Set Transformations:
1. Train and Test data were merged to create one data set.
2. Only the mean and standard deviation for each measurement were included in the tiny data set.
3. Descriptive activity names were added to name the activities in the data set.
4. Data set variable names were renamed with descriptive variable names from features.txt. 
5. From the data set in step 4, a second, independent tidy data set was created with the average of 
   each variable for each activity and each subject.
6. This data set is saved to ```tiny_data_set.txt```.  There is one row for each subject (30) for each activity (6) for a total of 180 rows of data.  The 1st column lists the subject id, the 2nd column lists the activity, and the remaining 79 columns are the average values for all the mean() and std() calculations from the measurements.

##Tidy Data Set Features_selected:
"1" "subject"<BR>
"2" "activity_label"<BR>
"3" "tBodyAcc-mean()-X"<BR>
"4" "tBodyAcc-mean()-Y"<BR>
"5" "tBodyAcc-mean()-Z"<BR>
"6" "tBodyAcc-std()-X"<BR>
"7" "tBodyAcc-std()-Y"<BR>
"8" "tBodyAcc-std()-Z"<BR>
"9" "tGravityAcc-mean()-X"<BR>
"10" "tGravityAcc-mean()-Y"<BR>
"11" "tGravityAcc-mean()-Z"<BR>
"12" "tGravityAcc-std()-X"<BR>
"13" "tGravityAcc-std()-Y"<BR>
"14" "tGravityAcc-std()-Z"<BR>
"15" "tBodyAccJerk-mean()-X"<BR>
"16" "tBodyAccJerk-mean()-Y"<BR>
"17" "tBodyAccJerk-mean()-Z"<BR>
"18" "tBodyAccJerk-std()-X"<BR>
"19" "tBodyAccJerk-std()-Y"<BR>
"20" "tBodyAccJerk-std()-Z"<BR>
"21" "tBodyGyro-mean()-X"<BR>
"22" "tBodyGyro-mean()-Y"<BR>
"23" "tBodyGyro-mean()-Z"<BR>
"24" "tBodyGyro-std()-X"<BR>
"25" "tBodyGyro-std()-Y"<BR>
"26" "tBodyGyro-std()-Z"<BR>
"27" "tBodyGyroJerk-mean()-X"<BR>
"28" "tBodyGyroJerk-mean()-Y"<BR>
"29" "tBodyGyroJerk-mean()-Z"<BR>
"30" "tBodyGyroJerk-std()-X"<BR>
"31" "tBodyGyroJerk-std()-Y"<BR>
"32" "tBodyGyroJerk-std()-Z"<BR>
"33" "tBodyAccMag-mean()"<BR>
"34" "tBodyAccMag-std()"<BR>
"35" "tGravityAccMag-mean()"<BR>
"36" "tGravityAccMag-std()"<BR>
"37" "tBodyAccJerkMag-mean()"<BR>
"38" "tBodyAccJerkMag-std()"<BR>
"39" "tBodyGyroMag-mean()"<BR>
"40" "tBodyGyroMag-std()"<BR>
"41" "tBodyGyroJerkMag-mean()"<BR>
"42" "tBodyGyroJerkMag-std()"<BR>
"43" "fBodyAcc-mean()-X"<BR>
"44" "fBodyAcc-mean()-Y"<BR>
"45" "fBodyAcc-mean()-Z"<BR>
"46" "fBodyAcc-std()-X"<BR>
"47" "fBodyAcc-std()-Y"<BR>
"48" "fBodyAcc-std()-Z"<BR>
"49" "fBodyAcc-meanFreq()-X"<BR>
"50" "fBodyAcc-meanFreq()-Y"<BR>
"51" "fBodyAcc-meanFreq()-Z"<BR>
"52" "fBodyAccJerk-mean()-X"<BR>
"53" "fBodyAccJerk-mean()-Y"<BR>
"54" "fBodyAccJerk-mean()-Z"<BR>
"55" "fBodyAccJerk-std()-X"<BR>
"56" "fBodyAccJerk-std()-Y"<BR>
"57" "fBodyAccJerk-std()-Z"<BR>
"58" "fBodyAccJerk-meanFreq()-X"<BR>
"59" "fBodyAccJerk-meanFreq()-Y"<BR>
"60" "fBodyAccJerk-meanFreq()-Z"<BR>
"61" "fBodyGyro-mean()-X"<BR>
"62" "fBodyGyro-mean()-Y"<BR>
"63" "fBodyGyro-mean()-Z"<BR>
"64" "fBodyGyro-std()-X"<BR>
"65" "fBodyGyro-std()-Y"<BR>
"66" "fBodyGyro-std()-Z"<BR>
"67" "fBodyGyro-meanFreq()-X"<BR>
"68" "fBodyGyro-meanFreq()-Y"<BR>
"69" "fBodyGyro-meanFreq()-Z"<BR>
"70" "fBodyAccMag-mean()"<BR>
"71" "fBodyAccMag-std()"<BR>
"72" "fBodyAccMag-meanFreq()"<BR>
"73" "fBodyBodyAccJerkMag-mean()"<BR>
"74" "fBodyBodyAccJerkMag-std()"<BR>
"75" "fBodyBodyAccJerkMag-meanFreq()"<BR>
"76" "fBodyBodyGyroMag-mean()"<BR>
"77" "fBodyBodyGyroMag-std()"<BR>
"78" "fBodyBodyGyroMag-meanFreq()"<BR>
"79" "fBodyBodyGyroJerkMag-mean()"<BR>
"80" "fBodyBodyGyroJerkMag-std()"<BR>
"81" "fBodyBodyGyroJerkMag-meanFreq()"<BR>
