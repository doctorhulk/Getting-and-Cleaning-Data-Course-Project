Getting and Cleaning Data - Course Project
========================================
## Purpose

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Data Set

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Files included

* README.md - an introduction to the project
* run_analysis.R - an R script which does the processing
* CodeBook.md - a text file describing the data, variables and applied transformations

## How to run 

To process the data:
1. Start an R console.
2. Use the setwd() command to change the working directory to the location, where the run_analysis.md file is stored
3. Run the script with the command source("run_analysis.R")

Note: The script will download the data set from the internet and store it in the directory, from which it's been invoked. 

The output file 'variable_averages.txt' containing clean data will be saved in the directory 'UCI HAR Dataset/'.

## The run_analysis.R script 

The script processes the data in the following steps:
* Downloads and extracts the source data set.
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
