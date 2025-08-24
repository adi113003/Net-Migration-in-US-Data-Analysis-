# Net Migration in US Data Analysis

This project explores **net migration patterns in the United States** using data from the USDA Economic Research Service’s *Atlas of Rural and Small-Town America*. The analysis focuses on migration trends at the state level across two decades (2000–2010 and 2010–2019) and investigates their relationship with employment change rates.

---

## 📊 Project Overview
The main objectives of this project are:
- To visualize and compare **net migration rates across states** during 2000–2010 and 2010–2019.
- To highlight the **top 5 states** with the highest net migration rates.
- To explore **regional variations** in net migration using maps.
- To analyze the **relationship between net migration rates and employment change**, particularly the effect of the 2007–2009 Great Recession.

---

## 📂 Repository Structure
- **`barchart.R`** → Generates bar charts of net migration rates for states (2000–2010 and 2010–2019).
- **`boxplot.R`** → Creates boxplots to visualize net migration distribution and household size variation across states.
- **`map tutorial (1).R`** → Produces choropleth maps of net migration rates, with labels for the top 5 states.
- **`data.csv`** → Processed dataset for visualization (subset from USDA Rural Atlas).
- **`srds23 (adithya).pdf`** → Project presentation summarizing results and insights.

---

## 📈 Key Insights
- **Florida** rose to first place in net migration (2010–2019), while **Nevada** declined to third.
- The **Great Recession (2007–2009)** caused a **negative correlation** between net migration and employment change (2000–2010).
- Post-recession (2010–2019), the correlation became **positive**, indicating recovery and renewed migration flows.
- Maps and visualizations highlight **regional migration patterns** and disparities.

---

## 🛠️ Tools & Libraries
The analysis is conducted in **R** with the following libraries:
- `dplyr`, `tidyverse`, `readxl` → Data manipulation
- `ggplot2` → Visualization
- `maps` (via `ggplot2`) → Geographic mapping

---

## 📊 Data Source
**USDA Economic Research Service**  
Atlas of Rural and Small-Town America  
Dataset: *RuralAtlasData23.xlsx*  

🔗 [USDA ERS Rural Atlas](https://www.ers.usda.gov/data-products/atlas-of-rural-and-small-town-america/)

---

## 🚀 How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/<your-username>/Net-Migration-in-US-Data-Analysis.git
