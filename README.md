It is assumed that the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is already retrieved and unzipped, that the current directory has the files: activity_labels.txt
                                                                  features.txt
and the subdirectories: ./test
                        ./train
The files subject_test.txt, X_test.txt and y_test.txt are under the directory ./test.
The files subject_train.txt, X_train.txt and y_train.txt are under the directory ./train.

The script uses the data.table package.

The script first reads in the activity labels from the files activity_labels.txt and 
changes the activity labels to lower case. Then all the "_" characters are removed and replaced with  space in all activity labels.

Next, the features variable titles are read from the file features.txt.

We start reading in the data. First data in ./test directory then the data in ./train directory is read.

Subject IDs are read from the files subject_test.txt and subject_train.txt and the variable is assigned the name "subjectID".

The values for 561 feature variables are read from the files X_test.txt and X_train.txt. The variables are assigned the names that were already read in from the features.txt file.

Lastly, the activity numbers for each subject and test are read from the files y_test.txt and y_train.txt. The variable is assigned the name "activity".

testData and trainData tables are formed separately by combining the features values with their corresponding subjects and activities. Then these two tables are combined in one big data set, allData of dimension 10299 rows and 563 columns.

From the big data set we extract only the columns that are mean and standard deviations of the measurements. Combining these columns with the "subjectID"" and "activity" columns we form the smaller data set. 

We clean the original column names by removing all the "()" and thus getting shorter variable names.

We exchange the activity numbers in the "activity" column with the corresponding activity labels which were read in (and transformed to lower case) from the file activity_labels.txt. A function called "namedActivity"" is written for this purpose in the script.

From the smaller data set we create a second, independent tidy data set with the average of each variable for each activity and each subject.

In the newly formed tidy data set we add 'ave-' - meaning average - to the beginning of variable names. A 
function called "newColname" is written for this purpose in the script which is applied to all the column names in the new tidy data set that need to be changed.

Finally, the tidy data set is written in a txt file.
