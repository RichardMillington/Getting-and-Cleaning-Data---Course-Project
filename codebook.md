# Data report overview
This dataset  has the following dimensions:

---------------------------------
Feature                    Result
------------------------ --------
Number of observations        180

Number of variables            81
---------------------------------

# Transformations

Several transformations have been applied to the original source data. 

Source Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

1) Columns identifying the subject performing each action have been added using the `cbind` function. 

2) Activity names have replaced identifying numbers. 

3) Test data and train data has been combined using the `rbind` function.

4) Descriptive activity labels have been added using the `gsub` function. 

5) Columns containing 'mean' and 'standard deviation' of each variable have been extracted using the `grepl` function. 

6) The data was melted using `melt` function into a narrow dataset. 

7) A new dataset was created using `dcast` which created an average for each variable by subject and activity. 

8) The data was written to a text file using `write.table`.


# Codebook summary table

--------------------------------------------------------------------------------------------------------------------------
Label   Variable                                                            Class         # unique  Missing    
                                                                                            values                        
------- ------------------------------------------------------------------- ----------- ---------- --------- 
        **[subject]**                                                       integer             30  0.00 %                

        **[activity]**                                                      character            6  0.00 %                

        **[timeBodyAccelerometer-mean-X]**                                  numeric            180  0.00 %                

        **[timeBodyAccelerometer-mean-Y]**                                  numeric            180  0.00 %                

        **[timeBodyAccelerometer-mean-Z]**                                  numeric            180  0.00 %                

        **[timeBodyAccelerometer-standard-deviation-X]**                    numeric            180  0.00 %                

        **[timeBodyAccelerometer-standard-deviation-Y]**                    numeric            180  0.00 %                

        **[timeBodyAccelerometer-standard-deviation-Z]**                    numeric            180  0.00 %                

        **[timeGravityAccelerometer-mean-X]**                               numeric            180  0.00 %                

        **[timeGravityAccelerometer-mean-Y]**                               numeric            180  0.00 %                

        **[timeGravityAccelerometer-mean-Z]**                               numeric            180  0.00 %                

        **[timeGravityAccelerometer-standard-deviation-X]**                 numeric            180  0.00 %                

        **[timeGravityAccelerometer-standard-deviation-Y]**                 numeric            180  0.00 %                

        **[timeGravityAccelerometer-standard-deviation-Z]**                 numeric            180  0.00 %                

        **[timeBodyAccelerometerJerk-mean-X]**                              numeric            180  0.00 %                

        **[timeBodyAccelerometerJerk-mean-Y]**                              numeric            180  0.00 %                

        **[timeBodyAccelerometerJerk-mean-Z]**                              numeric            180  0.00 %                

        **[timeBodyAccelerometerJerk-standard-deviation-X]**                numeric            180  0.00 %                

        **[timeBodyAccelerometerJerk-standard-deviation-Y]**                numeric            180  0.00 %                

        **[timeBodyAccelerometerJerk-standard-deviation-Z]**                numeric            180  0.00 %                

        **[timeBodyGyroscope-mean-X]**                                      numeric            180  0.00 %                

        **[timeBodyGyroscope-mean-Y]**                                      numeric            180  0.00 %                

        **[timeBodyGyroscope-mean-Z]**                                      numeric            180  0.00 %                

        **[timeBodyGyroscope-standard-deviation-X]**                        numeric            180  0.00 %                

        **[timeBodyGyroscope-standard-deviation-Y]**                        numeric            180  0.00 %                

        **[timeBodyGyroscope-standard-deviation-Z]**                        numeric            180  0.00 %                

        **[timeBodyGyroscopeJerk-mean-X]**                                  numeric            180  0.00 %                

        **[timeBodyGyroscopeJerk-mean-Y]**                                  numeric            180  0.00 %                

        **[timeBodyGyroscopeJerk-mean-Z]**                                  numeric            180  0.00 %                

        **[timeBodyGyroscopeJerk-standard-deviation-X]**                    numeric            180  0.00 %                

        **[timeBodyGyroscopeJerk-standard-deviation-Y]**                    numeric            180  0.00 %                

        **[timeBodyGyroscopeJerk-standard-deviation-Z]**                    numeric            180  0.00 %                

        **[timeBodyAccelerometerMagnitude-mean]**                           numeric            180  0.00 %                

        **[timeBodyAccelerometerMagnitude-standard-deviation]**             numeric            180  0.00 %                

        **[timeGravityAccelerometerMagnitude-mean]**                        numeric            180  0.00 %                

        **[timeGravityAccelerometerMagnitude-standard-deviation]**          numeric            180  0.00 %                

        **[timeBodyAccelerometerJerkMagnitude-mean]**                       numeric            180  0.00 %                

        **[timeBodyAccelerometerJerkMagnitude-standard-deviation]**         numeric            180  0.00 %                

        **[timeBodyGyroscopeMagnitude-mean]**                               numeric            180  0.00 %                

        **[timeBodyGyroscopeMagnitude-standard-deviation]**                 numeric            180  0.00 %                

        **[timeBodyGyroscopeJerkMagnitude-mean]**                           numeric            180  0.00 %                

        **[timeBodyGyroscopeJerkMagnitude-standard-deviation]**             numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-mean-X]**                            numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-mean-Y]**                            numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-mean-Z]**                            numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-standard-deviation-X]**              numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-standard-deviation-Y]**              numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-standard-deviation-Z]**              numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-meanFreq-X]**                        numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-meanFreq-Y]**                        numeric            180  0.00 %                

        **[frequency.BodyAccelerometer-meanFreq-Z]**                        numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-mean-X]**                        numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-mean-Y]**                        numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-mean-Z]**                        numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-standard-deviation-X]**          numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-standard-deviation-Y]**          numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-standard-deviation-Z]**          numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-meanFreq-X]**                    numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-meanFreq-Y]**                    numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerk-meanFreq-Z]**                    numeric            180  0.00 %                

        **[frequency.BodyGyroscope-mean-X]**                                numeric            180  0.00 %                

        **[frequency.BodyGyroscope-mean-Y]**                                numeric            180  0.00 %                

        **[frequency.BodyGyroscope-mean-Z]**                                numeric            180  0.00 %                

        **[frequency.BodyGyroscope-standard-deviation-X]**                  numeric            180  0.00 %                

        **[frequency.BodyGyroscope-standard-deviation-Y]**                  numeric            180  0.00 %                

        **[frequency.BodyGyroscope-standard-deviation-Z]**                  numeric            180  0.00 %                

        **[frequency.BodyGyroscope-meanFreq-X]**                            numeric            180  0.00 %                

        **[frequency.BodyGyroscope-meanFreq-Y]**                            numeric            180  0.00 %                

        **[frequency.BodyGyroscope-meanFreq-Z]**                            numeric            180  0.00 %                

        **[frequency.BodyAccelerometerMagnitude-mean]**                     numeric            180  0.00 %                

        **[frequency.BodyAccelerometerMagnitude-standard-deviation]**       numeric            180  0.00 %                

        **[frequency.BodyAccelerometerMagnitude-meanFreq]**                 numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerkMagnitude-mean]**                 numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerkMagnitude-standard-deviation]**   numeric            180  0.00 %                

        **[frequency.BodyAccelerometerJerkMagnitude-meanFreq]**             numeric            180  0.00 %                

        **[frequency.BodyGyroscopeMagnitude-mean]**                         numeric            180  0.00 %                

        **[frequency.BodyGyroscopeMagnitude-standard-deviation]**           numeric            180  0.00 %                

        **[frequency.BodyGyroscopeMagnitude-meanFreq]**                     numeric            180  0.00 %                

        **[frequency.BodyGyroscopeJerkMagnitude-mean]**                     numeric            180  0.00 %                

        **[frequency.BodyGyroscopeJerkMagnitude-standard-deviation]**       numeric            180  0.00 %                

        **[frequency.BodyGyroscopeJerkMagnitude-meanFreq]**                 numeric            180  0.00 %                
--------------------------------------------------------------------------------------------------------------------------




# Variable list
## subject

The subject performing the activity. Numbers range from 1 to 30. 


\fullline

## activity

The activity variable contains 6 levels representing the activities subjects performed. 

-----------------------
Factor Levels               
-----------------------
LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS
-------------------------------------


# Additional Information

## subject

The subject performing the activity. 

Each number represents a single subject. Numbers range from 1 to 30. 
