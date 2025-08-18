install.packages("sjPlot")
library(sjPlot)

library(tidyverse)
library(sjmisc)
install.packages("sjmisc")
library(sjlabelled)
install.packages("sjlabelled")
library(ggplot2)
install.packages("ggplot2")
theme_set(theme_bw())
ggplot(nlsy, aes(x=race_eth_cat, y=sleep_wkdy))+
geom_point()
