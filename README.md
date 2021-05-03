# Data on new occupation titles and codes in the Dictionary of Occupational Titles, 1964, 1977, 1991, and the US Census, 1980, 1990, and 2000

## About the data and citation
The data available for download on this page identify new occupational categories in the Dictionary of Occupation Titles of 1977 and 1991 and the occupation classification system used by the U.S. Census in 1980, 1990, and 2000. I used these data to identify which workers in census microdata performed the new combinations of activities or techniques that emerged in the U.S. economy in response to new technologies. Please cite the following paper if you find the data here useful.
Alternatively, the data are also available on the [IQSS Dataverse Network](http://hdl.handle.net/1902.1/18021).
Lin, Jeffrey. "Technological Adaptation, Cities, and New Work" (May 2011). Review of Economics and Statistics 93 (2); 554-574. [link](https://doi:10.1162/REST_a_00079)

## Data sources and documentation
* Title changes between the 1964 DOT and the 1977 DOT are constructed using the 1977 DOT, 4th ed. (rtf), and the 1979 Conversion Table of Code and Title Changes (rtf). These files were processed for this paper by physically scanning the original documents and using optical character recognition. Note that these raw text files contain some errors related to the scanning process that were fixed in intermediate steps. The original higher-quality images (in pdf format) are available by request.
* Title changes between the 1977 DOT and the 1991 DOT are constructed using the 1991 DOT, Revised 4th ed. (ICPSR 6100), which includes the 1991 Conversion Table of Code and Title Changes. Note that these raw text files contain some errors related to the scanning process that were fixed in intermediate steps. 
* Title changes between the 1990 and 2000 Census Classified Indexes are constructed using the 1990 Alphabetical Index of Occupations (Stata dta), the 2000 Alphabetical Index of Occupations (xls), and a 2000 database on new census occupational titles (xls).
* IPUMS [county composition files](http://usa.ipums.org/usa/volii/tgeotools.shtml), and [metropolitan and micropolitan statistical areas and components](http://www.census.gov/population/www/metroareas/metrodef.html) from 2003.
* An early comparison of occupation titles and title employment uses the April 1971 CPS (ICPSR 7845).
* Two useful technical papers describing the evolution of census occupation codes are Meyer and Osborne, 2005 (BLS wp #383) and Scopp, 2003 (Census tp #65).
* Some metropolitan area data is aggregated using census summary files from 1970 (ICPSR 8107), 1980 (ICPSR 8229), and 1990 (ICPSR 6271). Other metropolitan area data is aggregated using county data from the U.S. Census City and County Data Books, drawn from Historical, Demographic, Economic, and Social Data: The United States, 1790-2000 (ICPSR 2896).
* U.S. patent grants by county in the 1990s (pdf; U.S. P.T.O.)
* Patent and productivity databases (NBER)

## New occupation titles
* Explanation: These are processed data files that measure new occupational classifications at the "title" level, in the 2000 Census, the 1991 DOT, and the 1977 DOT. 
* Documentation: The construction of these data is described in the article's data appendix. Unfortunately, detailed documentation is not available at this time. They are in Stata .dta format. 
* New titles in the 2000 Census --- new_lin and new_cenx are the measures used and described in the article.
* New titles in the 1991 DOT --- new_convt is the measure used and described in the article. 
* New titles in the 1977 DOT--- newmaster is the measure used and described in the article. 

## Replication files: Processed data and code used in the paper
* New work by census detailed occupation code: Census detailed occupation codes in 1980, 1990, and 2000, with matched new-title counts (Stata dta). These files are ready to merge on detailed occupation code with IPUMS extracts from 1980 (5%), 1990 (1%), and 2000 (5% or 1% unweighted). Each file contains the number of occupation titles and the share of new occupation titles for each detailed occupation. These files are created by collapsing the raw title lists above. Stata code and crosswalks used to generate these files are available by request.
* Geographic data: Data for county-based aggregates, 1970–1990 (Stata dta), created by collapsing IPUMS extracts, census summary files, and county data books. Here is a crosswalk between county-based aggregates and the variable CONSPUMA in IPUMS extracts (Stata dta). With the crosswalk, it is possible to match raw IPUMS data to the county-based aggregate data.
* Data processing: Code (Stata do) for processing raw IPUMS extracts, merging new work variables and city data, and creating regression-ready files. Finished Stata dta file is approximately 2.4 gigabytes. Some changes may be required to get these scripts to work properly on your computer (e.g., changing file paths and commenting out parts that create the occupation and geographic data).
* Code (Stata do) for running first-step regressions to estimate city-year dummies.
* Code (Stata do) for figures and tables.
