filename <- "dataset.zip"

## Check for zip file. Download and unzip the dataset if not present:
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
        download.file(fileURL, filename, mode="wb")
}
unzip(filename)


# Read Test and Training files for Activity, Subject and Features
# Activity files

activity_test  <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)
activity_train <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)

# Subject files

subject_test  <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# Features files

features_test  <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
features_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Combine activity, subject and features sets
activity <- rbind(activity_test, activity_train)
subject <- rbind(subject_test, subject_train)
features <- rbind(features_test, features_train)

# Apply names to combined tables before creating new data set
names(activity) <- "activity"
names(subject) <- "subject"
# we'll pull the features names from the text file provided
featnames <- read.table("UCI HAR Dataset/features.txt",header = FALSE)
names(features) <- featnames[,2]

# Create new data frame, Step 1 complete
data <- cbind(activity, subject, features)

# Step 2, select only data from "std" or"mean" columns
# Find std and mean columns, concat activity and subject

data_cols <- c(names(data)[grep("std|mean\\(\\)",names(data))],"activity","subject")

# Subset data based on data_cols.  For this application we can discard all other columns and we'll
# overwrite data.  Step 2 complete.

data <- subset(data, select = data_cols)

# Step 3 descriptive activity names
# names are provided in activity_labels.txt

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

# rename activity variable based on factors of activity_labels
# Step 3 complete

data$activity <- factor(data$activity, levels = activity_labels$V1, labels = activity_labels$V2)

#Step 4, rename variables

names(data) <- gsub("^f","Frequency",names(data))
names(data) <- gsub("^t","Time",names(data))
names(data) <- gsub("\\(\\)","",names(data))
names(data) <- gsub("Acc","Accelerometer",names(data))
names(data) <- gsub("Gyro","Gyroscope",names(data))
names(data) <- gsub("Mag","Magnitude",names(data))

# Step 5, create second, independent, tidy data set that includes the mean for each subsject and
# each activity

# load plyr
library(plyr)

# Aggregate data taking the mean and reorder data2 by subject and activity
data2 <- aggregate(. ~subject + activity, data, mean)
data2 <- data2[order(data2$subject, data2$activity), ]

# write final file
write.table(data2, file = "tidydata.txt", row.name=FALSE)

