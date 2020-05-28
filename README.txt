


setwd("C:/Users/vsahasrabuddhe/Documents/Assignments/Data Claening and Tidy data/Week 4/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

====================================================
Loading The Activity Labels and Feaures Dtaa
====================================================

activity_labels <- read.table("activity_labels.txt")
names(activity_labels) <- c("activity_code","activity_desc")
features <- read.table("features.txt")

setwd("C:/Users/vsahasrabuddhe/Documents/Assignments/Data Claening and Tidy data/Week 4/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test")

=========================================================================================
1 Loading The Test data 
2 Renaming the columns 
3. Adding a column to identify the source - This is just for validatio purpose
4. Adding Record Number to retain the orginial order (for using merge function later)
5. Taking only Mean and STD columns frm x_ data set 
=========================================================================================

s_test <- read.table("subject_test.txt")
names(s_test) <- c("subject_id")
s_test$source <- 'test'
s_test$recordno <- c(1:2947)

y_test <- read.table("y_test.txt")
names(y_test) <- c("activity_code")


obs_test <- read.table("x_test.txt")
names(obs_test) <- as.character(features$V2)

x_test <- obs_test[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,294:296,345:350,373:375,424:429,452:454,503:504,513,516:517,526,529:530,539,542:543,552,555:561)]
test <- cbind(s_test, y_test,x_test)


setwd("C:/Users/vsahasrabuddhe/Documents/Assignments/Data Claening and Tidy data/Week 4/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train")
=========================================================================================
1 Loading The Train data 
2 Renaming the columns 
3. Adding a column to identify the source - This is just for validatio purpose
4. Adding Record Number to retain the orginial order (for using merge function later)
5. Taking only Mean and STD columns frm x_ data set 
=========================================================================================

s_train <- read.table("subject_train.txt")
names(s_train) <- c("subject_id")
s_train$source <- 'train'
s_train$recordno <- c(2948:10299)  2947 + 7352


y_train <- read.table("y_train.txt")
names(y_train) <- c("activity_code")


obs_train <- read.table("x_train.txt")
names(obs_train) <- as.character(features$V2)
x_train <- obs_train[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,294:296,345:350,373:375,424:429,452:454,503:504,513,516:517,526,529:530,539,542:543,552,555:561)]
train <- cbind(s_train, y_train,x_train)

=========================================================================================
1 combine both the Test and Train data sets
=========================================================================================

Fulldata <- rbind(test,train)
FinalData <- merge (Fulldata,activity_labels,by.x="activity_code", by.y="activity_code")

FinalData <- merge (activity_labels,Fulldata,by.x="activity_code", by.y="activity_code")
=========================================================================================
1 Retaining only the columns needed in the final tidy data set
=========================================================================================

FinalData_1 <- FinalData%>%select(activity_desc,subject_id, 6:91)

==============================================================================================================
1 Generating final tidy data set which gives average of each variable for each activity and each subject.
==============================================================================================================

Step5 <- FinalData_1%>%group_by(activity_desc,subject_id)%>%summarize_all(funs(mean))

