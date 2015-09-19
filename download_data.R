# Downloads the raw data set and code book used in this assignment to the working directory
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="rawdata.zip",
              method="curl")

download.file(url="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#",
              destfile="rawdata-description.html",
              method="curl")

unzip("rawdata.zip")
