#Steps  to transform the initial raw data 

##Unpack Data
Unszip the original data in your *working directory*
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Leave the folder structure intact.



## Data Rorcessing
Call the function mainanalysis() from the script  run_analysis.R
needed libraries *reshape2, dplyr*


##Data Output
The processed dast is from on the file *tidydata.txt*
A description of all variables is found in *codebook.md*



# Waht does the script makes ?

##Merging data
Subject ids and activity where merged the training and the test date. Activity was converted to factors
Test and training data merged to obtain a single data Frame. 

###Variables relabeled
Variables was given more human friendly names

###Extract mean and standard deviation variables
The variables with estimated mean and standard deviation was extracted

###Aggregate Data
The mean of means and standard deviations variables was calculated, grouped by SubjectID and activity 




