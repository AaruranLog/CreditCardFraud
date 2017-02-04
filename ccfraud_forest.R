setwd("C:/Users/Aaruran/Documents/GitHub/Machine learning Self-study/ccfraud/")
df <- read.csv("creditcardfraud/creditcard.csv")

library(ggplot2)
library(randomForest)
library(dplyr)
library(tidyr)
library(reshape2)

attach(df)

# produce histograms of everything
df %>% select(-Time) %>%reshape2::melt() %>% ggplot(aes(x=value)) + geom_histogram() + facet_wrap(~variable,scales = "free_x")

# output.forest <- randomForest(Class ~ V1 + V2 + V3 + V4 + V5 + V6 + V7 +V8 + V9 + V10
#                               + Amount+V11 + V12 + V13 + V14 + V15 + V16 + V17 +V18 + V19 +
#                               V21 + V22 + V23 + V24 + V25 + V26 + V27 +V28, data=df)

# as it turns out, a random forest with this many input features requires allocating 
# a vector of size 2.1 gb
