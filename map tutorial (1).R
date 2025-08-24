library(ggplot2)              #needs to be done each r session
library(tidyverse)            #needs to be done each r session


statedata <- read.csv("C:/Users/adith/OneDrive/Desktop/Project SRDS/data.csv") #####this reads in the data file I made you will need to change the path to your computer
View(statedata)


mapdata <- map_data("state") ##ggplot2
View(mapdata)
mapdata <- left_join(mapdata, statedata, by="region")
View(mapdata)
map1<-ggplot(mapdata, aes( x = long, y = lat, group=group)) +
  geom_polygon(aes(fill = NetMigrationRate1019), color = "black")
map1

map5 <- ggplot(mapdata, aes(x = long, y = lat, group = group)) +
  geom_polygon(aes(fill = NetMigrationRate1019), color = "black") +
  labs(title = "Net Migration Rate (2010-2019)",
       subtitle = "Top 5 states with highest Net Migration Rate",
       fill = "Net Migration Rate") + theme_minimal() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        plot.title = element_text(size = 18, face = "bold"),
        plot.subtitle = element_text(size = 14),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 10))
map5 <- map5 +
  geom_text(aes(x = -81.760254, y = 27.994402, label = "1.Florida"), color = "black",hjust = "left", size = 3) +
  geom_text(aes(x = -77.026817, y = 38.897438, label = "2.District of Columbia"), color = "black", size = 3)+
  geom_text(aes(x = -117.224121, y = 39.876019, label = "3.Nevada"), color = "black",hjust = "left", size = 3)+
  geom_text(aes(x = -111.093735, y = 34.048927, label = "4.Arizona"), color = "black",hjust="left", size = 3)+
  geom_text(aes(x = -81.163727 , y = 33.836082, label = "5.South Carolina"), color = "black",hjust="left", size = 3)
map5



map6<- ggplot(mapdata, aes(x = long, y = lat, group = group)) +
  geom_polygon(aes(fill = NetMigrationRate1019), color = "black", size = 0.5) +
  labs(title = "Net Migration Rate (2010-2019)",
       subtitle = "Showing net migration rate by region",
       fill = "Net Migration Rate") +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        plot.title = element_text(size = 18, face = "bold"),
        plot.subtitle = element_text(size = 14),
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 10)) + theme(legend.position = "bottom")

print(map6)


# Load the required libraries
library(ggplot2)

# Create a function to generate a visually appealing map showing Net Migration Rate for states
generate_migration_map <- function(data) {
  # Create the map using ggplot
  map <- ggplot(data, aes(x = long, y = lat, group = group)) +
    geom_polygon(aes(fill = NetMigrationRate1019), color = "white", size = 0.2) +
    theme_minimal() +
    theme(
      axis.text = element_blank(),
      axis.ticks = element_blank(),
      plot.title = element_blank(),
      plot.subtitle = element_blank(),
      legend.title = element_text(size = 16),
      legend.text = element_text(size = 14),
      legend.position = "bottom",  # Place the legend at the bottom
      panel.background = element_rect(fill = "white", color = "black", size = 0.5),
      panel.grid.major = element_line(color = "lightgray", size = 0.5),
      panel.grid.minor = element_blank(),
      plot.margin = margin(1, 1, 1, 1, "cm")  # Adjust the margins for better centering
    ) +
    coord_map() +  # Use an appropriate map projection for better visualization
    
    # Add a color scale to map Net Migration Rate to different colors
    scale_fill_gradient(low = "lightblue", high = "darkblue", name = "Net Migration Rate 2010-19",labels = scales::percent_format(scale = 1)) 
  
  # Add state labels to the map for the top 5 states
  map <- map +
    geom_text(aes(x = -81.760254, y = 27.994402, label = "1. Florida"), color = "black", hjust = "left", size = 5) +
    geom_text(aes(x = -77.026817, y = 38.897438, label = "2. District of Columbia"), color = "black", hjust = "left",size = 5) +
    geom_text(aes(x = -117.224121, y = 39.876019, label = "3. Nevada"), color = "black", hjust = "left", size = 5) +
    geom_text(aes(x = -111.093735, y = 34.048927, label = "4. Arizona"), color = "black", hjust = "left", size = 5) +
    geom_text(aes(x = -81.163727 , y = 33.836082, label = "5. South Carolina"), color = "black", hjust = "left", size = 5)
  
  return(map)
}

# Call the function with your dataset containing Net Migration Rate for states
map5 <- generate_migration_map(mapdata)

# Display the visually improved map with Net Migration Rate information for the top 5 states
print(map5)
