## import the package to use: data.table

library(data.table)

## read in the activity labels

activityLabels <- fread("./activity_labels.txt", header=FALSE)

# change the activity labels to lower case
activityLabels <- activityLabels[, tolower(V2)]

# now we have a character vector of activity labels; we eliminated the first column of activity numbers
# remove the "_" and place a space instead in all activity labels
activityLabels <- gsub("_", " ", activityLabels)

## read in the features variable titles
features <- fread("./features.txt", header=FALSE)

## read in the data from the Test set

# read in subject IDs  
subjectTest <- fread("./test/subject_test.txt", header=FALSE, col.names="subjectID")

# read in 561 feature variables; assign the right column names while reading
XTest <- fread("./test/X_test.txt", header=FALSE, col.names=features$V2)

# read in the activity (number) carried out by the subjects in subjectTest 
yTest <- fread("./test/y_test.txt", header=FALSE, col.names="activity")

## read in the data from the Train set

# read in subject IDs  
subjectTrain <- fread("./train/subject_train.txt", header=FALSE, col.names="subjectID")

# read in 561 feature variables; assign the right column names while reading
XTrain <- fread("./train/X_train.txt", header=FALSE, col.names=features$V2)

# read in the activity (number) carried out by the subjects in subjectTest 
yTrain <- fread("./train/y_train.txt", header=FALSE, col.names="activity")

## merge the Test and Train data sets to form one table of dimension (10299,563)
## [subjectID activity X(561 variables)]  

# add subjectID and activity columns to XTest
testData <- cbind(subjectTest, yTest, XTest)

# add subjectID and activity columns to XTrain
trainData <- cbind(subjectTrain, yTrain, XTrain)

# merge the Test and Train data sets: [subjectID activity X], where X has 561 variables
allData <- rbind(testData, trainData)

## extract the values on mean and std only from allData

# get the indices of variables that are mean and standard values of observed features only
j <- grep("*mean*|*std*", names(allData))

# add also the indices of the first two variables to the set: subjectID and activity
j <- c(1, 2, j)

# extract the chosen variables from the whole data set
tidyData <- allData[, ..j]

## clean the names of variables and activity labels, getting shorter variable names and 
## meaningful activity labels instead of activity numbers

# remove all the "()" from variable names in the tidy data set
names(tidyData) <- gsub("\\(\\)", "", names(tidyData))

# change the activity number to activity name in the tidy data set
# namedActivity function returns an activity name for a given activity number
# it is applied to all the entries in the "activity" column in tidy data set
namedActivity <- function(i) { activityLabels[i] }
tidyData$activity <- sapply(tidyData$activity, namedActivity)

## From the data set tidyData, let us create a second, 
## independent tidy data set with the average of each variable for each activity and each subject.
newTidy <- aggregate(x=tidyData[,3:81], by=list(subjectID=tidyData$subjectID, activity=tidyData$activity), FUN="mean")

# add 'ave-' - meaning average - to the beginning of variable names in the new tidy data set
# the function newColname pastes "ave-" to the beginning of any string
# it is applied to all the column names from the 3rd to the 81st column in the new tidy data set
newColname <- function(x) { paste0("ave-", x)}
namesAve <- sapply(names(newTidy[3:81]), newColname)

# we add the names of the first two columns to the 79 newly formed column names
# and assign these new column names to the new tidy data set
namesAve <- c(names(newTidy[1:2]), namesAve)
newTidy <- setnames(newTidy, namesAve)

## write the new tidy data set to a txt file
write.table(newTidy, "./tidydata.txt", row.names=FALSE)
