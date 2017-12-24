library(affy)
library(hgu133plus2hsentrezgcdf) # cdfname = "HGU133Plus2_Hs_ENTREZG"
library(hgu133plus2hsentrezgprobe)
library(hgu133plus2hsentrezg.db)
library(genefilter)


#Set CDF to use
cdf = "HGU133Plus2_Hs_ENTREZG"

#Read in the raw data from specified Directory of CEL files
dat <- ReadAffy(verbose=TRUE, cdfname=cdf)
celfile_rma <- rma(dat)

#Get the important stuff out of the data - the expression estimates for each array
eset <- exprs(celfile_rma)

#Format values to 5 decimal places
eset = format(eset, digits=5)

#Extract probe ids, entrez symbols, and entrez ids
probes=row.names(eset)

#Entrez_IDs = unlist(mget(probes,hgu133plus2Entrez_IDs, ifnotfound=NA))
Symbols = unlist(mget(probes, hgu133plus2hsentrezgSYMBOL, ifnotfound=NA))
#Genename = unlist(mget(probes, hgu133plus2GENENAME, ifnotfound=NA))

#Combine gene annotations with raw data
eset=cbind(probes,Symbols, eset)
 

#Write RMA-normalized, mapped data to file
#write.table(rma, file = "expression.txt", quote = FALSE, sep = "\t", row.names = FALSE, col.names = TRUE)
write.table(eset, file = "heat_stress_cdf_v19.csv", quote = FALSE, sep = ",", row.names = FALSE, col.names = TRUE)
