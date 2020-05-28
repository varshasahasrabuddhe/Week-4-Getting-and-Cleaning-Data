setwd("C:/Users/vsahasrabuddhe/Documents/Assignments/Data Claening and Tidy data/Week 4/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
#install.packages("dplyr")
#library(dplyr)
activity_labels <- read.table("activity_labels.txt")
names(activity_labels) <- c("activity_code","activity_desc")
features <- read.table("features.txt")


s_test <- read.table("subject_test.txt")
names(s_test) <- c("subject_id")
s_test$source <- 'test'
s_test$recordno <- c(1:2947)

y_test <- read.table("y_test.txt")
names(y_test) <- c("activity_code")


obs_test <- read.table("x_test.txt")
names(obs_test) <- as.character(features$V2)
x_test<- obs_test[,grep("mean|Mean|std", names(obs_test))]

test <- cbind(s_test, y_test,x_test)

s_train <- read.table("subject_train.txt")
names(s_train) <- c("subject_id")
s_train$source <- 'train'
s_train$recordno <- c(2948:10299)  


y_train <- read.table("y_train.txt")
names(y_train) <- c("activity_code")


obs_train <- read.table("x_train.txt")
names(obs_train) <- as.character(features$V2)
x_train<- obs_train[,grep("mean|Mean|std", names(obs_test))]
##x_train <- obs_train[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,294:296,345:350,373:375,424:429,452:454,503:504,513,516:517,526,529:530,539,542:543,552,555:561)]
train <- cbind(s_train, y_train,x_train)

Fulldata <- rbind(test,train)
##FinalData <- merge (Fulldata,activity_labels,by.x="activity_code", by.y="activity_code")

FinalData <- merge (activity_labels,Fulldata,by.x="activity_code", by.y="activity_code")
FinalData_1 <- FinalData%>%select(activity_desc,subject_id, 6:91)
Step5 <- FinalData_1%>%group_by(activity_desc,subject_id)%>%summarize_all(funs(mean))

write.table(Step5, "ActivityStudentAvg.txt",row.names=FALSE )
