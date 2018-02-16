##################################################
# This program cleanses the Cohort 16 dataset
# and displays graphs for comparison to help 
# drive informed decision making.
##################################################

## Load packages
library(dplyr)

##################################################

## Make sure that all rows are unique, unduplicated
cohortData16 <- distinct(cohortData16_raw)
