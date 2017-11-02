#Load the necessary libraries
library(affy)
library(affyQCReport)

dat <- ReadAffy()
eset <- rma(dat)

QCReport(dat, "QC_report.pdf")


#QC Analysis using arrayQualityMetrics software
require(arrayQualityMetrics)
arrayQualityMetrics(expressionset = eset, outdir = "Report_for_HeatStress_T1_30OCT17", force = TRUE)
