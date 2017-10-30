#Load the necessary libraries
#QC Analysis using arrayQualityMetrics software
require(arrayQualityMetrics)
arrayQualityMetrics(expressionset = eset, outdir = "Report_for_Heat_Stroke_Cels_T1", force = TRUE)
