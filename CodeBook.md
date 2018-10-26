Original data set: Human Activity Recognition Using Smartphones Dataset, Version 1.0
Original data URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

See script file run_analysis.R to see how the tidy data at hand is obtained from the raw original data.

----------------------------------------------------------------------------------------------
The variable names follow the naming strategy of the original data file, i.e: "The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). "

In the tidy dataset only the variables that are the mean and standard deviation of the measurements are included. We have further taken the average of each of these mean and std values for each activity and each subject, hence the "ave" (average) at the start of the names of variables. These are the data reported in the tidy dataset.

----------------------------------------------------------------------------------------------
The tidy dataset has the following dimensions:

Number of observations        180
Number of variables            81

---------------------------------

Codebook summary table:

----------------------------------------------------------------------------------------------
Variable                            Class         # unique    Description  
------- ----------------------------------------- ----------- --------------------------------
subjectID                           integer             30    ID of the subject in current observation

activity                            character            6    Type of activity under observation

------------   Time domain signal variables  --------------------------------------------------

ave-tBodyAcc-mean-X                 numeric            180    Average mean body acceleration in X        

ave-tBodyAcc-mean-Y                 numeric            180    Average mean body acceleration in Y       

ave-tBodyAcc-mean-Z                 numeric            180    Average mean body acceleration in Z       

ave-tBodyAcc-std-X                  numeric            180    Average std body acceleration in X

ave-tBodyAcc-std-Y                  numeric            180    Average std body acceleration in Y        

ave-tBodyAcc-std-Z                  numeric            180    Average std body acceleration in Z            
ave-tGravityAcc-mean-X              numeric            180    Average mean gravity acceleration in X             
ave-tGravityAcc-mean-Y              numeric            180    Average mean gravity acceleration in Y     

ave-tGravityAcc-mean-Z              numeric            180    Average mean gravity acceleration in Z      
ave-tGravityAcc-std-X               numeric            180    Average std gravity acceleration in X             
ave-tGravityAcc-std-Y               numeric            180    Average std gravity acceleration in Y

ave-tGravityAcc-std-Z               numeric            180    Average std gravity acceleration in Z                
ave-tBodyAccJerk-mean-X             numeric            180    Average mean body acc. jerk signal in X

ave-tBodyAccJerk-mean-Y             numeric            180    Average mean body acc. jerk signal in Y   

ave-tBodyAccJerk-mean-Z             numeric            180    Average mean body acc. jerk signal in Z   

ave-tBodyAccJerk-std-X              numeric            180    Average std body acc. jerk signal in X    

ave-tBodyAccJerk-std-Y              numeric            180    Average std body acc. jerk signal in Y

ave-tBodyAccJerk-std-Z              numeric            180    Average std body acc. jerk signal in Z               
ave-tBodyGyro-mean-X                numeric            180    Average mean body gyro signal in X        

ave-tBodyGyro-mean-Y                numeric            180    Average mean body gyro signal in Y        

ave-tBodyGyro-mean-Z                numeric            180    Average mean body gyro signal in Z        

ave-tBodyGyro-std-X                 numeric            180    Average std body gyro signal in X         

ave-tBodyGyro-std-Y                 numeric            180    Average std body gyro signal in Y 

ave-tBodyGyro-std-Z                 numeric            180    Average std body gyro signal in Z  

ave-tBodyGyroJerk-mean-X            numeric            180    Average mean gyro jerk signal in X    

ave-tBodyGyroJerk-mean-Y            numeric            180    Average mean gyro jerk signal in Y   

ave-tBodyGyroJerk-mean-Z            numeric            180    Average mean gyro jerk signal in Z   

ave-tBodyGyroJerk-std-X             numeric            180    Average std gyro jerk signal in X  

ave-tBodyGyroJerk-std-Y             numeric            180    Average std gyro jerk signal in Y  

ave-tBodyGyroJerk-std-Z             numeric            180    Average std gyro jerk signal in Z   

------   Euclidian norm magnitude of time domain signal variables ------------------------------------

ave-tBodyAccMag-mean                numeric            180    Average mean body acceleration magnitude  

ave-tBodyAccMag-std                 numeric            180    Average std body acceleration magnitude  

ave-tGravityAccMag-mean             numeric            180    Average mean gravity acceleration magnitude

ave-tGravityAccMag-std              numeric            180    Average std gravity acceleration magnitude   

ave-tBodyAccJerkMag-mean            numeric            180    Average mean body acc. jerk magnitude   

ave-tBodyAccJerkMag-std             numeric            180    Average std body acc. jerk magnitude   

ave-tBodyGyroMag-mean               numeric            180    Average mean body gyro magnitude    

ave-tBodyGyroMag-std                numeric            180    Average std body gyro magnitude  

ave-tBodyGyroJerkMag-mean           numeric            180    Average mean body gyro jerk magnitude  

ave-tBodyGyroJerkMag-std            numeric            180    Average std body gyro jerk magnitude  

-----------   Frequency domain signal variables  ---------------------------------------------------

ave-fBodyAcc-mean-X                 numeric            180    Average mean body acceleration in X    

ave-fBodyAcc-mean-Y                 numeric            180    Average mean body acceleration in Y 

ave-fBodyAcc-mean-Z                 numeric            180    Average mean body acceleration in Z 

ave-fBodyAcc-std-X                  numeric            180    Average std body acceleration in X 

ave-fBodyAcc-std-Y                  numeric            180    Average std body acceleration in Y 

ave-fBodyAcc-std-Z                  numeric            180    Average std body acceleration in Z        

ave-fBodyAcc-meanFreq-X             numeric            180    Average mean body acc. frequency in X 

ave-fBodyAcc-meanFreq-Y             numeric            180    Average mean body acc. frequency in Y   

ave-fBodyAcc-meanFreq-Z             numeric            180    Average mean body acc. frequency in Z 

ave-fBodyAccJerk-mean-X             numeric            180    Average mean body acc. jerk in X  

ave-fBodyAccJerk-mean-Y             numeric            180    Average mean body acc. jerk in Y  

ave-fBodyAccJerk-mean-Z             numeric            180    Average mean body acc. jerk in Z 

ave-fBodyAccJerk-std-X              numeric            180    Average std body acc. jerk in X  

ave-fBodyAccJerk-std-Y              numeric            180    Average std body acc. jerk in Y           

ave-fBodyAccJerk-std-Z              numeric            180    Average std body acc. jerk in Z  

ave-fBodyAccJerk-meanFreq-X         numeric            180    Average mean body acc. jerk frequency in X 

ave-fBodyAccJerk-meanFreq-Y         numeric            180    Average mean body acc. jerk frequency in Y 

ave-fBodyAccJerk-meanFreq-Z         numeric            180    Average mean body acc. jerk frequency in Z 

ave-fBodyGyro-mean-X                numeric            180    Average mean body gyro signal in X  

ave-fBodyGyro-mean-Y                numeric            180    Average mean body gyro signal in Y 

ave-fBodyGyro-mean-Z                numeric            180    Average mean body gyro signal in Z 

ave-fBodyGyro-std-X                 numeric            180    Average std body gyro signal in X 

ave-fBodyGyro-std-Y                 numeric            180    Average std body gyro signal in Y         

ave-fBodyGyro-std-Z                 numeric            180    Average std body gyro signal in Z 

ave-fBodyGyro-meanFreq-X            numeric            180    Average mean body gyro frequency in X  

ave-fBodyGyro-meanFreq-Y            numeric            180    Average mean body gyro frequency in Y     

ave-fBodyGyro-meanFreq-Z            numeric            180    Average mean body gyro frequency in Z  

------  Euclidian norm magnitude of frequency domain signal variables --------------------------------

ave-fBodyAccMag-mean                numeric            180    Average mean body acceleration magnitude 

ave-fBodyAccMag-std                 numeric            180    Average std body acceleration magnitude   

ave-fBodyAccMag-meanFreq            numeric            180    Average mean body acc. magnitude frequency 

ave-fBodyBodyAccJerkMag-mean        numeric            180    Average mean body acc. jerk magnitude  

ave-fBodyBodyAccJerkMag-std         numeric            180    Average std body acc. jerk magnitude   

ave-fBodyBodyAccJerkMag-meanFreq    numeric            180    Average mean body acc. jerk magnitude freq. 

ave-fBodyBodyGyroMag-mean           numeric            180    Average mean body gyro magnitude    

ave-fBodyBodyGyroMag-std            numeric            180    Average std body gyro magnitude 

ave-fBodyBodyGyroMag-meanFreq       numeric            180    Average mean body gyro magnitude frequency  

ave-fBodyBodyGyroJerkMag-mean       numeric            180    Average mean body gyro jerk magnitude     

ave-fBodyBodyGyroJerkMag-std        numeric            180    Average std body gyro jerk magnitude  

ave-fBodyBodyGyroJerkMag-meanFreq   numeric            180    Average mean body gyro jerk magnitude freq. 

------------------------------------------------------------------------------------------------


