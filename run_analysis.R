##load data
test <- read.table("UCI HAR Dataset/test/X_test.txt")
train <- read.table("UCI HAR Dataset/train/X_train.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")

##add activity to table and then combine tables then remove prior datasets
dataset <- rbind(test, train)
rm(test)
rm(train)


##load column name data from UCI HAR Dataset
column_names <- read.table("UCI HAR Dataset/features.txt")
colnames(dataset) <- column_names[,2]


##get columns mean() & std()
dataset <- dataset[,(grepl("mean()", colnames(dataset)) | grepl("std()", colnames(dataset)))]
dataset <- dataset[,!grepl("meanFreq", colnames(dataset))]

##rename with descriptive names
activityset <- rbind(test_activity, train_activity)
activity_types <- read.table("UCI HAR Dataset/activity_labels.txt")
for(i in 1:nrow(activity_types)){
  activityset <- replace(activityset, activityset == activity_types[i,1], as.vector(activity_types[i,2]))            
}
dataset <- cbind(activityset, dataset)
rm(test_activity)
rm(train_activity)

##add subjects
subjects_test <- read.table("UCI HAR DATASET/test/subject_test.txt")
subjects_train <- read.table("UCI HAR DATASET/train/subject_train.txt")
subjects <- rbind(subjects_test, subjects_train)
rm(subjects_test)
rm(subjects_train)
dataset <- cbind(subjects, dataset)

##rename columns to be more descriptive (done manually)
colnames(dataset) <- c("Subject", "Activity", "Mean of Body Accelleration in X direction by time", "Mean of Body Accelleration in y direction bY time", "Mean of Body Accelleration in Z direction by time", "Standard Deviation of Body Accelleration in X direction by time", "Standard Deviation of Body Accelleration in Y direction by time", "Standard Deviation of Body Accelleration in Z direction by time", "Mean of Gravity Accelleration in X direction by time", "Mean of Gravity Accelleration in y direction bY time", "Mean of Gravity Accelleration in Z direction by time", "Standard Deviation of Gravity Accelleration in X direction by time", "Standard Deviation of Gravity Accelleration in Y direction by time", "Standard Deviation of Gravity Accelleration in Z direction by time", "Mean of Body Jerk Accelleration in X direction by time", "Mean of Body Jerk Accelleration in y direction bY time", "Mean of Body Jerk Accelleration in Z direction by time", "Standard Deviation of Body Jerk Accelleration in X direction by time", "Standard Deviation of Body Jerk Accelleration in Y direction by time", "Standard Deviation of Body Jerk Accelleration in Z direction by time", "Mean of Body Gyroscope in X direction by time", "Mean of Body Gyroscope in y direction bY time", "Mean of Body Gyroscope in Z direction by time", "Standard Deviation of Body Gyroscope in X direction by time", "Standard Deviation of Body Gyroscope in Y direction by time", "Standard Deviation of Body Gyroscope in Z direction by time", "Mean of Body Gyroscope Jerk in X direction by time", "Mean of Body Gyroscope Jerk in y direction bY time", "Mean of Body Gyroscope Jerk in Z direction by time", "Standard Deviation of Body Gyroscope Jerk in X direction by time", "Standard Deviation of Body Gyroscope Jerk in Y direction by time", "Standard Deviation of Body Gyroscope Jerk in Z direction by time", "Mean of Body Accelleration Mag by time", "Standard Deviation of Body Accelleration by time", "Mean of Gravity Accelleration by time", "Standard Deviation of Gravity Acceleration by time", "Mean of Body Jerk Mag by time", "Standard Deviation of Body Jerk Mag by time", "Mean of Body Gyroscope Mag by time", "Standard Deviation of Body Gyroscope Mag by time", "Mean of Body Gyroscope Jerk by time", "Standard Deviation of Body Gyroscope Jerk by time", "Mean of Body Accelleration in X direction by Fourier", "Mean of Body Acceleration in y direction bY Fourier", "Mean of Body Accelleration in Z direction by Fourier", "Standard Deviation of Body Accelleration in X direction by Fourier", "Standard Deviation of Body Accelleration in Y direction by Fourier", "Standard Deviation of Body Accelleration in Z direction by Fourier", "Mean of Body Accelleration Jerk in X direction by Fourier", "Mean of Body Acceleration Jerk in y direction bY Fourier", "Mean of Body Accelleration Jerk in Z direction by Fourier", "Standard Deviation of Body Accelleration Jerk in X direction by Fourier", "Standard Deviation of Body Accelleration Jerk in Y direction by Fourier", "Standard Deviation of Body Accelleration Jerk in Z direction by Fourier", "Mean of Body Gyroscope in X direction by Fourier", "Mean of Body Gyroscope in y direction bY Fourier", "Mean of Body Gyroscope in Z direction by Fourier", "Standard Deviation of Body Gyroscope in X direction by Fourier", "Standard Deviation of Body Gyroscope in Y direction by Fourier", "Standard Deviation of Body Gyroscope in Z direction by Fourier", "Mean of Body Accelleration Mag by Fourier", "Standard Deviation of Body Accelleration Mag by Fourier", "Mean of Body Accelleration jerk Mag by Fourier", "Standard Deviation of Body Accelleration Jerk Mag by Fourier", "Mean of Body Gyroscope Mag by Fourier", "Standard Deviation of Body Gyroscope Mag by Fourier", "Mean of Body Gyroscope Jerk by Fourier", "Standard Deviation of Body Gyroscope Jerk by Fourier")

##tidy dataset with average of each variable
library(tidyr)
library(dplyr)
tidy_dataset <- dataset %>% gather(activity_variables, averages, 3:68)
detach(package:dplyr)
library(plyr)
tidy_dataset <- ddply(tidy_dataset, c("Subject", "Activity", "activity_variables"), summarise, mean = mean(averages, na.rm=TRUE))
