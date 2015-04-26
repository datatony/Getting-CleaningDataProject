# Getting-CleaningDataProject
Getting &amp; Cleaning Data Project
 
The data for this project was found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
  
The data stands represents measurements taken from a wearable computer while Subjects were performing various Activities.
There are both test and training data. Both the test and training data was combined to make this project.
  
First, the X_test and X_train data was combined into one file. The column names from the features.txt data was then used to replace the column names in the new dataset. From there, the dataset was subsetted for only the mean (mean()) and Standard Deviation (std()) columns. 
  
The activity data for the test and training data was then combined into one file and then that file was included as a new column on the dataset created above. (Since no rows of the dataset had been rearranged in any way, the activity data and the above dataset were still in the appropriate order for combination.)
  
The values in the activity column in the dataset were then labeled as the appropriate value from the activity_lables.txt file. (i.e. 1 = WALKING, 6 = LAYING) such the dataset was now more descriptive with the appropriate activity (i.e. WALKING, LAYING)
  
The subject data for both the test and training data was combined into one file and then the file was included as a new column on the dataset created above. (Since no rows of the dataset had been rearranged in any way, the activity data and the above dataset were still in the appropriate order for combination.)
  
The columns of the dataset were then renamed to be more descriptive than the names of the dataset up to this point. The column names were down as a string with spaces as this data will be tranformed into a narrow dataset which will allow each variable to be read more easily later on.
  
The dataset was then converted into a narrow dataset with the following columns. The Subject and Activity columns were preserved, the other column names became variables for a single column called acticity_variables with the appropriate value being placed a new column called averages.
  
The mean of the averages column was then calculated for each distinct Subject, Activity, and activity_variables. The dataset then became a data set of four columns (Subject, Activity, activity_variables, and mean). The subject column was for each individual subject used in the original data collection. The Activity column provides the descriptive activity that subject was performing during the collection. The activity_variables column provides a description of the measurement for the Activity and Subject being performed. And the mean column calculates the average of the specific measurement in the activity_variables column for such specific Activity for such specific Subject.
