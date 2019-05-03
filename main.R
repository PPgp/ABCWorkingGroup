#!/usr/bin/env Rscript
library(data.table)
source("src/getSampleMethod.R")
args = commandArgs(TRUE)


# supplied at the commandline
mcSampleSize = as.numeric(args[1])
resultsFile = paste0(as.character(args[2]), 
					 "_",
					 format(Sys.Date(), "%Y%m%d"), 
					 "_ss",
					 mcSampleSize)


# fixed simulation run parameters
dataFile = "data/normalSample.csv"
dt = fread(file=dataFile)


xbar = dt[,mean(x)]
s2 = dt[,var(x)]


# run function from methodScript.R
resultdt = getSample(sampleMean=xbar, sampleVar=s2, sampleSize=mcSampleSize)

fwrite(resultdt, file=resultsFile)
