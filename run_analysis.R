# read in relevant data
test <- read.table("UCI HAR Dataset/test/X_test.txt")
train <- read.table("UCI HAR Dataset/train/X_train.txt")
test.labels <- read.table("UCI HAR Dataset/test/y_test.txt"
train.labels <- read.table("UCI HAR Dataset/train/y_train.txt")
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
train.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

# get features data and sort to get data names with "mean" or "std"
features <- read.table("UCI HAR Dataset/features.txt")
required.vars.index <- grep("[Mm]ean|std",features$V2)

# subset data based on required variable names
train.req <- train[,required.vars.index]
test.req <- test[,required.vars.index]

# add new columns with subjects and activities 
# then merge the data frames
test.req <- cbind(test.subjects, test.labels, test.req)
train.req <- cbind(train.subjects, train.labels, train.req)
full <- rbind(test.req,train.req)

# pull the new column names from the features file
# and remove unwanted characters
new.names <- features$V2[required.vars.index]
new.names <- gsub("[()-,]",".",new.names)

# apply new names to columns
names(full) <- c("subjects","activities", new.names)

# read activity labels, create function to convert from 
# label index to label name
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
label_func <- function(x){return(activity.labels[x,2])}

# apply function to activities column in data
full$activities <- sapply(full$activities,label_func)


# melt to create one variable per line, against subject and activity
full.melt <- melt(full, id = c("subjects","activities"))

# use group by and summarize to get mean for each variable against
# subject and activity type
full.melt.grouped <- group_by(full.melt,subjects,activities,variable)
full.tidy <- summarise(full.melt.grouped,mn=mean(value))



