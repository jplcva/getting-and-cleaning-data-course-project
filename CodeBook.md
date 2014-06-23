getting-and-cleaning-data-course-project
========================================

Code book for Course Project for Getting and Cleaning Data on Coursera
----------------------------------------------------------------------

The data set 'analysisData.txt' provides synthetic data for 66 features based on the works of Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto, from the Smartlab - Non Linear Complex Systems Laboratory of Universita degli Studi di Genova.

Their study, labeled "Human Activity Recognition Using Smartphones Dataset" (Version 1.0), provided a serie of files where 561 features have been recorded for 6 activities performed by 30 patients aged between 19 and 48 years.

The following paragraphs are extracted from the 'README.txt' and 'features_info.txt' study files:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz."

"Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)."

"Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."

"These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

"For more information about this dataset contact: activityrecognition@smartlab.ws"
"Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012."

    Column: 1
    Name: subject_id
    Description: Subject identifier
    Data Type: integer
    Range: [1,30]

    Column: 2
    Name: activity
    Description: Activity description. See the range for the complete list
    Data Type: factor
    Range: 1. LAYING 2. SITTING 3. STANDING 4. WALKING 5. WALKING_DOWNSTAIRS 6. WALKING_UPSTAIRS

    Column: 3
    Name: MeanOfTimeForBodyAccelerationOnX
    Description: Mean of time ratio for body acceleration on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 4
    Name: MeanOfTimeForBodyAccelerationOnY
    Description: Mean of time ratio for body acceleration on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 5
    Name: MeanOfTimeForBodyAccelerationOnZ
    Description: Mean of time ratio for body acceleration on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 6
    Name: StandardDeviationOfTimeForBodyAccelerationOnX
    Description: Standard deviation of time ratio for body acceleration on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 7
    Name: StandardDeviationOfTimeForBodyAccelerationOnY
    Description: Standard deviation of time ratio for body acceleration on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 8
    Name: StandardDeviationOfTimeForBodyAccelerationOnZ
    Description: Standard deviation of time ratio for body acceleration on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 9
    Name: MeanOfTimeForGravityAccelerationOnX
    Description: Mean of time ratio for gravity acceleration on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 10
    Name: MeanOfTimeForGravityAccelerationOnY
    Description: Mean of time ratio for gravity acceleration on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 11
    Name: MeanOfTimeForGravityAccelerationOnZ
    Description: Mean of time ratio for gravity acceleration on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 12
    Name: StandardDeviationOfTimeForGravityAccelerationOnX
    Description: Standard deviation of time ratio for gravity acceleration on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 13
    Name: StandardDeviationOfTimeForGravityAccelerationOnY
    Description: Standard deviation of time ratio for gravity acceleration on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 14
    Name: StandardDeviationOfTimeForGravityAccelerationOnZ
    Description: Standard deviation of time ratio for gravity acceleration on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 15
    Name: MeanOfTimeForBodyAccelerationJerkSignalOnX
    Description: Mean of time ratio for body acceleration for Jerk signals on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 16
    Name: MeanOfTimeForBodyAccelerationJerkSignalOnY
    Description: Mean of time ratio for body acceleration for Jerk signals on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 17
    Name: MeanOfTimeForBodyAccelerationJerkSignalOnZ
    Description: Mean of time ratio for body acceleration for Jerk signals on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 18
    Name: StandardDeviationOfTimeForBodyAccelerationJerkSignalOnX
    Description: Standard deviation of time ratio for body acceleration for Jerk signals on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 19
    Name: StandardDeviationOfTimeForBodyAccelerationJerkSignalOnY
    Description: Standard deviation of time ratio for body acceleration for Jerk signals on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 20
    Name: StandardDeviationOfTimeForBodyAccelerationJerkSignalOnZ
    Description: Standard deviation of time ratio for body acceleration for Jerk signals on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 21
    Name: MeanOfTimeForBodyAngularVelocityOnX
    Description: Mean of time ratio for body angular velocity on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 22
    Name: MeanOfTimeForBodyAngularVelocityOnY
    Description: Mean of time ratio for body angular velocity on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 23
    Name: MeanOfTimeForBodyAngularVelocityOnZ
    Description: Mean of time ratio for body angular velocity on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 24
    Name: StandardDeviationOfTimeForBodyAngularVelocityOnX
    Description: Standard deviation of time ratio for body angular velocity on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 25
    Name: StandardDeviationOfTimeForBodyAngularVelocityOnY
    Description: Standard deviation of time ratio for body angular velocity on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 26
    Name: StandardDeviationOfTimeForBodyAngularVelocityOnZ
    Description: Standard deviation of time ratio for body angular velocity on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 27
    Name: MeanOfTimeForBodyAngularVelocityJerkSignalOnX
    Description: Mean of time ratio for body angular velocity for Jerk signals on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 28
    Name: MeanOfTimeForBodyAngularVelocityJerkSignalOnY
    Description: Mean of time ratio for body angular velocity for Jerk signals on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 29
    Name: MeanOfTimeForBodyAngularVelocityJerkSignalOnZ
    Description: Mean of time ratio for body angular velocity for Jerk signals on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 30
    Name: StandardDeviationOfTimeForBodyAngularVelocityJerkSignalOnX
    Description: Standard deviation of time ratio for body angular velocity for Jerk signals on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 31
    Name: StandardDeviationOfTimeForBodyAngularVelocityJerkSignalOnY
    Description: Standard deviation of time ratio for body angular velocity for Jerk signals on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 32
    Name: StandardDeviationOfTimeForBodyAngularVelocityJerkSignalOnZ
    Description: Standard deviation of time ratio for body angular velocity for Jerk signals on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 33
    Name: MeanOfTimeForBodyAccelerationMagnitude
    Description: Mean of time ratio for body acceleration magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 34
    Name: StandardDeviationOfTimeForBodyAccelerationMagnitude
    Description: Standard deviation of time ratio for body acceleration magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 35
    Name: MeanOfTimeForGravityAccelerationMagnitude
    Description: Mean of time ratio for gravity acceleration magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 36
    Name: StandardDeviationOfTimeForGravityAccelerationMagnitude
    Description: Standard deviation of time ratio for gravity acceleration magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 37
    Name: MeanOfTimeForBodyAccelerationJerkSignalMagnitude
    Description: Mean of time ratio for body acceleration for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 38
    Name: StandardDeviationOfTimeForBodyAccelerationJerkSignalMagnitude
    Description: Standard deviation of time ratio for body acceleration for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 39
    Name: MeanOfTimeForBodyAngularVelocityMagnitude
    Description: Mean of time ratio for body angular velocity magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 40
    Name: StandardDeviationOfTimeForBodyAngularVelocityMagnitude
    Description: Standard deviation of time ratio for body angular velocity magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 41
    Name: MeanOfTimeForBodyAngularVelocityJerkSignalMagnitude
    Description: Mean of time ratio for body angular velocity for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 42
    Name: StandardDeviationOfTimeForBodyAngularVelocityJerkSignalMagnitude
    Description: Standard deviation of time ratio for body angular velocity for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 43
    Name: MeanOfFrequencyForBodyAccelerationOnX
    Description: Mean of frequency for body acceleration on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 44
    Name: MeanOfFrequencyForBodyAccelerationOnY
    Description: Mean of frequency for body acceleration on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 45
    Name: MeanOfFrequencyForBodyAccelerationOnZ
    Description: Mean of frequency for body acceleration on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 46
    Name: StandardDeviationOfFrequencyForBodyAccelerationOnX
    Description: Standard deviation of frequency for body acceleration on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 47
    Name: StandardDeviationOfFrequencyForBodyAccelerationOnY
    Description: Standard deviation of frequency for body acceleration on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 48
    Name: StandardDeviationOfFrequencyForBodyAccelerationOnZ
    Description: Standard deviation of frequency for body acceleration on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 49
    Name: MeanOfFrequencyForBodyAccelerationJerkSignalOnX
    Description: Mean of frequency for body acceleration for Jerk signals on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 50
    Name: MeanOfFrequencyForBodyAccelerationJerkSignalOnY
    Description: Mean of frequency for body acceleration for Jerk signals on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 51
    Name: MeanOfFrequencyForBodyAccelerationJerkSignalOnZ
    Description: Mean of frequency for body acceleration for Jerk signals on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 52
    Name: StandardDeviationOfFrequencyForBodyAccelerationJerkSignalOnX
    Description: Standard deviation of frequency for body acceleration for Jerk signals on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 53
    Name: StandardDeviationOfFrequencyForBodyAccelerationJerkSignalOnY
    Description: Standard deviation of frequency for body acceleration for Jerk signals on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 54
    Name: StandardDeviationOfFrequencyForBodyAccelerationJerkSignalOnZ
    Description: Standard deviation of frequency for body acceleration for Jerk signals on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 55
    Name: MeanOfFrequencyForBodyAngularVelocityOnX
    Description: Mean of frequency for body angular velocity on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 56
    Name: MeanOfFrequencyForBodyAngularVelocityOnY
    Description: Mean of frequency for body angular velocity on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 57
    Name: MeanOfFrequencyForBodyAngularVelocityOnZ
    Description: Mean of frequency for body angular velocity on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 58
    Name: StandardDeviationOfFrequencyForBodyAngularVelocityOnX
    Description: Standard deviation of frequency for body angular velocity on X axis
    Data Type: numeric
    Range: [-1,1]

    Column: 59
    Name: StandardDeviationOfFrequencyForBodyAngularVelocityOnY
    Description: Standard deviation of frequency for body angular velocity on Y axis
    Data Type: numeric
    Range: [-1,1]

    Column: 60
    Name: StandardDeviationOfFrequencyForBodyAngularVelocityOnZ
    Description: Standard deviation of frequency for body angular velocity on Z axis
    Data Type: numeric
    Range: [-1,1]

    Column: 61
    Name: MeanOfFrequencyForBodyAccelerationMagnitude
    Description: Mean of frequency for body acceleration magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 62
    Name: StandardDeviationOfFrequencyForBodyAccelerationMagnitude
    Description: Standard deviation of frequency for body acceleration magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 63
    Name: MeanOfFrequencyForBodyAccelerationJerkSignalMagnitude
    Description: Mean of frequency for body acceleration for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 64
    Name: StandardDeviationOfFrequencyForBodyAccelerationJerkSignalMagnitude
    Description: Standard deviation of frequency for body acceleration for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 65
    Name: MeanOfFrequencyForBodyAngularVelocityMagnitude
    Description: Mean of frequency for body angular velocity magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 66
    Name: StandardDeviationOfFrequencyForBodyAngularVelocityMagnitude
    Description: Standard deviation of frequency for body angular velocity magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 67
    Name: MeanOfFrequencyForBodyAngularVelocityJerkSignalMagnitude
    Description: Mean of frequency for body angular velocity for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]

    Column: 68
    Name: StandardDeviationOfFrequencyForBodyAngularVelocityJerkSignalMagnitude
    Description: Standard deviation of frequency for body angular velocity for Jerk signals magnitude
    Data Type: numeric
    Range: [-1,1]
