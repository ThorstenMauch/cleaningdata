#Codebook


###Orginal Data
All transformations where performed on this datasource:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Further information about collection of the raw data are found *features_info.txt* inside the linked zip archive

## Data Rrocessing

###Merging data
Subject ids and activity where merged the training and the test date. Activity was converted to factors
Test and training data merged to obtain a single data Frame. 

###Variables relabeled
Variables was given more human friendly names

###Extract mean and standard deviation variables
The variables with estimated mean and standard deviation was extracted

###Aggregate Data
The mean of means and standard deviations variables was calculated, grouped by SubjectID and activity 


|Col.|Variable|Datatype|Description|Factors
|---|----------|:-------------:|-------------------------:|--------------:|
| 1 | SubjectID | numeric |  **Grouping variable**<br>ID of the subject who carried out the activity <br> | |
| 2 | Activity | factor |  **Grouping variable**<br>Activity performed <br> | Laying<br>Sitting<br>Standing<br>Walking<br>Walking Downstairs<br>Walking Upstairs |
| 3 | Time.BodyAcc.Mean.X | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*)  X-axis <br> | |
| 4 | Time.BodyAcc.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*)  Y-axis <br> | |
| 5 | Time.BodyAcc.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*)  Z-axis <br> | |
| 6 | Time.BodyAcc.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*)  X-axis <br> | |
| 7 | Time.BodyAcc.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*)  Y-axis <br> | |
| 8 | Time.BodyAcc.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*)  Z-axis <br> | |
| 9 | Time.GravityAcc.Mean.X | numeric |  **aggregate value** Mean of the means<br> Time  Acceleration (unit: *g*) Jerk   X-axis <br> | |
| 10 | Time.GravityAcc.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Time  Acceleration (unit: *g*) Jerk   Y-axis <br> | |
| 11 | Time.GravityAcc.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Time  Acceleration (unit: *g*) Jerk   Z-axis <br> | |
| 12 | Time.GravityAcc.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Acceleration (unit: *g*) Jerk   X-axis <br> | |
| 13 | Time.GravityAcc.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Acceleration (unit: *g*) Jerk   Y-axis <br> | |
| 14 | Time.GravityAcc.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Acceleration (unit: *g*) Jerk   Z-axis <br> | |
| 15 | Time.BodyAccJerk.Mean.X | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*) Jerk   X-axis <br> | |
| 16 | Time.BodyAccJerk.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*) Jerk   Y-axis <br> | |
| 17 | Time.BodyAccJerk.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*) Jerk   Z-axis <br> | |
| 18 | Time.BodyAccJerk.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*) Jerk   X-axis <br> | |
| 19 | Time.BodyAccJerk.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*) Jerk   Y-axis <br> | |
| 20 | Time.BodyAccJerk.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*) Jerk   Z-axis <br> | |
| 21 | Time.BodyGyro.Mean.X | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*)  X-axis <br> | |
| 22 | Time.BodyGyro.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*)  Y-axis <br> | |
| 23 | Time.BodyGyro.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*)  Z-axis <br> | |
| 24 | Time.BodyGyro.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*)  X-axis <br> | |
| 25 | Time.BodyGyro.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*)  Y-axis <br> | |
| 26 | Time.BodyGyro.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*)  Z-axis <br> | |
| 27 | Time.BodyGyroJerk.Mean.X | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   X-axis <br> | |
| 28 | Time.BodyGyroJerk.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   Y-axis <br> | |
| 29 | Time.BodyGyroJerk.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   Z-axis <br> | |
| 30 | Time.BodyGyroJerk.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   X-axis <br> | |
| 31 | Time.BodyGyroJerk.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   Y-axis <br> | |
| 32 | Time.BodyGyroJerk.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   Z-axis <br> | |
| 33 | Time.BodyAccMag.Mean | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*)  Magnitude of 3-dimensional Signals  <br> | |
| 34 | Time.BodyAccMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*)  Magnitude of 3-dimensional Signals  <br> | |
| 35 | Time.GravityAccMag.Mean | numeric |  **aggregate value** Mean of the means<br> Time  Acceleration (unit: *g*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 36 | Time.GravityAccMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Acceleration (unit: *g*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 37 | Time.BodyAccJerkMag.Mean | numeric |  **aggregate value** Mean of the means<br> Time  Body  Acceleration (unit: *g*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 38 | Time.BodyAccJerkMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  Acceleration (unit: *g*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 39 | Time.BodyGyroMag.Mean | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*)  Magnitude of 3-dimensional Signals  <br> | |
| 40 | Time.BodyGyroMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*)  Magnitude of 3-dimensional Signals  <br> | |
| 41 | Time.BodyGyroJerkMag.Mean | numeric |  **aggregate value** Mean of the means<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 42 | Time.BodyGyroJerkMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Time  Body  angular velocity (unit: *radians/second*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 43 | Frequency.BodyAcc.Mean.X | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*)  X-axis <br> | |
| 44 | Frequency.BodyAcc.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*)  Y-axis <br> | |
| 45 | Frequency.BodyAcc.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*)  Z-axis <br> | |
| 46 | Frequency.BodyAcc.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*)  X-axis <br> | |
| 47 | Frequency.BodyAcc.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*)  Y-axis <br> | |
| 48 | Frequency.BodyAcc.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*)  Z-axis <br> | |
| 49 | Frequency.BodyAccJerk.Mean.X | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*) Jerk   X-axis <br> | |
| 50 | Frequency.BodyAccJerk.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*) Jerk   Y-axis <br> | |
| 51 | Frequency.BodyAccJerk.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*) Jerk   Z-axis <br> | |
| 52 | Frequency.BodyAccJerk.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*) Jerk   X-axis <br> | |
| 53 | Frequency.BodyAccJerk.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*) Jerk   Y-axis <br> | |
| 54 | Frequency.BodyAccJerk.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*) Jerk   Z-axis <br> | |
| 55 | Frequency.BodyGyro.Mean.X | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  angular velocity (unit: *radians/second*)  X-axis <br> | |
| 56 | Frequency.BodyGyro.Mean.Y | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  angular velocity (unit: *radians/second*)  Y-axis <br> | |
| 57 | Frequency.BodyGyro.Mean.Z | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  angular velocity (unit: *radians/second*)  Z-axis <br> | |
| 58 | Frequency.BodyGyro.Standard.deviation.X | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  angular velocity (unit: *radians/second*)  X-axis <br> | |
| 59 | Frequency.BodyGyro.Standard.deviation.Y | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  angular velocity (unit: *radians/second*)  Y-axis <br> | |
| 60 | Frequency.BodyGyro.Standard.deviation.Z | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  angular velocity (unit: *radians/second*)  Z-axis <br> | |
| 61 | Frequency.BodyAccMag.Mean | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*)  Magnitude of 3-dimensional Signals  <br> | |
| 62 | Frequency.BodyAccMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*)  Magnitude of 3-dimensional Signals  <br> | |
| 63 | Frequency.BodyBodyAccJerkMag.Mean | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  Acceleration (unit: *g*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 64 | Frequency.BodyBodyAccJerkMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  Acceleration (unit: *g*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 65 | Frequency.BodyBodyGyroMag.Mean | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  angular velocity (unit: *radians/second*)  Magnitude of 3-dimensional Signals  <br> | |
| 66 | Frequency.BodyBodyGyroMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  angular velocity (unit: *radians/second*)  Magnitude of 3-dimensional Signals  <br> | |
| 67 | Frequency.BodyBodyGyroJerkMag.Mean | numeric |  **aggregate value** Mean of the means<br> Frequency  Body  angular velocity (unit: *radians/second*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
| 68 | Frequency.BodyBodyGyroJerkMag.Standard.deviation | numeric |  **aggregate value**  mean of the standard deviations<br> Frequency  Body  angular velocity (unit: *radians/second*) Jerk   Magnitude of 3-dimensional Signals  <br> | |
