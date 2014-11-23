#read and unzip data
#download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","projectdata.zip")
unzip(zipfile="projectdata.zip", unzip="internal")

#read the training and test datasets 
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")

#read activity labels
trainlab <- read.table("./UCI HAR Dataset/train/y_train.txt")
testlab <- read.table("./UCI HAR Dataset/test/y_test.txt")
labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#read the variable names
names <- read.table("./UCI HAR Dataset/features.txt")


#asign variable names to data
nameslist <- names[,2]
names(train) <- nameslist
names(test)  <- nameslist


#assign the activity label for each row
trainlab1 <- merge(trainlab,labels,by.y="V1")
testlab1 <- merge(testlab,labels,by.y="V1")

train$activity <- trainlab1$V2
test$activity <- testlab1$V2

#merge test and training datasets
set <- rbind(train,test)

#extract mean and standard deviation for each measurement
means <- colMeans(set[,1:560])
sdv <- apply(set[,1:560],2,sd)

#read the subjects labels
subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#tidy subjects labels
sub <- rbind(subtrain,subtest)
subch  <- sapply(sub,as.character)
subch1 <- sub(pattern="\n","",subch)

#asign subjects to dataset

set$subject <- factor(subch1)

#extract mean by activity and subject
meanset <- aggregate(set,list(set$activity,set$subject),mean)
ord <- meanset[order(meanset$Group.1,meanset$Group.2),]
write.table(ord,file="meansbyactivitysubject.txt",row.name=FALSE)
