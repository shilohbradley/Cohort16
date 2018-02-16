##################################################
# This program cleanses the Cohort 16 dataset
# and displays graphs for comparison to help 
# drive informed decision making.
##################################################

## Load packages
library(ggplot2)

##################################################

## Plot data
file01 <- ggplot(cohortData16, aes(x = CUM_UNLV_GPA_FALL_FINAL, y = UNWEIGHTED_HSGPA_LHS, color = IS_RETAINED_TO_2ND_FALL)) + 
  geom_point() +
  theme_classic() +
  scale_color_gradient(low = "#B10202", high = "#666666") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.background = element_rect(fill="gray90", size=.5, linetype="dotted")) +
  theme(legend.position = "bottom") +
  #theme(legend.title = "Retained to 2nd fall") +
  ggtitle("High school GPA versus first semester GPA") +
  xlab("Cumulative UNLV GPA for student at end of the fall semester") +
  ylab("Unweighted High school transcript GPA")
file01
ggsave("file01.pdf")

file02 <- ggplot(cohortData16, aes(RACE_ETHNIC, ..count.., fill = GENDER)) +
  geom_bar() +
  theme_classic() +
  scale_fill_manual(values = c("#B10202", "#666666"), 
                    name="Gender",
                    breaks=c("F", "M"),
                    labels=c("Female", "Male")) +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.background = element_rect(fill="gray90", size=.5, linetype="dotted")) +
  ggtitle("First time cohort demographics") +
  xlab("Races and Ethnicities") +
  ylab("Number of students")
file02
ggsave("file02.pdf")

##################################################

## Save plot
#ggsave(file03, device = "pdf")
