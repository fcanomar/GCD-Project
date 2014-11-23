---
title: "CodeBook.md"
author: "Francisco Cano Marchal"
date: "23 de noviembre de 2014"
output: html_document
---

The dataset **meansbyactivitysubject.txt** was generated from 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

available in

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> 

and was the result of 

1) reading Training Set (*X_train.txt*) and Test Set (*X_test.txt*) datasets, and renaming the variables (according to *features.txt*), 
2) asigning activity type to each observation ("activity" variable, according to *y_train.txt*, *y_test.txt* and *activity_labels.txt*),  
3) asigning corresponding subject to each observation ("subject" variable, according to *subject_test.txt* and *subject_train.txt*)
4) merging both Training and Test datasets into unique dataframe
7) extracting MEAN VALUES OF EACH VARIABLE FOR EACH SUBJECT AND ACTIVITY

The variables in this set are

activity - kind of activity as in *activity_labels.txt*
subject - subject that performed the experiment as in *subject_test.txt* and *subject_train.txt*

the rest of variables (available in *features.txt) are identical to [1]. For further information on this variables please consult *features_info.txt*.