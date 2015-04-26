##Code Book##
for Getting-CleaningDataProject

Subject
  1 to 30 Number represents specific individual subject for such activity & activity_variables
  
Activity
   WALKING
   WALKING_UPSTAIRS
   WALKING_DOWNSTAIRS
   SITTING
   STANDING
   LAYING
     The activity represents the specific activity that the subject was performing during the test and training data collections.

activity_variables
  Mean of Body Accelleration in X direction by time
  Mean of Body Accelleration in y direction bY time
  Mean of Body Accelleration in Z direction by time
  Standard Deviation of Body Accelleration in X direction by time
  Standard Deviation of Body Accelleration in Y direction by time
  Standard Deviation of Body Accelleration in Z direction by time
  Mean of Gravity Accelleration in X direction by time
  Mean of Gravity Accelleration in y direction bY time
  Mean of Gravity Accelleration in Z direction by time
  Standard Deviation of Gravity Accelleration in X direction by time
  Standard Deviation of Gravity Accelleration in Y direction by time
  Standard Deviation of Gravity Accelleration in Z direction by time
  Mean of Body Jerk Accelleration in X direction by time
  Mean of Body Jerk Accelleration in y direction bY time
  Mean of Body Jerk Accelleration in Z direction by time
  Standard Deviation of Body Jerk Accelleration in X direction by time
  Standard Deviation of Body Jerk Accelleration in Y direction by time
  Standard Deviation of Body Jerk Accelleration in Z direction by time
  Mean of Body Gyroscope in X direction by time
  Mean of Body Gyroscope in y direction bY time
  Mean of Body Gyroscope in Z direction by time
  Standard Deviation of Body Gyroscope in X direction by time
  Standard Deviation of Body Gyroscope in Y direction by time2
  Standard Deviation of Body Gyroscope in Z direction by time
  Mean of Body Gyroscope Jerk in X direction by time
  Mean of Body Gyroscope Jerk in y direction bY time
  Mean of Body Gyroscope Jerk in Z direction by time
  Standard Deviation of Body Gyroscope Jerk in X direction by time
  Standard Deviation of Body Gyroscope Jerk in Y direction by time
  Standard Deviation of Body Gyroscope Jerk in Z direction by time
  Mean of Body Accelleration Mag by time
  Standard Deviation of Body Accelleration by time
  Mean of Gravity Accelleration by time
  Standard Deviation of Gravity Acceleration by time
  Mean of Body Jerk Mag by time
  Standard Deviation of Body Jerk Mag by time
  Mean of Body Gyroscope Mag by time
  Standard Deviation of Body Gyroscope Mag by time
  Mean of Body Gyroscope Jerk by time
  Standard Deviation of Body Gyroscope Jerk by time
  Mean of Body Accelleration in X direction by Fourier
  Mean of Body Acceleration in y direction bY Fourier
  Mean of Body Accelleration in Z direction by Fourier
  Standard Deviation of Body Accelleration in X direction by Fourier
  Standard Deviation of Body Accelleration in Y direction by Fourier
  Standard Deviation of Body Accelleration in Z direction by Fourier
  Mean of Body Accelleration Jerk in X direction by Fourier
  Mean of Body Acceleration Jerk in y direction bY Fourier
  Mean of Body Accelleration Jerk in Z direction by Fourier
  Standard Deviation of Body Accelleration Jerk in X direction by Fourier
  Standard Deviation of Body Accelleration Jerk in Y direction by Fourier
  Standard Deviation of Body Accelleration Jerk in Z direction by Fourier
  Mean of Body Gyroscope in X direction by Fourier
  Mean of Body Gyroscope in y direction bY Fourier
  Mean of Body Gyroscope in Z direction by Fourier
  Standard Deviation of Body Gyroscope in X direction by Fourier
  Standard Deviation of Body Gyroscope in Y direction by Fourier
  Standard Deviation of Body Gyroscope in Z direction by Fourier
  Mean of Body Accelleration Mag by Fourier
  Standard Deviation of Body Accelleration Mag by Fourier
  Mean of Body Accelleration jerk Mag by Fourier
  Standard Deviation of Body Accelleration Jerk Mag by Fourier
  Mean of Body Gyroscope Mag by Fourier
  Standard Deviation of Body Gyroscope Mag by Fourier
  Mean of Body Gyroscope Jerk by Fourier
  Standard Deviation of Body Gyroscope Jerk by Fourier
    Mag stands for Magnitude
    Fourier stands for Fast Fourier Transform.
    These items represent the different measurement activities recorded by the wearable computer for each activity for each      subject

mean
  This is the average meansurement of for each activitity_variable for each Activity for each Subject that was recorded by the wearable computer

This data was collected from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The X_test and X_train text files were combined and the activity and subject for each train and test set was
also combined to make the dataset. The data was transformed to be a narrow data set with the different measurement calculations in the original dataset
to be instead represented by the measurement type (activity_variables) for each Activity and Subject. The mean of each measurement for each specific
Subject, Activity, and activity_variables was then calculated and the data set was converted to show only the mean calculated.
