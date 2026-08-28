#Author: Goodwin, Date: 08/26/2026, Purpose: Microarray analysis

# Install microarray affy package

if (!require("BiocManager", quietly= TRUE)) install.packages("BiocManager")

BiocManager::install("affy")

#Load the affy package

library(affy)

#Set the working directory for R

setwd("/Users/mauri23/Desktop")

#Read the Affymetrix dataset in R

data <- ReadAffy ()

#Plot the read dataset as a boxplot

boxplot(data)