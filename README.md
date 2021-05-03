# Data on new occupation titles and codes in the Dictionary of Occupational Titles, 1964, 1977, 1991, and the US Census, 1980, 1990, and 2000

## About the data and citation
<p>The data available for download on this page identify <b>new occupational categories</b> in the <i>Dictionary of Occupation Titles</i> of 1977 and 1991 and the occupation classification system used by the U.S. Census in 1980, 1990, and 2000. I used these data to identify which workers in census microdata performed the new combinations of activities or techniques that emerged in the U.S. economy in response to new technologies. Please cite the following paper if you find the data here useful.</p>
<p>Alternatively, the data are also available on the <a href="http://hdl.handle.net/1902.1/18021" target="_blank" rel="nofollow">IQSS Dataverse Network</a>.</p>
<div style="background-color:#ccc;margin:2em;padding:2em">
<p>Lin, Jeffrey. "<b>Technological Adaptation, Cities, and New Work</b>" (May 2011). <i>Review of Economics and Statistics</i> 93 (2); 554-574. [<a href="http://www.mitpressjournals.org/doi/abs/10.1162/REST_a_00079" target="_blank" rel="nofollow">doi:10.1162/REST_a_00079</a>]</p>

<h2><a name="TOC-Data-sources-and-documentation"></a>Data sources and documentation</h2>
<ul>
<li><b>
Title changes between the 1964 DOT and the 1977 DOT</b> are constructed using the 1977 <a href="DOT_1977_alpha.rtf">DOT, 4th ed.</a> (rtf), and the 1979 <a href="DOT_1979_num.rtf">Conversion Table of Code and Title Changes</a> (rtf). These files were processed for this paper by physically scanning the original documents and using optical character recognition. Note that these raw text files contain some errors related to the scanning process that were fixed in intermediate steps. The original higher-quality images (in pdf format) are available by request. <br/>
</li>
<li><b>
 Title changes between the 1977 DOT and the 1991 DOT</b> are constructed using the 1991 DOT<a href="http://dx.doi.org/10.3886/ICPSR06100" rel="nofollow">, Revised 4th ed.</a> (ICPSR 6100), which includes the <a href="dot_convtbl_icpsr6100.zip" target="_blank">1991 Conversion Table of Code and Title Changes</a>. Note that these raw text files contain some errors related to the scanning process that were fixed in intermediate steps. <br/>
</li>
<li><b>
 Title changes between the 1990 and 2000 Census Classified Indexes</b> are constructed using the 1990 <a href="alpha_index_1990.dta">Alphabetical Index of Occupations</a> (Stata dta), the 2000 <a href="alphaindex2000.xls">Alphabetical Index of Occupations</a> (xls), and a 2000 <a href="Newoccs90-2k.xls">database on new census occupational titles</a> (xls). <br/>
</li>
<li>
<a href="http://usa.ipums.org/usa/" rel="nofollow">IPUMS</a>, <a href="http://usa.ipums.org/usa/volii/tgeotools.shtml" rel="nofollow">county composition files</a>, and <a href="http://www.census.gov/population/www/metroareas/metrodef.html" rel="nofollow">metropolitan and micropolitan statistical areas and components</a> from 2003. <br/>
</li>
<li>
 An early comparison of occupation titles and title employment uses the <a href="http://dx.doi.org/10.3886/ICPSR07845" rel="nofollow">April 1971 CPS</a> (ICPSR 7845). <br/>
</li>
<li>
 Two useful technical papers describing the evolution of census occupation codes are <a href="http://www.bls.gov/osmr/abstract/ec/ec050090.htm" rel="nofollow">Meyer and Osborne</a>, 2005 (BLS wp #383) and <a href="https://www.census.gov/content/dam/Census/library/working-papers/2003/demo/techpaper2000.pdf" rel="nofollow">Scopp</a>, 2003 (Census tp #65). <br/>
</li>
<li>
 Some metropolitan area data is aggregated using census summary files from <a href="http://dx.doi.org/10.3886/ICPSR08107" rel="nofollow">1970</a> (ICPSR 8107), <a href="http://dx.doi.org/10.3886/ICPSR08229" rel="nofollow">1980</a> (ICPSR 8229), and <a href="http://dx.doi.org/10.3886/ICPSR06271" rel="nofollow">1990</a> (ICPSR 6271). Other metropolitan area data is aggregated using county data from the U.S. Census City and County Data Books, drawn from <a href="http://dx.doi.org/10.3886/ICPSR02896" rel="nofollow">Historical, Demographic, Economic, and Social Data: The United States, 1790-2000</a> (ICPSR 2896). <br/>
</li>
<li>
 U.S. <a href="http://www.uspto.gov/web/offices/ac/ido/oeip/taf/county.pdf" rel="nofollow">patent grants by county</a> in the 1990s (pdf; U.S. P.T.O.) <br/>
</li>
<li>
<a href="http://www.nber.org/patents/" rel="nofollow">Patent</a> and <a href="http://www.nber.org/nberces/nbprod96.htm" rel="nofollow">productivity</a> databases (NBER) <br/>
</li>
</ul>
</div>
<div>
<h2><a name="TOC-New-occupation-titles"></a>New occupation titles</h2><div><ul><li><i>Explanation: </i>These are processed data files that measure new occupational classifications at the "title" level, in the 2000 Census, the 1991 DOT, and the 1977 DOT. </li><li><i>Documentation: </i>The construction of these data is described in the article's data appendix. <span style="background-color:transparent">Unfortunately, detailed documentation is not available at this time. </span><span style="background-color:transparent">They are in Stata .dta format. </span></li><li><a href="new_titles_clean.dta">New titles in the 2000 Census</a> --- <b>new_lin</b> and <b>new_cenx</b> are the measures used and described in the article.</li><li><a href="new_titles_1991.dta">New titles in the 1991 DOT</a> --- <b>new_convt</b> is the measure used and described in the article. </li><li><a href="new_titles_1977.dta">New titles in the 1977 DOT</a>--- <b>newmaster</b> is the measure used and described in the article. </li></ul></div>
  
<h2><a name="TOC-Replication-files:-Processed-data-and-code-used-in-the-paper"></a>Replication files: Processed data and code used in the paper </h2>
<ul>
<li><b> New work by census detailed occupation code</b>: Census detailed occupation codes in <a href="new1980-wk.dta">1980</a>, <a href="new1990-wk.dta">1990</a>, and <a href="new2000-wk.dta">2000</a>, with matched new-title counts (Stata dta). These files are ready to merge on detailed occupation code with IPUMS extracts from 1980 (5%), 1990 (1%), and 2000 (5% or 1% unweighted). Each file contains the number of occupation titles and the share of new occupation titles for each detailed occupation. These files are created by collapsing the raw title lists above. Stata code and crosswalks used to generate these files are available by request. <br/>
</li>
<li><b>
Geographic data</b>: Data for <a href="geo-final.dta">county-based aggregates</a>, 1970–1990 (Stata dta), created by collapsing IPUMS extracts, census summary files, and county data books. Here is a <a href="xw-conspuma-cbsa-wk2.dta">crosswalk</a> between county-based aggregates and the variable CONSPUMA in IPUMS extracts (Stata dta). With the crosswalk, it is possible to match raw IPUMS data to the county-based aggregate data. <br/>
</li>
<li><b>
Data processing</b>: <a href="newwork-clean.do">Code</a> (Stata do) for processing raw IPUMS extracts, merging new work variables and city data, and creating regression-ready files. Finished Stata dta file is approximately 2.4 gigabytes. Some changes may be required to get these scripts to work properly on your computer (e.g., changing file paths and commenting out parts that create the occupation and geographic data). <br/>
</li>
<li>
<a href="newwork-analysisw.do">Code</a> (Stata do) for running first-step regressions to estimate city-year dummies. <br/>
</li>
<li>
Code (Stata do) for <a href=newwork-figures.do">figures</a> and <a href="newwork-tablesw.do">tables</a>. <br/>
</li>
</ul>
