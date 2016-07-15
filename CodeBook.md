# Codebook for Coursera's Getting and Cleaning Data class' final project

Data obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

See ReadMe.md file for running instructions.

Activity Descriptors:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Original columns were renamed for clarity.  
1 Empty parenthesis in variable names were removed
2 variables beginning with t > now begin with Time
3 f > Frequency
4 Mag > Magnitude
5 Acc > Accelerometer
6 Gyro > Gyroscope

Variable names:
subject
activity
TimeBodyAccelerometer-mean-X
TimeBodyAccelerometer-mean-Z
TimeBodyAccelerometer-std-Y
TimeGravityAccelerometer-mean-X
TimeGravityAccelerometer-mean-Z
TimeGravityAccelerometer-std-Y
TimeBodyAccelerometerJerk-mean-X
TimeBodyAccelerometerJerk-mean-Z
TimeBodyAccelerometerJerk-std-Y
TimeBodyGyroscope-mean-X
TimeBodyGyroscope-mean-Z
TimeBodyGyroscope-std-Y
TimeBodyGyroscopeJerk-mean-X
TimeBodyGyroscopeJerk-mean-Z
TimeBodyGyroscopeJerk-std-Y
TimeBodyAccelerometerMagnitude-mean
TimeGravityAccelerometerMagnitude-mean
TimeBodyAccelerometerJerkMagnitude-mean
TimeBodyGyroscopeMagnitude-mean
TimeBodyGyroscopeJerkMagnitude-mean
FrequencyBodyAccelerometer-mean-X
FrequencyBodyAccelerometer-mean-Z
FrequencyBodyAccelerometer-std-Y
FrequencyBodyAccelerometerJerk-mean-X
FrequencyBodyAccelerometerJerk-mean-Z
FrequencyBodyAccelerometerJerk-std-Y
FrequencyBodyGyroscope-mean-X
FrequencyBodyGyroscope-mean-Z
FrequencyBodyGyroscope-std-Y
FrequencyBodyAccelerometerMagnitude-mean
FrequencyBodyBodyAccelerometerJerkMagnitude-mean
FrequencyBodyBodyGyroscopeMagnitude-mean
FrequencyBodyBodyGyroscopeJerkMagnitude-mean
TimeBodyAccelerometer-mean-Y
TimeBodyAccelerometer-std-X
TimeBodyAccelerometer-std-Z
TimeGravityAccelerometer-mean-Y
TimeGravityAccelerometer-std-X
TimeGravityAccelerometer-std-Z
TimeBodyAccelerometerJerk-mean-Y
TimeBodyAccelerometerJerk-std-X
TimeBodyAccelerometerJerk-std-Z
TimeBodyGyroscope-mean-Y
TimeBodyGyroscope-std-X
TimeBodyGyroscope-std-Z
TimeBodyGyroscopeJerk-mean-Y
TimeBodyGyroscopeJerk-std-X
TimeBodyGyroscopeJerk-std-Z
TimeBodyAccelerometerMagnitude-std
TimeGravityAccelerometerMagnitude-std
TimeBodyAccelerometerJerkMagnitude-std
TimeBodyGyroscopeMagnitude-std
TimeBodyGyroscopeJerkMagnitude-std
FrequencyBodyAccelerometer-mean-Y
FrequencyBodyAccelerometer-std-X
FrequencyBodyAccelerometer-std-Z
FrequencyBodyAccelerometerJerk-mean-Y
FrequencyBodyAccelerometerJerk-std-X
FrequencyBodyAccelerometerJerk-std-Z
FrequencyBodyGyroscope-mean-Y
FrequencyBodyGyroscope-std-X
FrequencyBodyGyroscope-std-Z
FrequencyBodyAccelerometerMagnitude-std
FrequencyBodyBodyAccelerometerJerkMagnitude-std
FrequencyBodyBodyGyroscopeMagnitude-std
FrequencyBodyBodyGyroscopeJerkMagnitude-std

Final file, tidydata.txt, outputs the mean of all columns.

