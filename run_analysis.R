#helpful vars
data_dir<-paste0(getwd(),"/UCI HAR Dataset/")

#read labels and features
labels<-read.delim(paste0(data_dir, "activity_labels.txt"), FALSE, " ")
names(labels)<-c("id", "activity_name")
features<-read.delim(paste0(data_dir, "features.txt"), FALSE, " ", stringsAsFactors=FALSE)
names(features)<-c("id", "feature_name")

#read test data
test_data<-read.delim(paste0(data_dir,"test/y_test.txt"), FALSE)
test_data<-cbind(read.delim(paste0(data_dir, "test/subject_test.txt"), FALSE), test_data)
test_data<-cbind(
  read.fwf(paste0(data_dir,"test/X_test.txt"), rep(16,nrow(features)), buffersize = 100, n = nrow(test_data)),
  test_data)
names(test_data)<-c(features$feature_name, "subject_id", "activity_id")

#read train data
train_data<-read.delim(paste0(data_dir,"train/y_train.txt"), FALSE)
train_data<-cbind(read.delim(paste0(data_dir, "train/subject_train.txt"), FALSE), train_data)
train_data<-cbind(
  read.fwf(paste0(data_dir,"train/X_train.txt"), rep(16,nrow(features)), buffersize = 100, n = nrow(train_data)),
  train_data)
names(train_data)<-c(features$feature_name, "subject_id", "activity_id")

#obtain final tidy data
columns <- c(features[grepl('mean\\(\\)|std\\(\\)', features$feature_name), "feature_name"], 
             'subject_id',
             'activity_name')
data<-merge(
  rbind(test_data, train_data), 
  labels, 
  by.x="activity_id", by.y="id")[,columns]

#summarize and save to file
summarised_data <- group_by(data, activity_name, subject_id) %>% summarise_each(funs(mean))
write.table(summarised_data, "result.txt", row.names = FALSE)