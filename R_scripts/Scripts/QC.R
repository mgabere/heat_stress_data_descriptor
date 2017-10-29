#Load the necessary libraries
library(marray)
library(simpleaffy)
library(affyQCReport)
library(affyPLM)
library(affy)
library(hgu133plus2.db) # cdf is hgu133plus2
dat <- ReadAffy()
eset <- rma(dat)

#Get the important stuff out of the data - the expression estimates for each array
rma=exprs(eset)
mat<-exprs(eset)

#Format values to 5 decimal places
rma=format(rma, digits=5)

#Extract probe ids, entrez symbols, and entrez ids
probes=row.names(eset)
#Entrez_IDs = unlist(mget(probes,hgu133plus2Entrez_IDs, ifnotfound=NA))
Symbols = unlist(mget(probes, hgu133plus2SYMBOL, ifnotfound=NA))
#Genename = unlist(mget(probes, hgu133plus2GENENAME, ifnotfound=NA))

#Combine gene annotations with raw data
rma=cbind(probes,Symbols, rma)
 

#Write RMA-normalized, mapped data to file
write.table(rma, file = "expression.txt", quote = FALSE, sep = "\t", row.names = FALSE, col.names = TRUE)
#or
write.table(rma, file="expression.xls")

#QC Analysis using arrayQualityMetrics software
#require(arrayQualityMetrics)
#arrayQualityMetrics(expressionset = eset, outdir = "Report_for_Heat_Stroke_Cels_T0", force = TRUE)
