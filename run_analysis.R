## Getting and Cleaning Data - Course Project
## Create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

## Set working directory
#setwd("E:/R/Coursera R Programming/Getting and Cleanning Data/getdata_projectfiles_UCI HAR Dataset")
getwd()
dir()

# Clean upworkspace
rm(list=ls())

## Load needed libraries
library(reshape2)

## Read Data Files
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

train.data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

test.data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Change variable names to features
colnames(train.data) <- features$V2
colnames(test.data) <- features$V2

## Add activity and subject variables
train.data$subject <- train.subject$V1
train.data$activity <- train.activity$V1

test.data$subject <- test.subject$V1
test.data$activity <- test.activity$V1

## Combine train and test data sets
data <- rbind(train.data,test.data)

## Add column to data frame with descriptive activity names
data$activity_label <- activity_labels[data$activity,"V2"]

## Extract only mean & std for each measurement
features_select <- grep("(mean|std)", features$V2, ignore.case = FALSE)
features_select_names <- features[features_select,"V2"]
data.select <- data[,features_select]
data.select <- cbind(subject=data$subject,activity_label=data$activity_label,data.select)

## Create a second, independent tidy data set with the average of each variable for each activity and each subject.
data.melt <- melt(data.select,id=c("subject","activity_label"),measure.vars=features_select_names)
tidy_data_set <- dcast(data.melt, subject + activity_label ~ variable,mean)

## Write tidy data set to text file
write.table(tidy_data_set, file="./tidy_data_set.txt",row.name=FALSE)

