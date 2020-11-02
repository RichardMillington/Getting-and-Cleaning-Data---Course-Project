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
