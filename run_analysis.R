
# Step 1:   Preparation Step: Download and unzip the dataset.
#
#           It sets the working directory where the downloaded datasets will be downloaded from
#           the URL https: //d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

            dirwork <- ("C:/Users/SebastiãoJosé/Documents")
            setwd(dirwork)

            zippedFile <- "test_train_data.zip"
            download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",zippedFile)
            unzip(zippedFile)


# Step 2:   Prepare the Activit Label  and the Feature datasets.
#
#      2.1  Get the activity label dataset

            labelActivity <- read.table("UCI HAR Dataset/activity_labels.txt")
            colnames(labelActivity) <- c("ActId" , "ActName")

#      2.2  Get the features dataset

#           The resulting vector will have values that will serve as indexes 
#           to find their features reading train.txt and test.txt datasets

            fileFeatures <- read.table("UCI HAR Dataset/features.txt")
       
#      2.3  Get a vector of indexes for the variables: "mean" and "sdt"
 
            goalFeatures <- grep(".*mean.*|.*std.*", fileFeatures[,2])
            goalFeatures.names <- fileFeatures[goalFeatures,2]

# Step 3:   Prepare the TEST dataset to create one tidy TEST dataset.
#


#      3.1  It extracts from the dataset test.txt  only data related to measurements: "mean" and "std"
#           This step is based on the content of the goalFeatures
#           Assign the result to fileTest    

            fileTest <- read.table("UCI HAR Dataset/test/X_test.txt")[goalFeatures]
            colnames(fileTest) <- goalFeatures.names

#      3.2  Get the activity Test dataset and associate with its activit labels
          
            dataTestActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
            colnames(dataTestActivities) <- "ActId"
            lbTestActivities <- merge(dataTestActivities, labelActivity, by.x = "ActId", by.y = "ActId")
            
#      3.3  Get the Subject Test dataset 
            
            dataTestSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
            colnames(dataTestSubjects) <- "SubId"

#      3.4  Final format for the test dataset 
          
            fileTest <- cbind(dataTestSubjects, lbTestActivities, fileTest)
 
 
# Step 4:   Prepare the TRAIN dataset to create one tidy TRAIN dataset. 
#
#      4.1  It extracts from the dataset train.txt  only data related to measurements: "mean" and "std"
#           This step is based on the content of the goalFeatures
#           Assign the result to fileTrain  
  
            fileTrain <- read.table("UCI HAR Dataset/train/X_train.txt")[goalFeatures]
            colnames(fileTrain) <- goalFeatures.names

#      4.2  Get the activity Train dataset and associate with its activit labels

            dataTrainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
            colnames(dataTrainActivities) <- "ActId"
            lbTtrainActivities <- merge(dataTrainActivities, labelActivity, by.x = "ActId", by.y = "ActId")
             
#      4.3  Get the Subject Train dataset 

            dataTrainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
            colnames(dataTrainSubjects) <- "SubId"

#      4.4  Final format for the train dataset 
            
            fileTrain <- cbind(dataTrainSubjects, lbTtrainActivities, fileTrain)

# Step 5:   Prepare the Product tidy dataset 
#
#      5.1  Join the datasets fileTrain and fileTest already filtered with measures "mean" and "std"

            fileProduct <- rbind(fileTrain, fileTest)
     

#      5.2  Generate de final Product Tidy Dataset ("TestTrainTidy.txt") 

            write.table(fileProduct, "TestTrainTidy.txt", row.names = FALSE, quote = FALSE)


