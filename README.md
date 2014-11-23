---
title: "README"
author: "Francisco Cano Marchal"
date: "23 de noviembre de 2014"
output: html_document
---

**run_analysis.R** script does the following :

1) reads and unzips the following data file, creating a folder with it's content in R's working directory:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

and reads Training Set *X_train.txt* and Test Set *X_test.txt* datasets

2) assigns the corresponding variable names, 
read from *features.txt*

3) assigns corresponding activity labels, 
using the info from *y_train.txt*, *y_test.txt* and *activity_labels.txt*

4) assings corresponding subject to each row,
using the info from *subject_test.txt* and *subject_train.txt*

5) merges both Training and Test datasets into unique dataframe

6) extracts mean and standar deviation values of each variable

7) extracts MEAN VALUES OF EACH VARIABLE FOR EACH SUBJECT AND ACTIVITY,
and creates a file name **meansbyactivitysubject.txt** containing a table with this information.