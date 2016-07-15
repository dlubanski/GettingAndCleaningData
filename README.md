# GettingAndCleaningData

This repo contains the required files for the final project for Coursera's Getting and Cleaning Data class.

The script, run_analytics.R, performs the following:

1. If neccesary files are not present, download and unzip.
2. Read all three data sets into tables.
3. Combine and name all three data sets
4. Extract only columns that measure standard deviation or mean
5. Rename "activity" levels with provided descriptors
6. Rename and clarify measurement names
7. Write tidydata.txt, a tidy dataset containing only subject, activity level and standard deviation/mean measurements.

* File location has been hardcoded.  For ease of use, do not rename directories after download.
* tidydata.txt creation requires the plyr package.  Use install.packages("plyr") if not already installed.  run_analytics.R will load the package when necessary.
* Use read.table("tidydata.txt", header = TRUE) to load output file.
