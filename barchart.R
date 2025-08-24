#Libraries
library(dplyr)
library(ggplot2)
library(readxl)
#Loading the data
dt = read_xlsx("RuralAtlasData23.xlsx",sheet=3)
attach(dt)

#States Subset
isState = which( as.numeric(dt$FIPS)/1000 == round(as.numeric(dt$FIPS)/1000) )
dtState = dt[isState, ]
dtState = dtState[-1, ]
dtState = dtState[dtState$State!="PR", ]
dtState



p<-ggplot(data=dtState, aes(x=State, y= NetMigrationRate1019)) +
  geom_bar(stat="identity")
p
p2 = p + scale_x_discrete(limits=c("FL","DC","NV","AZ","SC"))
p2

# Create the ggplot with improved aesthetics
p <- ggplot(data = dtState, aes(x = State, y = NetMigrationRate1019)) +
  geom_bar(stat = "identity", fill = "steelblue", alpha = 0.8) +  # Adjust bar appearance
  labs(x = "State", y = "Net Migration Rate 2010-2019") +  # Add axis labels
  theme_minimal() +  # Use a clean theme
  theme(
    plot.title = element_text(size = 18, face = "bold"),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12, angle = 45, hjust = 1),  # Rotate and align x-axis labels
    panel.grid.major = element_line(color = "lightgray", size = 0.2),
    plot.margin = margin(1, 1, 1, 1, "cm")  # Adjust margins for better centering
  )+ scale_x_discrete(limits=c("FL","DC","NV","AZ","SC"))

print(p)

p1 <- ggplot(data = dtState, aes(x = State, y = NetMigrationRate0010)) +
  geom_bar(stat = "identity", fill = "steelblue", alpha = 0.8) +  # Adjust bar appearance
  labs(x = "State", y = "Net Migration Rate 2000-2010") +  # Add axis labels
  theme_minimal() +  # Use a clean theme
  theme(
    plot.title = element_text(size = 18, face = "bold"),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12, angle = 45, hjust = 1),  # Rotate and align x-axis labels
    panel.grid.major = element_line(color = "lightgray", size = 0.2),
    plot.margin = margin(1, 1, 1, 1, "cm")  # Adjust margins for better centering
  )+ scale_x_discrete(limits=c("NV","AZ","FL","NC","GA"))

print(p1)