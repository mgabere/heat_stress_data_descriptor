library(affy)
library(hgu133plus2hsentrezgcdf) # cdfname = "HGU133Plus2_Hs_ENTREZG"
library(hgu133plus2hsentrezgprobe)
library(hgu133plus2hsentrezg.db)

#Set CDF to use
cdf = "HGU133Plus2_Hs_ENTREZG"

#Read in the raw data from specified Directory of CEL files
dat <- ReadAffy(verbose=TRUE, cdfname = cdf)
celfile_rma <- rma(dat)

#Get the important stuff out of the data - the expression estimates for each array
eset <- exprs(celfile_rma)

#Format values to 5 decimal places
eset = format(eset, digits=5)

#Extract probe ids, entrez symbols, and entrez ids
probes=row.names(eset)

Symbols = unlist(mget(probes, hgu133plus2hsentrezgSYMBOL, ifnotfound=NA))

#Combine gene annotations with raw data
eset=cbind(probes,Symbols, eset)
 

#Write RMA-normalized, mapped data to file
write.table(eset, file = "Heat_stress_expression_brainy_V19.csv", quote = FALSE, sep = ",", row.names = FALSE, col.names = TRUE)

