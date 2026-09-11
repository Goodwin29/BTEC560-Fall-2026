#Author: Goodwin, Date: 090/11/2026, Purpose: Phylogenetic analysis

# Load the 4 libraries
library(ape)
> library(phangorn)
> library(phytools)
Loading required package: maps
> library(geiger)

# Create some dummy string dataset

text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fis
h), shark);"

vert.tree<-read.tree(text=text.string)
