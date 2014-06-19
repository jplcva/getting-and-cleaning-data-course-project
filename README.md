getting-and-cleaning-data-course-project
========================================

Repository for Course Project for Getting and Cleaning Data on Coursera
-----------------------------------------------------------------------

This source code is intended to solve the tasks required for the Coursera MOOC's course project.

The purpose of this project is to demonstrate ones ability to collect, work with, and clean a data set. 

The goal is to prepare a tidy data that can be used for later analysis. The raw data for the project is provided in the getdata_projectfiles_UCI HAR Dataset.zip file. It contains directories and files where the data is in two groups: train and test.

The required tasks for this part of the project (run_analysis.R) are:

1. To merge the training and the test sets to create one data set.
2. To extract only the measurements on the mean and standard deviation for each
measurement.
3. To use descriptive activity names to name the activities in the data set.
4. To appropriately labels the data set with descriptive variable names.
5. To create a second, independent tidy data set with the average of each
variable for each activity and each subject.

#### The run_analysis.R script contains the run_analysis() function that performs the required tasks for the course project

The run_analysis() function takes the workDir parameter, which default value is set to the empty string. In case no working directory is given, then the function operates with the session's current one.

Below is the description of the steps required to generate a aggregated tidy data set:

1. The training and the test sets are merged to create one data set. The data sets are merged vertically using rbind().
2. The feature names a extracted from the features.txt file. The resulting data frame is then transposed to a matrix using t(), then, the previously merged data set is enhanced with column names.
3. Only measurements on the mean and standard deviation are kept. These measurements are determined by the "mean()" and "std()" words located in the variable names. Column indices containing these two words are extracted and then in a vector, used to column-subset the data set.
4. The retained mean and standard deviation measurements are renamed in a descriptive way according to the following transformation rules:
    * Substitute mean() with MeanOf and std() with StandardDeviationOf
    * Substitute t with Time and f with Frequency
    * Substitute Body with ForBody and Gravity with ForGravity
    * Substitute Acc with Acceleration and Gyro with AngularVelocity
    * Substitute Jerk with JerkSignal
    * Substitute Mag- with Magnitude
    * Substitute -X with OnX, -Y with OnY, -Z with OnZ
5. The activities, identified as codes from 1 to 6, are extracted from training and test sets and merged vertically using rbind().
6. Activities names are loaded from the activity_labels.txt text file. Descriptive activity names to name the activities in the data set are substituted.
7. The subjects, identified as identifiers from 1 to 30, are extracted from training and test sets and merged vertically using rbind().
8. Subjects identifiers, activities names and mean() and std() features are then combined in a single tidy data set using cbind().
9. A second, independent tidy data set is then created with the average of each variable for each activity and each subject, using aggregate() and mean(). All columns of the data set are aggregated (ncol(data)), except the first two ones ((1 + 2)). The first two columns are used as factors, and the average function used is mean().
10. The first two columns of the aggregated data set are labeled in a descriptive way, since aggregate() generates "Group.#" columns.
11. The resulting aggregated data set is the written to the analysisData.txt file, in the working directory.
12. Objects in the environment are then removed using rm().

This is an extract of the generated analysisData.txt file:

      subject_id activity MeanOfTimeForBodyAccelerationOnX MeanOfTimeForBodyAccelerationOnY
    1          1   LAYING                        0.2215982                      -0.04051395
    2          2   LAYING                        0.2813734                      -0.01815874
    3          3   LAYING                        0.2755169                      -0.01895568
    4          4   LAYING                        0.2635592                      -0.01500318
    5          5   LAYING                        0.2783343                      -0.01830421
    6          6   LAYING                        0.2486565                      -0.01025292