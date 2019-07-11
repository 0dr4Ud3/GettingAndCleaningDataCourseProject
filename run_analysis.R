###----------------------------------------------------------###
### GETTING AND CLEANING DATA COURSE PROJECT - R SCRIPT      ###
###----------------------------------------------------------###

# Loading required packages
library(dplyr)
library(reshape2)
library(stringr)

# Unzip the downloaded file and set working directory to the folder where the raw data is stored
unzip("getdata_projectfiles_UCI HAR Dataset.zip")
setwd("~/UCI HAR Dataset")

# Reading files for the test dataset
y_test<-read.table("test/y_test.txt")
X_test<-read.table("test/X_test.txt")
xy_test<-cbind(y_test,X_test)
subject_test<-read.table("test/subject_test.txt")
xy_test<-cbind(subject_test,xy_test)

# Reading files for the train dataset
y_train<-read.table("train/y_train.txt")
X_train<-read.table("train/X_train.txt")
xy_train<-cbind(y_train,X_train)
subject_train<-read.table("train/subject_train.txt")
xy_train<-cbind(subject_train,xy_train)

# Read the txt file with the activity identifier
act_lab<-read.table("activity_labels.txt")

# Read the txt file with the name of the variables
feat<-read.table("features.txt")

# Assign descriptive names to the variables
colnames(xy_test)<-c("ID","ACT",as.character(feat[,2]))
colnames(xy_train)<-c("ID","ACT",as.character(feat[,2]))

# New variable "GRP" to group all subjects from each dataset (test, train)
xy_test$GRP<-1
xy_train$GRP<-0

# Merge train and test datasets into one single dataset "dat4"
dat4<-rbind(xy_train , xy_test)

# Identify variable names for the mean and std of the measured variables
means<-grep("mean()",colnames(dat4),fixed = T)
stds<-grep("std",colnames(dat4))

# Update dat4 with only the variables of mean and standard deviation
dat4<-dat4[,c("GRP","ID","ACT",colnames(dat4[,c(means,stds)]))]

# Provide more user friendly names to the variables
colnames(dat4)<-str_replace_all(colnames(dat4),"[-]","_")
colnames(dat4)<-str_remove_all(colnames(dat4),"[()]")
colnames(dat4)<-str_replace_all(colnames(dat4),"mean","MU")
colnames(dat4)<-str_replace_all(colnames(dat4),"std","SD")

# Assign descriptive names to the activity levels and to the GRP identifier
dat4$ACT<-factor(dat4$ACT,labels = act_lab[,2])
dat4$GRP<-factor(dat4$GRP,labels = c("TRAIN","TEST"))

# Generate a new tidy dataset based on dat4 with the computed mean for each variable
dat5<-dat4 %>% melt(id = c("ID", "ACT", "GRP")) %>% dcast(ID + ACT + GRP~ variable, mean)

# Save the dataset in a txt file
write.table(dat5, "tidydata.txt", row.name = FALSE, quote = FALSE)
