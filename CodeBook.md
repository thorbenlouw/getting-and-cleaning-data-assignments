# Code book
The data set in tidy.txt contains a summary of the original experiment data.

* The test and training observations have been combined and all 10299 observations considered for the summary.
* Only the observations for the mean and standard deviations were kept (corresponding to the following columns in the original test_X.txt and train_X.txt datasets:  1   2   3   4   5   6  41  42  43  44  45  46  81  82  83  84  85  86 121 122 123 124 125 126 161 162 163 164 165 166 266 267 268 269 270 271 345 346 347 348 349 350 424 425 426 427 428 429). There are 50 features.
* The summary groups the activity and subject and then presents the __mean__ of each observation (i.e. mean of the mean or standard deviation)
* All the observations are in the original units. There has been no normalisation.
* Activity numbers have been replaced with the activity label.

## Variables:
1. Subject:   The number of the Subject for this observation
2. Activity.Label:   A descriptive label associated with this activity.  There are six activities, namely: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. tBodyAcc.mean.X: The *mean* of the original observations of tBodyAcc-mean()-X
4. tBodyAcc.mean.Y: The *mean* of the original observations of tBodyAcc-mean()-Y
5. tBodyAcc.mean.Z: The *mean* of the original observations of tBodyAcc-mean()-Z
6. tBodyAcc.std.X: The *mean* of the original observations of tBodyAcc-std()-X
7. tBodyAcc.std.Y: etc. (Refer to original dataset for detailed descriptions of the underlying variables)
8. tBodyAcc.std.Z:
9. tGravityAcc.mean.X:
10. tGravityAcc.mean.Y:
11. tGravityAcc.mean.Z:
12. tGravityAcc.std.X:
13. tGravityAcc.std.Y:
14. tGravityAcc.std.Z:
15. tBodyAccJerk.mean.X:
16. tBodyAccJerk.mean.Y:
17. tBodyAccJerk.mean.Z:
18. tBodyAccJerk.std.X:
19. tBodyAccJerk.std.Y:
20. tBodyAccJerk.std.Z:
21. tBodyGyro.mean.X:
22. tBodyGyro.mean.Y:
23. tBodyGyro.mean.Z:
24. tBodyGyro.std.X:
25. tBodyGyro.std.Y:
26. tBodyGyro.std.Z:
27. tBodyGyroJerk.mean.X:
28. tBodyGyroJerk.mean.Y:
29. tBodyGyroJerk.mean.Z:
30. tBodyGyroJerk.std.X:
31. tBodyGyroJerk.std.Y:
32. tBodyGyroJerk.std.Z:
33. fBodyAcc.mean.X:
34. fBodyAcc.mean.Y:
35. fBodyAcc.mean.Z:
36. fBodyAcc.std.X:
37. fBodyAcc.std.Y:
38. fBodyAcc.std.Z:
39. fBodyAccJerk.mean.X:
40. fBodyAccJerk.mean.Y:
41. fBodyAccJerk.mean.Z:
42. fBodyAccJerk.std.X:
43. fBodyAccJerk.std.Y:
44. fBodyAccJerk.std.Z:
45. fBodyGyro.mean.X:
46. fBodyGyro.mean.Y:
47. fBodyGyro.mean.Z:
48. fBodyGyro.std.X:
49. fBodyGyro.std.Y:
50. fBodyGyro.std.Z:

For a description of the meaning and units of the underlying variables in 3-50, refer to the original data described at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
