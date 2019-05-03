#!/usr/bin/env Rscript
library(data.table)

getSample = function(sampleMean, sampleVar, sampleSize=1e2){
	##########################################################################
	# definition: simple function used to generate random sample
	# arguments:
	#	- sample mean
	#	- sample variance
	# returns: data.table random sample from normal pdf 
	##########################################################################

	thisSample = rnorm(n=sampleSize, mean=sampleMean, sd=sqrt(sampleVar))
	thisDataTable = data.table(thisSample)
	return(thisDataTable)
}
