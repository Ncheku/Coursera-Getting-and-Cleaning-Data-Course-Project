The purpose of this project is to demonstrate your ability to collect, 
work with, and clean a data set.

The experiments have been carried out with a group of 30 volunteers within 
an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 
3-axial angular velocity at a constant rate of 50Hz. 

The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training 
data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by 
applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration 
signal, which has gravitational and body motion components, was separated 
using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time 
and frequency domain.

The input zipped datasets include the following files:
=====================================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for 
   each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone 
   accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. 
   The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' 
   files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by 
   subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by 
   the gyroscope for each window sample. The units are radians/second. 



Follow the steps and tasks performed for generating the tidy dataset

 Step 1:   Preparation Step: Download and unzip the dataset.

           It sets the working directory where the downloaded datasets will be downloaded from
           the URL https: //d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 Step 2:   Prepare the Activit Label  and the Feature datasets.

      2.1  Get the activity label dataset

      2.2  Get the features dataset

           The resulting vector will have values that will serve as indexes 
           to find their features reading train.txt and test.txt datasets

      2.3  Get a vector of indexes for the variables: "mean" and "sdt"
 
 Step 3:   Prepare the TEST dataset to create one tidy TEST dataset.

      3.1  It extracts from the dataset test.txt  only data related to measurements: "mean" and "std"
           This step is based on the content of the goalFeatures
           Assign the result to fileTest    

      3.2  Get the activity Test dataset and associate with its activit labels
               
      3.3  Get the Subject Test dataset 
      
      3.4  Final format for the test dataset 
           
 
 Step 4:   Prepare the TRAIN dataset to create one tidy TRAIN dataset. 

      4.1  It extracts from the dataset train.txt  only data related to measurements: "mean" and "std"
           This step is based on the content of the goalFeatures
           Assign the result to fileTrain  
  
      4.2  Get the activity Train dataset and associate with its activit labels
             
      4.3  Get the Subject Train dataset 

      4.4  Final format for the train dataset 
     
 Step 5:   Prepare the Product tidy dataset 

      5.1  Join the datasets fileTrain and fileTest already filtered with measures "mean" and "std"
 
      5.2  Generate de final Product Tidy Dataset ("TestTrainTidy.txt") 

           
