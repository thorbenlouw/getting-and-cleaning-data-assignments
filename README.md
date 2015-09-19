# getting-and-cleaning-data-assignments
Assignments from the Coursera Course "Getting and Cleaning Data", part of the Data Science Specialization

## Description of files in this repository
* *README.md* - this file
* *CodeBook.md* - the codebook that describes the data in this assignments, its variables and any transformations performed on the raw data to get it into this shape
* *run_analysis.R* - the assignment script that runs on the raw data and does the following (as per the assignment instructions:)
  # Merges the training and the test sets to create one data set.
  # Extracts only the measurements on the mean and standard deviation for each measurement. 
  # Uses descriptive activity names to name the activities in the data set
  # Appropriately labels the data set with descriptive variable names. 
  # From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* *download_data.R* -  downloads the initial data set and original codebook to the working directory
* *data.txt* - The final (clean data) with no headers as submitted
* *data.csv* - The csv form (with headers) of the submitted clean data
