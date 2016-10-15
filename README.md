The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

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

The R script is in the dataset: run_analysis.R

# Coursera-Getting-and-Cleaning-Data-Course-Project
