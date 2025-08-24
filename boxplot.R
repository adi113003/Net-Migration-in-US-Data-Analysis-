library(tidyverse)
library(readxl)
library(ggplot2)

dt = read_xlsx("RuralAtlasData23.xlsx", sheet=3)
isState = which( as.numeric(dt$FIPS)/1000 == round(as.numeric(dt$FIPS)/1000) )
dtState = dt[isState, ]
dtState = dtState[-1, ]
dtState = dtState[dtState$FIPS!=11000, ]
dtState = dtState[dtState$State!="PR", ]
dtState

p = ggplot(dtState, aes(x=AvgHHSize)) + geom_boxplot()
p
p = ggplot(dtState, aes(x=NetMigrationRate1019, y=State)) + 
  geom_boxplot()
p
p2 = p + scale_y_discrete(limits=c("FL","DC","NV","AZ","SC"))
p2