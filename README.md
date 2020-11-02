# README

==================================================================
**Tidy Data Set Based Upon The Human Activity Recognition Using Smartphones Dataset**

**Getting and Cleaning Data - Course Project**

Richard Millington, 
October, 2020
==================================================================

# Summary

This project includes four files:

1) The `run_analysis.R` script. This transforms the data into a tidy dataset. 
2) The `tidydata.txt` dataset. This shows the average of each variable by activity and subject. 
3) The `codebook.md` file. This is a description of each variable and the transformations performed upon them. 
4) The `readme.md` file. This is the explanatory document. 

# Explanation of `run_analysis.R`. 

The script processes the data as follows:

1) Downloads and unzips the data Human Activity Recognition Using Smartphones dataset into a local directory. 

2) Creates `x.test` , `x.train`, `y.test`, `y.train`, `features`, `activity.labels`, `subject.test`, and `subject.train`

3) Uses the labels provided within `features` to rename the columns within `x.train` and `x.test`.

4) Adds the subject ID provided within `subject.test` and `subject.train` to the `x.train` and `x.test` data. Also adds the activity each subject was performing to both data frames. The two dataframes are then combined into a new dataset called `merged.data`.

5) Moves the subject and activity columns in `merged.data` to the front and renames them respectively. 

6) Extracts the subject, activity, and any columns containing `mean` and `standard deviations` into a new dataset called `new.data`

7) Replaces the numberic activity IDs with the activity names provided within `activity.labels`.

8) Cleans up the names of columns to be more descriptive of each variable. 

9) Melts the data into a narrow set called `data.melt`. This combines all the variables (except for subject / activity into a single dataset). 

10) Creates a new dataset called `data.cast` which averages each variable by activity and subject.

11) Writes this dataset to a new file called `tidydata.txt`

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
