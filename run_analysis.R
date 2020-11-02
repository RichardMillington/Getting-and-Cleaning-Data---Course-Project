library(tidyr)
library(dplyr)
library(reshape2)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 'dataset','curl')
wearables <- unzip("dataset")

##1.0 Merge the training and test sets to create one data set. 

#First we read the data into unique data frames..

x.test <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/test/X_test.txt", header=FALSE)
y.test <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/test/Y_test.txt", header=FALSE)
x.train <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/train/X_train.txt", header=FALSE)
y.train <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/train/Y_train.txt", header=FALSE)
features <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/features.txt", header=FALSE)
activity.labels <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/activity_labels.txt", header=FALSE)
subject.test <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/test/subject_test.txt", header=FALSE)
subject.train <- read.table("/Users/richardmillington/Dropbox/Getting and Cleaning Data Course Project/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

#Next we rename the columns of 'x.test' and 'x.train' dataset to the feature names provided in the features.txt file.
#We will also bind these columns together in both 'test.data' and 'train.data'. Then we bind the rows of this data set together.

colnames(x.test) <- features$V2
colnames(x.train) <- features$V2
test.data <- cbind(x.test,subject.test,y.test)
train.data <- cbind(x.train,subject.train,y.train)

merged.data <- rbind(test.data, train.data)

#Now we move the columns to ensure subject and activity are the at the beginning. 

merged.data <- merged.data[,c(ncol(merged.data),1:(ncol(merged.data)-1))]
merged.data <- merged.data[,c(ncol(merged.data),1:(ncol(merged.data)-1))]
colnames(merged.data)[1] <- "subject"
colnames(merged.data)[2] <- "activity"

##2.0 Extract only the measurements on the mean and standard deviation for each measurement

#We use the 'grepl' function to select the four columns we use to keep. This 
#includes any columns with the words 'activity', 'subject', 'mean', and 'sd'.

new.data <- merged.data[,grepl("activity|subject|mean|std",colnames(merged.data))]

##3.0 Use descriptive activity names to name the activities in the data set. 

#Now we use the 'activity.labels' provided to replace the numbers.

activity.labels <- as.character(activity.labels[,2])
new.data$activity <- activity.labels[new.data$activity]

##4.0 Appropriately label the data set with descriptive variable names. 

#Now we use the gsub function to find and replace variable names with more descriptive names.

names(new.data)<-gsub("^t", "time", names(new.data))
names(new.data)<-gsub("^f", "frequency.", names(new.data))
names(new.data)<-gsub("Acc", "Accelerometer", names(new.data))
names(new.data)<-gsub("Gyro", "Gyroscope", names(new.data))
names(new.data)<-gsub("Mag", "Magnitude", names(new.data))
names(new.data)<-gsub("BodyBody", "Body", names(new.data))
names(new.data)<-gsub("\\()", "", names(new.data))
names(new.data)<-gsub("std", "standard-deviation", names(new.data))

##5.0 Create a second, independent, tidy data set with the averages of each variable for each activity and each subject.

#Finally we 'melt' the data into a narrow data set with a single row for each activity by subject.
#Then we use 'dcast' to summarise the average of each variable by activity for each subject. 

data.melt <- melt(new.data, id=c("subject", "activity"))
data.cast <- dcast(data.melt, subject + activity ~ variable, fun.aggregate = mean)
write.table(data.cast, file="tidydata.txt") 
