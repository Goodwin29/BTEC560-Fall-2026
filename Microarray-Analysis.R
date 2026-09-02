#Author: Goodwin, Date: 08/26/2026, Purpose: Microarray analysis


#Load the affy package

library(affy)

#Set the working directory for R

setwd("/Users/mauri23/Desktop")

#Read the Affymetrix dataset in R

data <- ReadAffy()

#Plot the read dataset as a boxplot

boxplot(data)

# Preprocessing the microarray chips using Normalization

Normalizeddata <- rma(data)

#Boxplot the normalizeddata dataset

boxplot (Normalizeddadta)

Normalizeddata <- exprs(Normalizeddata) 

boxplot(Normalizeddata)

# Assume first 2 chips are Cancer/Treatment type and next 2 are Normal/Reference chips

Treatment <- Normalizeddata[,c(1,2)]
Control <- Normalizeddata[,c(3,4)]

#Taking averages on rows for Treatment and Control, so we have 1 column for Treatment and 1 column for Control

# Fold change analysis for determining significant genes, Up-regulation and Down-regulation og genes
# Fold changes can be performed using substraction and division

Fold_Changes <- Treatment - Control