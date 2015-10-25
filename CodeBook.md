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

##Data Set Transformations:
1. Train and Test data were merged to create one data set.
2. Only the mean and standard deviation for each measurement were included in the tiny data set.
3. Descriptive activity names were added to name the activities in the data set.
4. Data set variable names were renamed with descriptive variable names from features.txt. 
5. From the data set in step 4, a second, independent tidy data set was created with the average of 
   each variable for each activity and each subject.
6. This data set is saved to ```tiny_data_set.txt```.  There is one row for each subject (30) for each activity (6) for a total of 180 rows of data.  The 1st column lists the subject id, the 2nd column lists the activity, and the remaining 79 columns are the average values for all the mean() and std() calculations from the measurements.
