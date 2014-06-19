## Getting and Cleaning Data Course Project
## ========================================
## This source code is intended to solve the tasks required for the
## Coursera MOOC's course project.
## The purpose of this project is to demonstrate ones ability to collect,
## work with, and clean a data set. 
## The goal is to prepare a tidy data that can be used for later analysis.
## The raw data for the project is provided in the
## getdata_projectfiles_UCI HAR Dataset.zip file. It contains directories and
## files where the data is in two groups: train and test.
## The required tasks for this part of the project (run_analysis.R) are:
## 1. To merge the training and the test sets to create one data set.
## 2. To extract only the measurements on the mean and standard deviation for
##    each measurement.
## 3. To use descriptive activity names to name the activities in the data set.
## 4. To appropriately labels the data set with descriptive variable names.
## 5. To create a second, independent tidy data set with the average of each
##    variable for each activity and each subject.

## This function performs the required tasks for the course project

run_analysis <- function(workDir = "")
{
        ## Set the working directory, if given. Otherwise, use the current one
        if (workDir != "")
        {
                setwd(workDir)
        }

        ## Merge the training and the test sets to create one data set
        ## The data sets are merged vertically using rbind()
        dfXtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
        dfXtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
        dfX <- rbind(dfXtrain, dfXtest)

        ## Feature names a extracted from the features.txt file.
        ## The resulting data frame is then transposed to a matrix using t(),
        ## then, the previously merged data set is enhanced with column names
        dfFeat <- read.table("./UCI HAR Dataset/features.txt")
        dfFeat <- t(dfFeat)
        colnames(dfX) <- dfFeat[2, ]

        ## Only measurements on the mean and standard deviation are kept.
        ## These measurements are determined by the "mean()" and "std()" words
        ## located in the variable names. Column indices containing these two
        ## words are extracted and then in a vector, used to column-subset the
        ## data set.
        columnsIndices <- vector(mode = "numeric", length = 0)
        words <- c("mean\\(\\)", "std\\(\\)")
        for (i in 1:length(words))
        {
                columnVector <- grep(words[i], names(dfX))
                if (i == 1)
                {
                        columnsIndices <- columnVector
                }
                else
                {
                        columnsIndices <- union(columnsIndices, columnVector)
                }
        }
        columnsIndices <- sort(columnsIndices)
        dfX <- dfX[, columnsIndices]

        ## Appropriately labels the data set with descriptive variable names
        columnsNames <- vector(mode = "character", length = 0)
        for (i in 1:length(names(dfX)))
        {
                ## Initialize column name
                name <- ""
                
                ## Substitute mean() with MeanOf and std() with StandardDeviationOf
                if (grepl("mean\\(\\)", names(dfX)[i]))
                {
                        name <- paste0(name, "MeanOf")
                }
                else if (grepl("std\\(\\)", names(dfX)[i]))
                {
                        name <- paste0(name, "StandardDeviationOf")
                }
                
                ## Substitute t with Time and f with Frequency
                if (grepl("^t", names(dfX)[i]))
                {
                        name <- paste0(name, "Time")
                }
                else if (grepl("^f", names(dfX)[i]))
                {
                        name <- paste0(name, "Frequency")
                }
                
                ## Substitute Body with ForBody and Gravity with ForGravity
                if (grepl("Body", names(dfX)[i]))
                {
                        name <- paste0(name, "ForBody")
                }
                else if (grepl("Gravity", names(dfX)[i]))
                {
                        name <- paste0(name, "ForGravity")
                }
                
                ## Substitute Acc with Acceleration and Gyro with AngularVelocity
                if (grepl("Acc", names(dfX)[i]))
                {
                        name <- paste0(name, "Acceleration")
                }
                else if (grepl("Gyro", names(dfX)[i]))
                {
                        name <- paste0(name, "AngularVelocity")
                }
                
                ## Substitute Jerk with JerkSignal
                if (grepl("Jerk", names(dfX)[i]))
                {
                        name <- paste0(name, "JerkSignal")
                }
                
                ## Substitute Mag- with Magnitude
                if (grepl("Mag\\-", names(dfX)[i]))
                {
                        name <- paste0(name, "Magnitude")
                }
                
                ## Substitute -X with OnX, -Y with OnY, -Z with OnZ
                if (grepl("\\-X", names(dfX)[i]))
                {
                        name <- paste0(name, "OnX")
                }
                else if (grepl("\\-Y", names(dfX)[i]))
                {
                        name <- paste0(name, "OnY")
                }
                else if (grepl("\\-Z", names(dfX)[i]))
                {
                        name <- paste0(name, "OnZ")
                }
                
                ## Build the columns names vector
                columnsNames[i] <- name
        }
        colnames(dfX) <- columnsNames

        ## The activities, identified as codes from 1 to 6, are extracted from
        ## training and test sets and merged vertically using rbind()
        dfytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
        dfytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
        dfy <- rbind(dfytrain, dfytest)

        ## Activities names are loaded from the activity_labels.txt text file.
        ## Descriptive activity names to name the activities in the data set are
        ## substituted in the for loop.
        dfAct <- read.table("./UCI HAR Dataset/activity_labels.txt",
                            as.is = TRUE)
        for (i in 1:nrow(dfAct))
        {
                dfy[1][dfy[1] == i] <- dfAct[i, 2]
                
        }

        ## The subjects, identified as identifiers from 1 to 30, are extracted
        ## from training and test sets and merged vertically using rbind()
        dfSubtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        dfSubtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        dfS <- rbind(dfSubtrain, dfSubtest)

        ## Subjects identifiers, activities names and mean() and std() features
        ## are then combined in a single tidy data set using cbind()
        data <- cbind(dfS, dfy, dfX)

        ## A second, independent tidy data set is then created with the average
        ## of each variable for each activity and each subject, using
        ## aggregate() and mean(). All columns of the data set are aggregated
        ## (ncol(data)), except the first two ones ((1 + 2)). The first two
        ## columns are used as factors, and the average function used is mean()
        result <- aggregate(data[, (1 + 2):ncol(data)],
                            by = list(factor(data[, 1]), factor(data[, 2])),
                            FUN = mean)

        ## The first two columns of the aggregated data set are labeled in a
        ## descriptive way, since aggregate() generates "Group.#" columns
        colnames(result)[1] <- "subject_id"
        colnames(result)[2] <- "activity"

        ## The resulting aggregated data set is the written to the
        ## analysisData.txt file, in the working directory
        write.table(result, file = "./analysisData.txt", row.names = FALSE)

        ## Objects in the environment are then removed using rm()
        rm(list = ls())
}
