Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time.BodyAccJerk.XYZ and Time.BodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time.BodyAccMag, Time.GravityAccMag, Time.BodyAccJerkMag, Time.BodyGyroMag, Time.BodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Freq.BodyAcc.XYZ, Freq.BodyAccJerk.XYZ, Freq.BodyGyro.XYZ, Freq.BodyAccJerkMag, Freq.BodyGyroMag, Freq.BodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Time.BodyAcc.XYZ
Time.GravityAcc.XYZ
Time.BodyAccJerk.XYZ
Time.BodyGyro.XYZ
Time.BodyGyroJerk.XYZ
Time.BodyAccMag
Time.GravityAccMag
Time.BodyAccJerkMag
Time.BodyGyroMag
Time.BodyGyroJerkMag
Freq.BodyAcc.XYZ
Freq.BodyAccJerk.XYZ
Freq.BodyGyro.XYZ
Freq.BodyAccMag
Freq.BodyAccJerkMag
Freq.BodyGyroMag
Freq.BodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Complete list of Variables:

"Subject"                       "Activity"                      "Time.BodyAcc.mean.X"          
"Time.BodyAcc.mean.Y"           "Time.BodyAcc.mean.Z"           "Time.BodyAcc.std.X"           
"Time.BodyAcc.std.Y"            "Time.BodyAcc.std.Z"            "Time.GravityAcc.mean.X"       
"Time.GravityAcc.mean.Y"        "Time.GravityAcc.mean.Z"        "Time.GravityAcc.std.X"        
"Time.GravityAcc.std.Y"         "Time.GravityAcc.std.Z"         "Time.BodyAccJerk.mean.X"      
"Time.BodyAccJerk.mean.Y"       "Time.BodyAccJerk.mean.Z"       "Time.BodyAccJerk.std.X"       
"Time.BodyAccJerk.std.Y"        "Time.BodyAccJerk.std.Z"        "Time.BodyGyro.mean.X"         
"Time.BodyGyro.mean.Y"          "Time.BodyGyro.mean.Z"          "Time.BodyGyro.std.X"          
"Time.BodyGyro.std.Y"           "Time.BodyGyro.std.Z"           "Time.BodyGyroJerk.mean.X"     
"Time.BodyGyroJerk.mean.Y"      "Time.BodyGyroJerk.mean.Z"      "Time.BodyGyroJerk.std.X"      
"Time.BodyGyroJerk.std.Y"       "Time.BodyGyroJerk.std.Z"       "Time.BodyAccMag.mean"         
"Time.BodyAccMag.std"           "Time.GravityAccMag.mean"       "Time.GravityAccMag.std"       
"Time.BodyAccJerkMag.mean"      "Time.BodyAccJerkMag.std"       "Time.BodyGyroMag.mean"        
"Time.BodyGyroMag.std"          "Time.BodyGyroJerkMag.mean"     "Time.BodyGyroJerkMag.std"     
"Freq.BodyAcc.mean.X"           "Freq.BodyAcc.mean.Y"           "Freq.BodyAcc.mean.Z"          
"Freq.BodyAcc.std.X"            "Freq.BodyAcc.std.Y"            "Freq.BodyAcc.std.Z"           
"Freq.BodyAccJerk.mean.X"       "Freq.BodyAccJerk.mean.Y"       "Freq.BodyAccJerk.mean.Z"      
"Freq.BodyAccJerk.std.X"        "Freq.BodyAccJerk.std.Y"        "Freq.BodyAccJerk.std.Z"       
"Freq.BodyGyro.mean.X"          "Freq.BodyGyro.mean.Y"          "Freq.BodyGyro.mean.Z"         
"Freq.BodyGyro.std.X"           "Freq.BodyGyro.std.Y"           "Freq.BodyGyro.std.Z"          
"Freq.BodyAccMag.mean"          "Freq.BodyAccMag.std"           "Freq.BodyBodyAccJerkMag.mean" 
"Freq.BodyBodyAccJerkMag.std"   "Freq.BodyBodyGyroMag.mean"     "Freq.BodyBodyGyroMag.std"     
"Freq.BodyBodyGyroJerkMag.mean" "Freq.BodyBodyGyroJerkMag.std" 