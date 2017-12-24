#Load the necessary libraries
library(affy)
library(affyQCReport)

dat <- ReadAffy()
eset <- rma(dat)

#QC Analysis using arrayQualityMetrics software
require(arrayQualityMetrics)
arrayQualityMetrics(expressionset = eset, outdir = "Report_for_HeatStress_T2", force = TRUE)
