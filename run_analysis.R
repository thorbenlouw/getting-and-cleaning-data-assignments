library("dplyr")

# Determine whether we're in a directory that contains the files we want to use
stopifnot(file.exists("features.txt"),
          file.exists("activity_labels.txt"),
          dir.exists("test"),
          dir.exists("train"),
          file.exists("test/X_test.txt"),
          file.exists("test/y_test.txt"),
          file.exists("test/subject_test.txt"),
          file.exists("train/X_train.txt"),
          file.exists("train/y_train.txt"),
          file.exists("train/subject_train.txt"));

# Load the feature labels
feature.labels <- read.table("features.txt");
# Strip out un-R-like characters (), , and - from the names, we want to use them as col headers
feature.labels <- feature.labels[,2];
feature.labels <- gsub("\\(|\\)|-|,","\\.", feature.labels);
feature.labels <- gsub("\\.\\.|\\.$","", feature.labels);


# Load the activity labels
activity.labels <- read.table("activity_labels.txt", col.names=c("Activity.Num", "Activity.Label"));

# Load the test set and merge X, y and subject
test.X <- read.table("test/X_test.txt", col.names=feature.labels);
# We only want the mean and stddev measurements, these have mean or std in the col name,
# and not those which are angles between a mean and something, or a meanFreq
test.X <- test.X[,grep("mean[^A-Z]|std[^A-Z]", feature.labels)]
test.y <- read.table("test/y_test.txt", col.names=c("Activity.Num"));
test.subject <- read.table("test/subject_test.txt", col.names=c("Subject"));
test <- cbind(test.subject, test.y, test.X);

# Load the training set and merge X, y and subject
train.X <- read.table("train/X_train.txt", col.names=feature.labels);
# We only want the mean and stddev measurements, these have mean or std in the col name,
# and not those which are angles between a mean and something, or a meanFreq
train.X <- train.X[,grep("mean[^A-Z]|std[^A-Z]", feature.labels)]
train.y <- read.table("train/y_train.txt", col.names=c("Activity.Num"));
train.subject <- read.table("train/subject_train.txt", col.names=c("Subject"));
train <- cbind(train.subject, train.y, train.X);

# Merge the test and training sets
df <- rbind(train, test);

# free up some memory
rm(test, test.X, test.y, test.subject, train, train.X, train.y, train.subject);

# Rename the activities, replacing the activity number with the factor name
df <- merge(df, activity.labels, "Activity.Num", all=TRUE);
df$Activity.Num <- NULL;

# Create the tidy data set, grouping by Activity and Subject and then finding the mean of each 
# measurement
tidy <- df %>% group_by(Activity.Label, Subject) %>% summarise_each(funs(mean));
write.table(tidy, "tidy.txt", row.name=FALSE);

