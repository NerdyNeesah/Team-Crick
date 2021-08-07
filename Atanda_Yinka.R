#!/usr/bin/env Rscript

list.of.packages <- c("stringdist","knitr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages,repos = "http://cran.us.r-project.org")
library(stringdist)

Name <- ("Atanda Yinka Habeeb")
Email <- ("Ayinka13@gmail.com")
Slack_username <- ("@Atanda_Yinka")
Biostack <- ("Genomics")
Twitter_username <- ("@Biotek_AYH13")
Hamming_distance <- stringdist::stringdist(Slack_username,Twitter_username, method = "hamming", useBytes = F)
ayh <-  c(Name, Email, Slack_username, Biostack, Twitter_username, Hamming_distance)
knitr::combine_words(ayh, sep = ",", and = "")
