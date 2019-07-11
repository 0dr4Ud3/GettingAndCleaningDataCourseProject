
 # CodeBook

This codebook refers to the information collected in the file "tidydata.txt".


Summary of the study:

Accelerometer and Gyroscope measurements during 6 activities obtained from 30 volunteers (70% training data // 30% test data). 

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.*

### Dataset information:
#### IDENTIFYING VARIABLES
- ID: individual under study
- GRP: grouping variable identifying whether the individual belonged to the test data or the training data. (TEST, TRAIN)
- ACT: categorical variable identifying the activity performed during the measurement period. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

#### MEASUREMENT VARIABLES
The measurement variable names were constructed as follows: (**t**: time domain; **f**: frequency domain; **BodyAcc**: body linear acceleration (units g); **GravityAcc**: gravity acceleration (units g); **BodyGyro**: Body angular velocity (units radians/second); **Jerk**: signals derived in time to obtain Jerk signals; **Mag**: magnitude of the three-dimensional signals calculated using Euclidean norm, **MU**: mean values; **SD**: standard deviation; **X**: x axis; **Y**: y axis; **Z**: z axis)

Below, they are listed the complete set of variable included in the dataset.

- tBodyAcc_MU_X
- tBodyAcc_MU_Y
- tBodyAcc_MU_Z 
- tGravityAcc_MU_X 
- tGravityAcc_MU_Y 
- tGravityAcc_MU_Z
- tBodyAccJerk_MU_X 
- tBodyAccJerk_MU_Y 
- tBodyAccJerk_MU_Z   
- tBodyGyro_MU_X
- tBodyGyro_MU_Y
- tBodyGyro_MU_Z
- tBodyGyroJerk_MU_X
- tBodyGyroJerk_MU_Y
- tBodyGyroJerk_MU_Z
- tBodyAccMag_MU
- tGravityAccMag_MU
- tBodyAccJerkMag_MU     
- tBodyGyroMag_MU
- tBodyGyroJerkMag_MU
- fBodyAcc_MU_X
- fBodyAcc_MU_Y
- fBodyAcc_MU_Z
- fBodyAccJerk_MU_X
- fBodyAccJerk_MU_Y
- fBodyAccJerk_MU_Z
- fBodyGyro_MU_X         
- fBodyGyro_MU_Y
- fBodyGyro_MU_Z
- fBodyAccMag_MU
- fBodyBodyAccJerkMag_MU
- fBodyBodyGyroMag_MU
- fBodyBodyGyroJerkMag_MU
- tBodyAcc_SD_X
- tBodyAcc_SD_Y
- tBodyAcc_SD_Z
- tGravityAcc_SD_X
- tGravityAcc_SD_Y
- tGravityAcc_SD_Z
- tBodyAccJerk_SD_X
- tBodyAccJerk_SD_Y
- tBodyAccJerk_SD_Z
- tBodyGyro_SD_X
- tBodyGyro_SD_Y
- tBodyGyro_SD_Z  
- tBodyGyroJerk_SD_X
- tBodyGyroJerk_SD_Y
- tBodyGyroJerk_SD_Z
- tBodyAccMag_SD
- tGravityAccMag_SD
- tBodyAccJerkMag_SD
- tBodyGyroMag_SD
- tBodyGyroJerkMag_SD
- fBodyAcc_SD_X
- fBodyAcc_SD_Y
- fBodyAcc_SD_Z
- fBodyAccJerk_SD_X
- fBodyAccJerk_SD_Y
- fBodyAccJerk_SD_Z
- fBodyGyro_SD_X
- fBodyGyro_SD_Y
- fBodyGyro_SD_Z
- fBodyAccMag_SD
- fBodyBodyAccJerkMag_SD
- fBodyBodyGyroMag_SD
- fBodyBodyGyroJerkMag_SD
