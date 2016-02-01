# Unzip the files

# Change the import directory if necessary. It really depends on the definition of working directory

# Merges the training and the test sets to create one data set.
x_train <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt")
x_test <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt")
y_train <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt")
y_test <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt")
sbjt_train <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt")
sbjt_test <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt")

train <- cbind(x_train, y_train, sbjt_train)
test <- cbind(x_test, y_test, sbjt_test)
data <- rbind(train, test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\features.txt")
ms <- grep("[Mm]ean\\(|std\\(", features$V2)
data2 <- data[,c(ms, 562, 563)]

#Uses descriptive activity names to name the activities in the data set
activity <- read.table(".\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\activity_labels.txt")
data3 <- merge(data2, activity, by.x = "V1.1", by.y = "V1")
data3_1 <- data3[,-1]
#Appropriately labels the data set with descriptive variable names.
features2 <- features[ms,]
names(data3_1) <- features2$V2
colnames(data3_1)[67:68] <- c("Subject", "Activity")
names(data3_1) <- gsub("\\()", "", names(data3_1))
names(data3_1) <- gsub("^t", "Time.", names(data3_1))
names(data3_1) <- gsub("^f", "Freq.", names(data3_1))
names(data3_1) <- gsub("\\-", ".", names(data3_1))

#From the data set in step 4, creates a second, independent tidy data set with the average 
#of each variable for each activity and each subject.

#library(data.table)
#data_DT <- data.table(data3_1)
#data_DT[, Mean:=mean(data_DT[,1:79]), by=list(data_DT$Subject, data_DT$Activity)]

library(dplyr)
grp_cols <- names(data3_1)[67:68]
dots <- lapply(grp_cols, as.symbol)

data5 <- data3_1 %>%
    group_by_(.dots=dots) %>%
    summarize_each(funs(mean))

#Export
#write.table(data5, file = "F:\\Coursera Projects\\Getting and Cleaning Data\\Work\\data5.txt", row.name=FALSE)