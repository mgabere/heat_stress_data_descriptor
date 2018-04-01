<h2> Data Descriptor: Gene Expression Profiling of Human Peripheral Blood Mononuclear Cells Exposed to Heat Stress</h2>
This is the repository for additional scripts and codes used for analyses described in the Scientific Data article "Gene Expression Profiling of Human Stress".

<hr>

<blockquote>
<p><strong> Gabere M, Al Mahri S,  Abdullah M, Mohammad S, Aziz MA, Bouchama A and Hussein M.
  Gene Expression Profiling of Human Peripheral Blood Mononuclear Cells Exposed to Heat Stress. <em>Scientific Data</em> 2018.</strong></p>
</blockquote>


<h2> Data availability</h2>
<p>Data is available in GEO under the accession number <a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE90763">GSE90763</a></p>

<h2>Software and custom CDF used</h2>
 <table style="width:100%">
  <tr>
    <th>Software</th>
    <th>Version</th>
    <th>URL</th>
  </tr>
  <tr>
    <td>ArrayQualityMetrics</td>
    <td>3.2.3</td>
    <td><a href="https://bioconductor.org/packages/release/bioc/html/arrayQualityMetrics.html">https://bioconductor.org/packages/release/bioc/html/arrayQualityMetrics.html</a></td>
  </tr>
  <tr>
   <td>Affy</td>
   <td>1.44</td>
   <td><a href="http://bioconductor.org/packages/3.0/bioc/html/affy.html">http://bioconductor.org/packages/3.0/bioc/html/affy.html</a></td>
  </tr>
  <tr>
  <td>Custom CDF</td>
  <td>19.0.0</td>
  <td><a href="http://mbni.org/customcdf/19.0.0/entrezg.download/hgu133plus2hsentrezgcdf_19.0.0.tar.gz">http://mbni.org/customcdf/19.0.0/entrezg.download/hgu133plus2hsentrezgcdf_19.0.0.tar.gz</a></td>  
  </tr>
  <tr>
    <td>Custom Probe</td>
    <td>19.0.0</td>
    <td><a href="http://mbni.org/customcdf/19.0.0/entrezg.download/hgu133plus2hsentrezgprobe_19.0.0.tar.gz">http://mbni.org/customcdf/19.0.0/entrezg.download/hgu133plus2hsentrezgprobe_19.0.0.tar.gz </a></td>
  </tr>
   <tr>
    <td>Custom DB</td>
    <td>19.0.0</td>
    <td><a href="http://mbni.org/customcdf/19.0.0/entrezg.download/hgu133plus2hsentrezg.db_19.0.0.tar.gz">http://mbni.org/customcdf/19.0.0/entrezg.download/hgu133plus2hsentrezg.db_19.0.0.tar.gz </a></td>
  </tr>
    <tr>
    <td>GLMM SAS</td>
    <td>9.3.0</td>
    <td><a href="http://support.sas.com/documentation/cdl/en/statug/66859/HTML/default/viewer.htm#statug_glimmix_details26.htm">http://support.sas.com/documentation/cdl/en/statug/66859/HTML/default/viewer.htm#statug_glimmix_details26.htm/a></td>
  </tr>
</table> 

<h2>Data analysis code</h2>
<p>Code used for all of the quality assessment and data analysis steps are available in each of the scripts below.</p>
<ol>
<li><a href="https://github.com/mgabere/heat_stress_data_descriptor/blob/master/scripts/Quality_control/QC_T0.R">Quality assessment for Time T0 with ArrayQualityMetrics</a></li>
<li><a href="https://github.com/mgabere/heat_stress_data_descriptor/blob/master/scripts/Quality_control/QC_T1.R">Quality assessment for Time T1 with ArrayQualityMetrics</a></li>
<li><a href="https://github.com/mgabere/heat_stress_data_descriptor/blob/master/scripts/Quality_control/QC_T2.R">Quality assessment for Time T2 with ArrayQualityMetrics</a></li>
<li><a href="https://github.com/mgabere/heat_stress_data_descriptor/blob/master/scripts/expression/brainarray_cdf.R">Quantile normalization and background correction using custom CDF</a></li>
<li><a href="https://github.com/mgabere/heat_stress_data_descriptor/blob/master/scripts/expression/GEE_analysis_25percent_final_pub2018.sas">Differential expression analysis with SAS Generalized Linear Mix Model</a></li>
<li><a href="https://github.com/mgabere/heat_stress_data_descriptor/blob/master/scripts/expression/RTPCR_stats.sas">Statistics for qPCR</a></li>
</ol>


  </body>
</html>

