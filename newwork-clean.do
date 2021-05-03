cd /Users/jeff/Documents/Academic/Research/Innovation.2008/

/* ~/Documents/Academic/Research/Innovation.2008/do/newwork-clean.do */
gen byte educat = 2 if hs==1
replace educat = 3 if sc==1
replace educat = 4 if col==1
replace educat = 1 if educat==. & educrec!=0
gen ind_mfg=ind1990>=100 & ind1990<=392
gen ind_tcu=ind1990>=400 & ind1990<=472
gen ind_trd=ind1990>=500 & ind1990<=691
gen ind_svc=ind1990>=700 & ind1990<=893
gen ind_pub=ind1990>=900 & ind1990<=932
gen occ_mpr=occ1990>=003 & occ1990<=200
gen occ_tsa=occ1990>=203 & occ1990<=389
gen occ_svc=occ1990>=405 & occ1990<=469
gen occ_pcr=occ1990>=503 & occ1990<=699
gen occ_ofl=occ1990>=703 & occ1990<=889

gen byte self = .
	(ind1990>=500 & ind1990<=571) | (ind1990>=700 & ind1990<=711) | ///
	ind1990==800 | (ind1990>=812 & ind1990<=893)
	inctot relate sex marst race hispan citizen yrimmig yrsusa2 educrec ///
	empstat labforce classwk qocc
capture drop educ99
capture drop higraded
end

* Program to create migration dummy
	gen statecntygp = statefip*100+cntygp98
	gen migstatecntygp = migplac5*100+migcogrp if migplac5>=1 & migplac5<=56
	gen byte mig=statecntygp!=migstatecntygp if migstatecntygp!=.
	replace mig=0 if migcogrp==999
	drop migrat5d migplac5 migmet5 migcogrp migstatecntygp
end

* FINAL MERGE
capture program drop finalmerge
program define finalmerge
use dta/ipums/`1'/`1'-wk1.dta, clear
sort geoid
*/
/*
sort geoid educat
merge geoid educat using tmp/geo-ed`1'.dta, nok
tab _merge
drop _merge
*/
* This is work file ready for regressions
end


/* NEW OCCUPATION CODES PROCESSING */
* This change to new work file accommodates 5% IPUMS occ codes
xtile recq = rec, n(5)
xtile nwq = new_lin, n(5)

* Clean new work 1991 file
insheet using "/Users/jeff/Documents/Academic/Research/Data/Census Occupation Codes/IPUMS Crosswalks/occ1990_xwalk.txt", clear
keep v7 v6
ren v7 occ1990
ren v6 occ1980
destring occ1990, replace force
destring occ1980, replace force
drop if occ1990==. | occ1980==.
sort occ1980
save tmp/xw-occ90-occ80.dta, replace

use dta/new91-wk.dta, clear
ren occ occ1980
sort occ1980
merge occ1980 using tmp/xw-occ90-occ80.dta, nok
tab _m
drop _m
replace occ1990=865 if occ1980==864
ren occ1990 occ
collapse (sum) dot91_titles new_dlu78 new_convt new_convt91 (mean) newtsh* [w=dot91_titles], by(occ)
xtile recq = dot91_titles, n(5)
xtile nwq = new_convt, n(5)
sort occ
save tmp/new1990-wk.dta, replace

* Clean new work 1977 file
use dta/new77-wk.dta, clear
collapse (sum) dot77_titles new newmaster (mean) new*tsh [w=dot77_titles], by(occ)
xtile recq = dot77_titles, n(5)
xtile nwq = newmaster_tsh, n(5)
sort occ
save tmp/new1980-wk.dta, replace


/* GEO PROCESSING */
*do do/newwork-geoid.do


cd /Users/jeff/Documents/Academic/Research/Innovation.2008/
log using log/newwork-clean.log, replace

use dta/ipums/2000/2000-raw.dta, clear

use dta/ipums/1980/1980-raw.dta, clear
recbasic
migrate98
compress
save dta/ipums/1980/1980-wk1.dta, replace
sum


finalmerge 1990 1980
finalmerge 1980 1970

/*

/* CREATE POOLED FILE */
use dta/ipums/2000/2000-wk2
append using dta/ipums/1990/1990-wk2
append using dta/ipums/1980/1980-wk2
compress
save dta/ipums/pooled-wk1, replace

*/

log close
clear