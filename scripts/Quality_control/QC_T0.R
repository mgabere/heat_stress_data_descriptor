#Load the necessary libraries
library(affy)
library(affyQCReport)

dat <- ReadAffy()
eset <- rma(dat)

QCReport(dat, "QC_report.pdf")


#QC Analysis using arrayQualityMetrics software
require(arrayQualityMetrics)
arrayQualityMetrics(expressionset = eset, outdir = "Report_for_HeatStress_T0_1NOV17", force = TRUE)
