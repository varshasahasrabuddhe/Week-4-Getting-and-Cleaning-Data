Tranformations
1. Activity Labels and Features data are loaded into data frames
2. Subject,Y and X(obs_) data sets for both test and train are loaded into respecuve data frames
3. Appropritae Names are assigned
4. X(obs_) dataset names are assigned using Features file
5. Added hard coded source column for each test and train data to help validate the results at each stage
6. Added recordno column 1 to 2947 for Test and 2948 to 10299 or Train dataset to make sure sort order 
   is maintined in the final dtatast after merge operation
7. Respective X datasets are created (from obs_)which have only Mean and STD variables
8. combined respective subject,Y and X data sets using cbind
9. Created FinalData by combining test and train using rbind
10.Created FinalData_1 with only required columns in final data set
11. Created Tidy Data set "Step5" as requested in Step 5. Below are the column details. Columns from 3:86 are the averages of the variables from FinalData_1 
Column Descriptions
1	 - 	activity_desc
2	 - 	subject_id
3	 - 	1 tBodyAcc-mean()-X
4	 - 	2 tBodyAcc-mean()-Y
5	 - 	3 tBodyAcc-mean()-Z
6	 - 	4 tBodyAcc-std()-X
7	 - 	5 tBodyAcc-std()-Y
8	 - 	6 tBodyAcc-std()-Z
9	 - 	41 tGravityAcc-mean()-X
10	 - 	42 tGravityAcc-mean()-Y
11	 - 	43 tGravityAcc-mean()-Z
12	 - 	44 tGravityAcc-std()-X
13	 - 	45 tGravityAcc-std()-Y
14	 - 	46 tGravityAcc-std()-Z
15	 - 	81 tBodyAccJerk-mean()-X
16	 - 	82 tBodyAccJerk-mean()-Y
17	 - 	83 tBodyAccJerk-mean()-Z
18	 - 	84 tBodyAccJerk-std()-X
19	 - 	85 tBodyAccJerk-std()-Y
20	 - 	86 tBodyAccJerk-std()-Z
21	 - 	121 tBodyGyro-mean()-X
22	 - 	122 tBodyGyro-mean()-Y
23	 - 	123 tBodyGyro-mean()-Z
24	 - 	124 tBodyGyro-std()-X
25	 - 	125 tBodyGyro-std()-Y
26	 - 	126 tBodyGyro-std()-Z
27	 - 	161 tBodyGyroJerk-mean()-X
28	 - 	162 tBodyGyroJerk-mean()-Y
29	 - 	163 tBodyGyroJerk-mean()-Z
30	 - 	164 tBodyGyroJerk-std()-X
31	 - 	165 tBodyGyroJerk-std()-Y
32	 - 	166 tBodyGyroJerk-std()-Z
33	 - 	201 tBodyAccMag-mean()
34	 - 	202 tBodyAccMag-std()
35	 - 	214 tGravityAccMag-mean()
36	 - 	215 tGravityAccMag-std()
37	 - 	227 tBodyAccJerkMag-mean()
38	 - 	228 tBodyAccJerkMag-std()
39	 - 	240 tBodyGyroMag-mean()
40	 - 	241 tBodyGyroMag-std()
41	 - 	253 tBodyGyroJerkMag-mean()
42	 - 	254 tBodyGyroJerkMag-std()
43	 - 	266 fBodyAcc-mean()-X
44	 - 	267 fBodyAcc-mean()-Y
45	 - 	268 fBodyAcc-mean()-Z
46	 - 	269 fBodyAcc-std()-X
47	 - 	270 fBodyAcc-std()-Y
48	 - 	271 fBodyAcc-std()-Z
49	 - 	294 fBodyAcc-meanFreq()-X
50	 - 	295 fBodyAcc-meanFreq()-Y
51	 - 	296 fBodyAcc-meanFreq()-Z
52	 - 	345 fBodyAccJerk-mean()-X
53	 - 	346 fBodyAccJerk-mean()-Y
54	 - 	347 fBodyAccJerk-mean()-Z
55	 - 	348 fBodyAccJerk-std()-X
56	 - 	349 fBodyAccJerk-std()-Y
57	 - 	350 fBodyAccJerk-std()-Z
58	 - 	373 fBodyAccJerk-meanFreq()-X
59	 - 	374 fBodyAccJerk-meanFreq()-Y
60	 - 	375 fBodyAccJerk-meanFreq()-Z
61	 - 	424 fBodyGyro-mean()-X
62	 - 	425 fBodyGyro-mean()-Y
63	 - 	426 fBodyGyro-mean()-Z
64	 - 	427 fBodyGyro-std()-X
65	 - 	428 fBodyGyro-std()-Y
66	 - 	429 fBodyGyro-std()-Z
67	 - 	452 fBodyGyro-meanFreq()-X
68	 - 	453 fBodyGyro-meanFreq()-Y
69	 - 	454 fBodyGyro-meanFreq()-Z
70	 - 	503 fBodyAccMag-mean()
71	 - 	504 fBodyAccMag-std()
72	 - 	513 fBodyAccMag-meanFreq()
73	 - 	516 fBodyBodyAccJerkMag-mean()
74	 - 	517 fBodyBodyAccJerkMag-std()
75	 - 	526 fBodyBodyAccJerkMag-meanFreq()
76	 - 	529 fBodyBodyGyroMag-mean()
77	 - 	530 fBodyBodyGyroMag-std()
78	 - 	539 fBodyBodyGyroMag-meanFreq()
79	 - 	542 fBodyBodyGyroJerkMag-mean()
80	 - 	543 fBodyBodyGyroJerkMag-std()
81	 - 	552 fBodyBodyGyroJerkMag-meanFreq()
82	 - 	555 angle(tBodyAccMean,gravity)
83	 - 	556 angle(tBodyAccJerkMean),gravityMean)
84	 - 	557 angle(tBodyGyroMean,gravityMean)
85	 - 	558 angle(tBodyGyroJerkMean,gravityMean)
86	 - 	559 angle(X,gravityMean)
87	 - 	560 angle(Y,gravityMean)
88	 - 	561 angle(Z,gravityMean)
