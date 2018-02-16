##################################################
# This program cleanses the Cohort 16 dataset
# and displays graphs for comparison to help 
# drive informed decision making.
##################################################

## Load packages
library(readxl)

##################################################

## Load dataframes
cohortData16_raw <- read_excel("Data set for candidate.xlsx")
codeBook <- read_excel("Data Code Book.xlsx")