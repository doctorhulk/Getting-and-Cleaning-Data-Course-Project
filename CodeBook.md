Codebook
========================================

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

A set of variables was estimated from the above signals. For the purpose of the project only the following have been used:
* mean(): Mean value
* std(): Standard deviation

## Transformations

The output data set presents the average of each variable selected from the input, split by the activity and the subject. 

## Variables

There have been 30 subjects and 6 activities and 66 selected input variables. For that reason the resulting dataset contains 180 rows and 68 columns.

The output data set contains the following variables:


|Variable                 |DataType |Description                                                                                                                                      |
|-------------------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------|
|activity                 |chr      |  The activity done by the subject. The allowed values are: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING" |
|subject_id               |num      |  The ID of the person who took part in the experiment. The values are: 1 2 3 4 ... 30                                                           |
|tBodyAcc.Mean.X          |num      |  The average of the input variable tBodyAcc-mean()-X                                                                                            |
|tBodyAcc.Mean.Y          |num      |  The average of the input variable tBodyAcc-mean()-Y                                                                                            |
|tBodyAcc.Mean.Z          |num      |  The average of the input variable tBodyAcc-mean()-Z                                                                                            |
|tBodyAcc.Std.X           |num      |  The average of the input variable tBodyAcc-std()-X                                                                                             |
|tBodyAcc.Std.Y           |num      |  The average of the input variable tBodyAcc-std()-Y                                                                                             |
|tBodyAcc.Std.Z           |num      |  The average of the input variable tBodyAcc-std()-Z                                                                                             |
|tGravityAcc.Mean.X       |num      |  The average of the input variable tGravityAcc-mean()-X                                                                                         |
|tGravityAcc.Mean.Y       |num      |  The average of the input variable tGravityAcc-mean()-Y                                                                                         |
|tGravityAcc.Mean.Z       |num      |  The average of the input variable tGravityAcc-mean()-Z                                                                                         |
|tGravityAcc.Std.X        |num      |  The average of the input variable tGravityAcc-std()-X                                                                                          |
|tGravityAcc.Std.Y        |num      |  The average of the input variable tGravityAcc-std()-Y                                                                                          |
|tGravityAcc.Std.Z        |num      |  The average of the input variable tGravityAcc-std()-Z                                                                                          |
|tBodyAccJerk.Mean.X      |num      |  The average of the input variable tBodyAccJerk-mean()-X                                                                                        |
|tBodyAccJerk.Mean.Y      |num      |  The average of the input variable tBodyAccJerk-mean()-Y                                                                                        |
|tBodyAccJerk.Mean.Z      |num      |  The average of the input variable tBodyAccJerk-mean()-Z                                                                                        |
|tBodyAccJerk.Std.X       |num      |  The average of the input variable tBodyAccJerk-std()-X                                                                                         |
|tBodyAccJerk.Std.Y       |num      |  The average of the input variable tBodyAccJerk-std()-Y                                                                                         |
|tBodyAccJerk.Std.Z       |num      |  The average of the input variable tBodyAccJerk-std()-Z                                                                                         |
|tBodyGyro.Mean.X         |num      |  The average of the input variable tBodyGyro-mean()-X                                                                                           |
|tBodyGyro.Mean.Y         |num      |  The average of the input variable tBodyGyro-mean()-Y                                                                                           |
|tBodyGyro.Mean.Z         |num      |  The average of the input variable tBodyGyro-mean()-Z                                                                                           |
|tBodyGyro.Std.X          |num      |  The average of the input variable tBodyGyro-std()-X                                                                                            |
|tBodyGyro.Std.Y          |num      |  The average of the input variable tBodyGyro-std()-Y                                                                                            |
|tBodyGyro.Std.Z          |num      |  The average of the input variable tBodyGyro-std()-Z                                                                                            |
|tBodyGyroJerk.Mean.X     |num      |  The average of the input variable tBodyGyroJerk-mean()-X                                                                                       |
|tBodyGyroJerk.Mean.Y     |num      |  The average of the input variable tBodyGyroJerk-mean()-Y                                                                                       |
|tBodyGyroJerk.Mean.Z     |num      |  The average of the input variable tBodyGyroJerk-mean()-Z                                                                                       |
|tBodyGyroJerk.Std.X      |num      |  The average of the input variable tBodyGyroJerk-std()-X                                                                                        |
|tBodyGyroJerk.Std.Y      |num      |  The average of the input variable tBodyGyroJerk-std()-Y                                                                                        |
|tBodyGyroJerk.Std.Z      |num      |  The average of the input variable tBodyGyroJerk-std()-Z                                                                                        |
|tBodyAccMag.Mean         |num      |  The average of the input variable tBodyAccMag-mean()                                                                                           |
|tBodyAccMag.Std          |num      |  The average of the input variable tBodyAccMag-std()                                                                                            |
|tGravityAccMag.Mean      |num      |  The average of the input variable tGravityAccMag-mean()                                                                                        |
|tGravityAccMag.Std       |num      |  The average of the input variable tGravityAccMag-std()                                                                                         |
|tBodyAccJerkMag.Mean     |num      |  The average of the input variable tBodyAccJerkMag-mean()                                                                                       |
|tBodyAccJerkMag.Std      |num      |  The average of the input variable tBodyAccJerkMag-std()                                                                                        |
|tBodyGyroMag.Mean        |num      |  The average of the input variable tBodyGyroMag-mean()                                                                                          |
|tBodyGyroMag.Std         |num      |  The average of the input variable tBodyGyroMag-std()                                                                                           |
|tBodyGyroJerkMag.Mean    |num      |  The average of the input variable tBodyGyroJerkMag-mean()                                                                                      |
|tBodyGyroJerkMag.Std     |num      |  The average of the input variable tBodyGyroJerkMag-std()                                                                                       |
|fBodyAcc.Mean.X          |num      |  The average of the input variable fBodyAcc-mean()-X                                                                                            |
|fBodyAcc.Mean.Y          |num      |  The average of the input variable fBodyAcc-mean()-Y                                                                                            |
|fBodyAcc.Mean.Z          |num      |  The average of the input variable fBodyAcc-mean()-Z                                                                                            |
|fBodyAcc.Std.X           |num      |  The average of the input variable fBodyAcc-std()-X                                                                                             |
|fBodyAcc.Std.Y           |num      |  The average of the input variable fBodyAcc-std()-Y                                                                                             |
|fBodyAcc.Std.Z           |num      |  The average of the input variable fBodyAcc-std()-Z                                                                                             |
|fBodyAccJerk.Mean.X      |num      |  The average of the input variable fBodyAccJerk-mean()-X                                                                                        |
|fBodyAccJerk.Mean.Y      |num      |  The average of the input variable fBodyAccJerk-mean()-Y                                                                                        |
|fBodyAccJerk.Mean.Z      |num      |  The average of the input variable fBodyAccJerk-mean()-Z                                                                                        |
|fBodyAccJerk.Std.X       |num      |  The average of the input variable fBodyAccJerk-std()-X                                                                                         |
|fBodyAccJerk.Std.Y       |num      |  The average of the input variable fBodyAccJerk-std()-Y                                                                                         |
|fBodyAccJerk.Std.Z       |num      |  The average of the input variable fBodyAccJerk-std()-Z                                                                                         |
|fBodyGyro.Mean.X         |num      |  The average of the input variable fBodyGyro-mean()-X                                                                                           |
|fBodyGyro.Mean.Y         |num      |  The average of the input variable fBodyGyro-mean()-Y                                                                                           |
|fBodyGyro.Mean.Z         |num      |  The average of the input variable fBodyGyro-mean()-Z                                                                                           |
|fBodyGyro.Std.X          |num      |  The average of the input variable fBodyGyro-std()-X                                                                                            |
|fBodyGyro.Std.Y          |num      |  The average of the input variable fBodyGyro-std()-Y                                                                                            |
|fBodyGyro.Std.Z          |num      |  The average of the input variable fBodyGyro-std()-Z                                                                                            |
|fBodyAccMag.Mean         |num      |  The average of the input variable fBodyAccMag-mean()                                                                                           |
|fBodyAccMag.Std          |num      |  The average of the input variable fBodyAccMag-std()                                                                                            |
|fBodyBodyAccJerkMag.Mean |num      |  The average of the input variable fBodyBodyAccJerkMag-mean()                                                                                   |
|fBodyBodyAccJerkMag.Std  |num      |  The average of the input variable fBodyBodyAccJerkMag-std()                                                                                    |
|fBodyBodyGyroMag.Mean    |num      |  The average of the input variable fBodyBodyGyroMag-mean()                                                                                      |
|fBodyBodyGyroMag.Std     |num      |  The average of the input variable fBodyBodyGyroMag-std()                                                                                       |
|fBodyBodyGyroJerkMag.Mean|num      |  The average of the input variable fBodyBodyGyroJerkMag-mean()                                                                                  |
|fBodyBodyGyroJerkMag.Std |num      |  The average of the input variable fBodyBodyGyroJerkMag-std()                                                                                   |







































































