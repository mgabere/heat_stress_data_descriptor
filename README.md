<h2> Heat Stress Data Descriptor</h2>
This is the repository for additional scripts and codes used for analyses described in the Scientific Data article "Gene Expression Profiling of Human Stress".

<hr>

<blockquote>
<p><strong> Gabere MN, Bouchama A, Al Mahri S,  AlDlamy M, Mohammad S, Hussein M.
  Gene Expression Profiling of Human Heat Stress. <em>Scientific Data</em> 2016.</strong></p>
</blockquote>


<h2> Data availability</h2>
<p>Data is available in GEO under the accession number <a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE90763">GSE90763</a></p>

<h2>Software used</h2>
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
<li><a href="/stephenturner/langouetastrie-scidata2016-chicken-rnaseq-retina-code/blob/master/code/fastqc.sh">Quality assessment with FastQC</a></li>
<li><a href="/stephenturner/langouetastrie-scidata2016-chicken-rnaseq-retina-code/blob/master/code/star.sh">Alignment with STAR</a></li>
<li><a href="/stephenturner/langouetastrie-scidata2016-chicken-rnaseq-retina-code/blob/master/code/featurecounts.sh">Quantitation with featureCounts</a></li>
<li><a href="/stephenturner/langouetastrie-scidata2016-chicken-rnaseq-retina-code/blob/master/code/deseq2.R">Normalization, visualization, and differential expression analysis with DESeq2</a></li>
</ol>


  </body>
</html>

