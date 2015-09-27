# getting-and-cleaning-data-assignments
Assignments from the Coursera Course "Getting and Cleaning Data", part of the Data Science Specialization

## Description of files in this repository
* *README.md* - this file
* *CodeBook.md* - the codebook that describes the data in this assignments, its variables and any transformations performed on the raw data to get it into this shape
* *run_analysis.R* - the assignment script that runs on the raw data and does the following (as per the assignment instructions:)
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This is written to the working directory as tidy.txt
* *download_data.R* -  downloads the initial data set and original codebook to the working directory. Change to the unzipped directory before running the run_analysis.R script
* *tidy.txt* - The final (clean data) with as submitted
