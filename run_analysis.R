###############################################################
# Coursera.org
# Specialization: 	Data Science
# Course:			Getting and Cleaning Data
# Task: 			Course Project
# Date:				2014/11/23
###############################################################

# load libraries
library(plyr)

# Obtain the source data set
fileURL<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile="UCI_HAR_Dataset.zip")
unzip("UCI_HAR_Dataset.zip")
setwd("UCI HAR Dataset/")	

# --------------------------------------------------------------------------------------------
# 1. Merge the training and the test sets to create one data set.
# --------------------------------------------------------------------------------------------

# Load all appropriate files in one shot

data_set<-rbind(
# The training data set
  cbind(  
	# The subject column
	read.table("train/subject_train.txt",comment.char="", colClasses="numeric", col.names="subject_id"),
	# The activity ID column
	read.table("train/y_train.txt",comment.char="", colClasses="numeric", col.names="activity_id"),  
	# The 561-feature vector with domain variables
	read.table("train/X_train.txt", comment.char="", colClasses="numeric")
  ),
  # The test data set
  cbind(  
	# The subject column
	read.table("test/subject_test.txt",comment.char="", colClasses="numeric", col.names="subject_id"),
	# The activity ID column
	read.table("test/y_test.txt",comment.char="", colClasses="numeric", col.names="activity_id"),  
	# The 561-feature vector with domain variables
	read.table("test/X_test.txt", comment.char="", colClasses="numeric")
  )
)

# --------------------------------------------------------------------------------------------
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# --------------------------------------------------------------------------------------------

features<-read.table("features.txt", stringsAsFactors=FALSE, col.names=c("id","label"))

# Filter the columns by name. Up to my understanding only columns containing "-mean()" and "-std()" meet the filtering requirement. 
# Variables like meanFreq() are intentionally ignored. 
features_included<-grep("-mean\\(\\)|-std\\(\\)",features$label)

# Build the final data set by filtering columns
data_set<-data_set[,c(1,2,features_included+2)]

# --------------------------------------------------------------------------------------------
# 3. Use descriptive activity names to name the activities in the data set
# --------------------------------------------------------------------------------------------

activity_labels<-read.table("activity_labels.txt", stringsAsFactors=FALSE, col.names=c("id","activity"))

# The code below works because the activity_labes data frame is ordered by id
data_set$activity<-activity_labels[data_set$activity_id, "activity"]

# Drop the activity_id column
data_set$activity_id<-NULL

# --------------------------------------------------------------------------------------------
# 4. Appropriately label the data set with descriptive variable names. 
# --------------------------------------------------------------------------------------------

colnames<-features[features_included,]$label

# Remove characters forbidden in labels. Make the labels more readable. 
colnames<-gsub("-",".",colnames)
colnames<-gsub("std\\(\\)","Std",colnames)
colnames<-gsub("mean\\(\\)","Mean",colnames)

names(data_set)<-c("subject_id",colnames, "activity")

# --------------------------------------------------------------------------------------------
# 5. From the data set in step 4, create a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
# --------------------------------------------------------------------------------------------

# There are a few ways to achieve that. I like the ddply function from the plyr package.
variable_averages<-ddply(data_set, .(activity, subject_id), colwise(mean))

# Save the data set to a file
write.table(variable_averages, file="variable_averages.txt", append=FALSE, row.names=FALSE)