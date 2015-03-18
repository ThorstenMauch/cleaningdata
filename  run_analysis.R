#Merging data

#Subject ids and activity are merged the training and the test data.
#Activity are converted to factors Test and training data merged to obtain a single data Frame

#Variables are given more human friendly names
#Extract mean and standard deviation variables

#The variables with estimated mean and standard deviation are extracted

#The mean of means and standard deviations variables was calculated, grouped by SubjectID and Activity 
  

mainanalysis<-function(){
  #  Read test and train Data and assemble it to one datafram
  tb_test <- readData("test")
  tb_train <- readData("train")
  tb_all  <-  rbind(tb_train, tb_test)
  
  
  #  add readable lables to colums
  colLables <- createLabels()
  colnames(tb_all) <-colLables
  
  
  #  Extract subject, activity, mean and deviation
  tb_all<-tb_all[,c(1,2,grep(" Mean|deviation",names(tb_all)))]
   
  
  #  Adding Factors to Activity
  tb_all$Activity<-factor(tb_all$Activity, labels=c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))
  write.csv(tb_all,"tb_all.cvs")
  
  #  Create aggregated Dataset
  # hint: http://seananderson.ca/2013/10/19/reshape.html
  melted <- melt(tb_all, id=c("SubjectID","Activity"))
  write.csv(melted,"melted.csv")
  
  tidy <- dcast(melted, SubjectID+Activity ~ variable, mean)
  write.csv(tidy,"mytidy.csv")
  write.table(tidy, file="tidydata.txt",row.name=FALSE)
  
}

# Argument: Datatype "test" or "train"
# returns the created dataframe
readData<-function(datatype){
  
  subjectdata<-read.table(paste("UCI HAR Dataset/",datatype,"/subject_",datatype,".txt", sep=""), header=FALSE, stringsAsFactors=FALSE)
  labeldata<-read.table(paste("./UCI HAR Dataset/",datatype,"/y_",datatype,".txt", sep=""),header=FALSE, stringsAsFactors=FALSE)
  traindata<-read.table(paste("./UCI HAR Dataset/",datatype,"/X_",datatype,".txt", sep=""),header=FALSE, stringsAsFactors=FALSE)
  assembleddata<-data.frame(subjectdata, labeldata,traindata)
}


# returns a vector  with tidy lables
createLabels<-function(){
  
  featuredata<-read.table("UCI HAR Dataset/features.txt", header=FALSE, stringsAsFactors=FALSE)
  newColnames<-c("SubjectID", "Activity",featuredata[,2])
  newColnames<-gsub("\\-mean\\(\\)", " Mean", newColnames )
  newColnames<-gsub("\\-std\\(\\)", " Standard deviation", newColnames )
  newColnames<-gsub("^t", "Time ", newColnames )
  newColnames<-gsub("^f", "Frequency ", newColnames )
  newColnames
  
}


