# Life-Expectancy-Evolution-Project
## Introduction
The study of life expectancy is a vital indicator of a nation's overall health and development. This project investigates the trends in life expectancy across different age groups and countries, focusing on Afghanistan's historical data from 1950 to 1966. Understanding these trends provides insights into the factors influencing health outcomes, which can inform public health policies and improve the quality of life.

The data reveals how life expectancy has changed over time, reflecting improvements in healthcare, nutrition, and living conditions. By analyzing these trends, we aim to identify significant patterns that can contribute to a deeper understanding of global health dynamics.

## Dataset Overview
The dataset used in this project includes the following columns:
* Entity: The name of the country.
* Code: The country code (ISO 3166-1 alpha-3).
* Year: The year of the recorded data.
* Age 0 lifespan: Life expectancy at birth.
* Age 10 lifespan: Life expectancy at age 10.
* Age 25 lifespan: Life expectancy at age 25.
* Age 45 lifespan: Life expectancy at age 45.
* Age 65 lifespan: Life expectancy at age 65.
* Age 80 lifespan: Life expectancy at age 80.

## Data Cleaning
The data cleaning process involved several steps:
* Removing Duplicates: Checked for duplicate entries to ensure the integrity of the dataset.
* Handling Null Values: Identified and removed any null values to maintain a clean dataset for analysis.
* Type Verification: Ensured that all columns are of the correct data type for accurate analysis.

## Analysis Methodology
The analysis will be conducted in the following stages:
* **Descriptive Statistics**: Calculate summary statistics (mean, median, standard deviation) for lifespan across different age groups.
* **Data Visualization**: Create visualizations to depict the trends in life expectancy over the years for various age groups. This may include line graphs, bar charts, and histograms.
* **Statistical Testing**: Perform statistical tests to analyze the significance of changes in life expectancy over the years.

## Insights and Findings
Upon completion of the analysis, we aim to derive insights such as:
* Trends in life expectancy at birth and at older ages.
* Significant changes over the years and their implications.
* Factors influencing changes in life expectancy, including healthcare improvements and socio-economic conditions.

## Conclusion
This project aims to enhance our understanding of life expectancy trends in Afghanistan from 1950 to 1966. By analyzing this data, we hope to contribute to the broader discourse on public health and inform strategies aimed at improving health outcomes.

How to Run the Analysis
To run the analysis, you will need to have the following R packages installed:
* readr
* fitdistrplus
* MASS
* You can install the required packages using the following commands:
  * install.packages("readr")
  * install.packages("fitdistrplus")
  * install.packages("MASS")
* After installing the packages, load your data and execute the analysis code provided in the project.
