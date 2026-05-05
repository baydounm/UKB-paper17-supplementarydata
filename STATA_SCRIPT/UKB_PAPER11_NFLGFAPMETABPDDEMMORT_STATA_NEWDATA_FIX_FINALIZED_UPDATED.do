clear all

set niceness 0
set maxvar 100000, permanently
set segmentsize 3g, permanently
set max_memory 100g, permanently



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT1A.smcl",replace

cd "D:\UKB_DATA\UKB_DATA_BASKET3\DATA\"

clear
forval x=1(1)50 {
use n_eid s_31_0_0 n_21022_0_0  n_34_0_0 s_52_0_0 s_6138_0_0 n_22189_0_0 s_53_*_0 s_40000_0_0 s_40000_1_0  s_21000_0_0 s_709_0_0 s_738_0_0   s_1239_0_0 s_3456_0_0 n_22507_0_0  s_1279_0_0 s_1269_0_0 n_20162_0_0 s_1558_0_0 n_100022_0_0 s_981_0_0 s_971_0_0 s_894_0_0 s_884_0_0 s_914_0_0 s_904_0_0 s_1289_0_0 s_1299_0_0 s_1309_0_0 s_1319_0_0 s_1329_0_0 s_1339_0_0 s_1349_0_0 s_1359_0_0 s_1369_0_0 s_1379_0_0 s_1389_0_0 s_6144_0_0 s_6144_2_0 s_6144_3_0 s_6144_1_0 s_10855_0_0 s_1408_0_0 s_1418_0_0 s_1428_0_0 s_1438_0_0 s_1448_0_0 s_2654_0_0   s_1458_0_0 s_1468_0_0 s_1478_0_0 s_1548_0_0 n_30890_0_0 n_30070_0_0 s_1031_0_0 s_6160_0_* s_2110_0_0 n_135_0_0 n_134_0_0 s_2178_0_0 n_21001_0_0 n_21001_0_0 n_48_0_0 n_49_0_0 n_30600_0_0 n_30710_0_0  n_30690_0_0 n_30760_0_0 n_30750_0_0 n_102_0_0 n_4080_0_0 n_4079_0_0 n_21022_0_0 n_20009_0_* n_20002_0_* s_41202_0_* n_34_0_0 s_52_0_0 s_53_0_0 s_40000_*_0  n_40007_*_0 s_42018_0_0 s_42020_0_0  n_20023_0_0 n_399_0_1 n_399_0_2  s_400_0_1 s_400_0_2 s_20003_0_* s_20004_0_* s_6153_0_0  n_25010_2_0 n_25008_2_0 n_25006_2_0 n_25006_2_0 n_2501*_2_0 n_2502*_2_0 n_257*_2_0 n_258*_2_0 n_259*_2_0  n_26521_2_0 n_25010_3_0 n_25008_3_0 n_25006_3_0 n_25006_3_0 n_2501*_3_0 n_2502*_3_0 n_257*_3_0 n_258*_3_0 n_259*_3_0  n_26521_3_0  s_53_0_0 s_53_2_0 n_250*_2_0 n_251*_2_0 n_252*_2_0 n_253*_2_0 n_254*_2_0 n_250*_3_0 n_251*_3_0 n_252*_3_0 n_253*_3_0 n_254*_3_0 n_262*_0_0 s_2443_0_0 s_1160_0_0 n_20023_0_0 s_42018_0_0 s_42020_0_0 n_26521_2_0   s_23074_0_0 s_23050_0_0 s_23051_0_0  s_23052_0_0 s_23053_0_0 s_23054_0_0 s_23055_0_0 s_23058_0_0 s_23059_0_0 s_23060_0_0 s_23061_0_0 s_23062_0_0 s_23063_0_0 s_23064_0_0 s_23065_0_0 s_23066_0_0 s_23067_0_0 s_23075_0_0 s_23069_0_0 s_23071_0_0 n_23039_0_0 n_23043_0_0 n_23041_0_0 n_23044_0_0 n_23040_0_0 s_6149_0_0 s_42030_0_0 s_42031_0_0 s_42032_0_0 s_42033_0_0 s_42034_0_0 s_42035_0_0 s_42036_0_0 s_42037_0_0 s_20277_0_0 s_20119_0_0  n_137_0_0 s_6177_0_* s_6153_0_* s_6155_0_* s_6179_0_* n_234* n_235* n_236* s_237* s_238* s_239* s_23074_0_0 s_23050_0_0 s_23051_0_0  s_23052_0_0 s_23053_0_0 s_23054_0_0 s_23055_0_0 s_23058_0_0 s_23059_0_0 s_23060_0_0 s_23061_0_0 s_23062_0_0 s_23063_0_0 s_23064_0_0 s_23065_0_0 s_23066_0_0 s_23067_0_0 s_23075_0_0 s_23069_0_0 s_23071_0_0 n_23039_0_0 n_23040_0_0 n_23041_0_0 n_23042_0_0 n_23043_0_0  n_23044_0_0  n_24016_0_0 n_24017_0_0 n_24018_0_0 n_24003_0_0 n_24004_0_0 n_24019_0_0 n_24005_0_0 n_24007_0_0 n_24006_0_0 n_24008_0_0   using "D:\UKB_DATA\UKB_DATA_BASKET3\DATA\chunk`x'final.dta"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\chunk`x'small.dta", replace
}


cd "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\"

use "chunk1small.dta",replace
append using "chunk2small.dta"
append using "chunk3small.dta"
append using "chunk4small.dta"
append using "chunk5small.dta"
append using "chunk6small.dta"
append using "chunk7small.dta"
append using "chunk8small.dta"
append using "chunk9small.dta"
append using "chunk10small.dta"
append using "chunk11small.dta"
append using "chunk12small.dta"
append using "chunk13small.dta"
append using "chunk14small.dta"
append using "chunk15small.dta"
append using "chunk16small.dta"
append using "chunk17small.dta"
append using "chunk18small.dta"
append using "chunk19small.dta"
append using "chunk20small.dta"
append using "chunk21small.dta"
append using "chunk22small.dta"
append using "chunk23small.dta"
append using "chunk24small.dta"
append using "chunk25small.dta"
append using "chunk26small.dta"
append using "chunk27small.dta"
append using "chunk28small.dta"
append using "chunk29small.dta"
append using "chunk30small.dta"
append using "chunk31small.dta"
append using "chunk32small.dta"
append using "chunk33small.dta"
append using "chunk34small.dta"
append using "chunk35small.dta"
append using "chunk36small.dta"
append using "chunk37small.dta"
append using "chunk38small.dta"
append using "chunk39small.dta"
append using "chunk40small.dta"
append using "chunk41small.dta"
append using "chunk42small.dta"
append using "chunk43small.dta"
append using "chunk44small.dta"
append using "chunk45small.dta"
append using "chunk46small.dta"
append using "chunk47small.dta"
append using "chunk48small.dta"
append using "chunk49small.dta"
append using "chunk50small.dta"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKB", replace

cd "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA"


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT1B.smcl",replace


clear
forval x=1(1)50 {
use n_eid s_130* s_131* s_132* using "D:\UKB_DATA\UKB_DATA_BASKET3\DATA\chunk`x'final.dta"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\chunk`x'smalldates.dta", replace
}


cd "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\"

use "chunk1smalldates.dta",replace
append using "chunk2smalldates.dta"
append using "chunk3smalldates.dta"
append using "chunk4smalldates.dta"
append using "chunk5smalldates.dta"
append using "chunk6smalldates.dta"
append using "chunk7smalldates.dta"
append using "chunk8smalldates.dta"
append using "chunk9smalldates.dta"
append using "chunk10smalldates.dta"
append using "chunk11smalldates.dta"
append using "chunk12smalldates.dta"
append using "chunk13smalldates.dta"
append using "chunk14smalldates.dta"
append using "chunk15smalldates.dta"
append using "chunk16smalldates.dta"
append using "chunk17smalldates.dta"
append using "chunk18smalldates.dta"
append using "chunk19smalldates.dta"
append using "chunk20smalldates.dta"
append using "chunk21smalldates.dta"
append using "chunk22smalldates.dta"
append using "chunk23smalldates.dta"
append using "chunk24smalldates.dta"
append using "chunk25smalldates.dta"
append using "chunk26smalldates.dta"
append using "chunk27smalldates.dta"
append using "chunk28smalldates.dta"
append using "chunk29smalldates.dta"
append using "chunk30smalldates.dta"
append using "chunk31smalldates.dta"
append using "chunk32smalldates.dta"
append using "chunk33smalldates.dta"
append using "chunk34smalldates.dta"
append using "chunk35smalldates.dta"
append using "chunk36smalldates.dta"
append using "chunk37smalldates.dta"
append using "chunk38smalldates.dta"
append using "chunk39smalldates.dta"
append using "chunk40smalldates.dta"
append using "chunk41smalldates.dta"
append using "chunk42smalldates.dta"
append using "chunk43smalldates.dta"
append using "chunk44smalldates.dta"
append using "chunk45smalldates.dta"
append using "chunk46smalldates.dta"
append using "chunk47smalldates.dta"
append using "chunk48smalldates.dta"
append using "chunk49smalldates.dta"
append using "chunk50smalldates.dta"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES", replace

capture log close
log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT2A.smcl",replace


//STEP 1: GENERATE AGE, TIMES, SEX, RACE AND OTHER DEMGRAPHICS VARIABLE//

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKB", clear
sort n_eid
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\withdrawals", clear
capture drop _merge
sort n_eid
save, replace



use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKB",clear
capture drop _merge
sort n_eid
save, replace

merge n_eid using withdrawals
keep if withdrew==.
save SMALLERDATASETUKBfin, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT2B.smcl",replace

************************************************************************************************************************

**Format time-series variables using the do file**

use n_eid withdrew s_53* s_40000* n_40007*  s_42018_0_0 s_42018_0_0 s_42020_0_0 s_42030_0_0 s_42032_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin.dta",clear
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",replace


capture gen double ts_53_0_0 = date(s_53_0_0,"YMD")
capture format ts_53_0_0 %td
capture label variable ts_53_0_0 "Date of attending assessment centre"

capture gen double ts_53_1_0 = date(s_53_1_0,"YMD")
capture format ts_53_1_0 %td
capture label variable ts_53_1_0 "Date of attending assessment centre"

capture gen double ts_53_2_0 = date(s_53_2_0,"YMD")
capture format ts_53_2_0 %td
capture label variable ts_53_2_0 "Date of attending assessment centre"

capture gen double ts_53_3_0 = date(s_53_3_0,"YMD")
capture format ts_53_3_0 %td
capture label variable ts_53_3_0 "Date of attending assessment centre"

capture gen double ts_40000_0_0 = date(s_40000_0_0,"YMD")
capture format ts_40000_0_0 %td
capture label variable ts_40000_0_0 "Date of death"

capture gen double ts_40000_1_0 = date(s_40000_1_0,"YMD")
capture format ts_40000_1_0 %td
capture label variable ts_40000_1_0 "Date of death"


format %18.14f n_40007_0_0
format %18.14f n_40007_1_0

**Dementia and Alzheimer's Disease**

capture gen double ts_42018_0_0 = date(s_42018_0_0,"YMD")
capture format ts_42018_0_0 %td
capture label variable ts_42018_0_0 "Date of all cause dementia report"

capture gen double ts_42020_0_0 = date(s_42020_0_0,"YMD")
capture format ts_42020_0_0 %td
capture label variable ts_42020_0_0 "Date of alzheimers disease report"


**Parkinson's and all-cause Parkinsonism***

capture gen double ts_42030_0_0 = date(s_42030_0_0,"YMD")
capture format ts_42030_0_0 %td
capture label variable ts_42030_0_0 "Date of all cause parkinsonism report"

capture gen double ts_42032_0_0 = date(s_42032_0_0,"YMD")
capture format ts_42032_0_0 %td
capture label variable ts_42032_0_0 "Date of parkinsons disease report"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",replace
 



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT2C.smcl",replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES.dta",clear
 

**0000 to 0344***
gen double ts_130000_0_0 = date(s_130000_0_0,"YMD")
format ts_130000_0_0 %td
capture drop s_130000_0_0
label variable ts_130000_0_0 "Date A00 first reported (cholera)"
gen double ts_130002_0_0 = date(s_130002_0_0,"YMD")
format ts_130002_0_0 %td
capture drop s_130002_0_0
label variable ts_130002_0_0 "Date A01 first reported (typhoid and paratyphoid fevers)"
gen double ts_130004_0_0 = date(s_130004_0_0,"YMD")
format ts_130004_0_0 %td
capture drop s_130004_0_0
label variable ts_130004_0_0 "Date A02 first reported (other salmonella infections)"
gen double ts_130006_0_0 = date(s_130006_0_0,"YMD")
format ts_130006_0_0 %td
capture drop s_130006_0_0
label variable ts_130006_0_0 "Date A03 first reported (shigellosis)"
gen double ts_130008_0_0 = date(s_130008_0_0,"YMD")
format ts_130008_0_0 %td
capture drop s_130008_0_0
label variable ts_130008_0_0 "Date A04 first reported (other bacterial intestinal infections)"
gen double ts_130010_0_0 = date(s_130010_0_0,"YMD")
format ts_130010_0_0 %td
capture drop s_130010_0_0
label variable ts_130010_0_0 "Date A05 first reported (other bacterial foodborne intoxications)"
gen double ts_130012_0_0 = date(s_130012_0_0,"YMD")
format ts_130012_0_0 %td
capture drop s_130012_0_0
label variable ts_130012_0_0 "Date A06 first reported (amoebiasis)"
gen double ts_130014_0_0 = date(s_130014_0_0,"YMD")
format ts_130014_0_0 %td
capture drop s_130014_0_0
label variable ts_130014_0_0 "Date A07 first reported (other protozoal intestinal diseases)"
gen double ts_130016_0_0 = date(s_130016_0_0,"YMD")
format ts_130016_0_0 %td
capture drop s_130016_0_0
label variable ts_130016_0_0 "Date A08 first reported (viral and other specified intestinal infections)"
gen double ts_130018_0_0 = date(s_130018_0_0,"YMD")
format ts_130018_0_0 %td
capture drop s_130018_0_0
label variable ts_130018_0_0 "Date A09 first reported (diarrhoea and gastro-enteritis of presumed infectious origin)"
gen double ts_130020_0_0 = date(s_130020_0_0,"YMD")
format ts_130020_0_0 %td
capture drop s_130020_0_0
label variable ts_130020_0_0 "Date A15 first reported (respiratory tuberculosis, bacteriologically and histologically confirmed)"
gen double ts_130022_0_0 = date(s_130022_0_0,"YMD")
format ts_130022_0_0 %td
capture drop s_130022_0_0
label variable ts_130022_0_0 "Date A16 first reported (respiratory tuberculosis, not confirmed bacteriologically or histologically)"
gen double ts_130024_0_0 = date(s_130024_0_0,"YMD")
format ts_130024_0_0 %td
capture drop s_130024_0_0
label variable ts_130024_0_0 "Date A17 first reported (tuberculosis of nervous system)"
gen double ts_130026_0_0 = date(s_130026_0_0,"YMD")
format ts_130026_0_0 %td
capture drop s_130026_0_0
label variable ts_130026_0_0 "Date A18 first reported (tuberculosis of other organs)"
gen double ts_130028_0_0 = date(s_130028_0_0,"YMD")
format ts_130028_0_0 %td
capture drop s_130028_0_0
label variable ts_130028_0_0 "Date A19 first reported (miliary tuberculosis)"
gen double ts_130030_0_0 = date(s_130030_0_0,"YMD")
format ts_130030_0_0 %td
capture drop s_130030_0_0
label variable ts_130030_0_0 "Date A20 first reported (plague)"
gen double ts_130034_0_0 = date(s_130034_0_0,"YMD")
format ts_130034_0_0 %td
capture drop s_130034_0_0
label variable ts_130034_0_0 "Date A22 first reported (anthrax)"
gen double ts_130036_0_0 = date(s_130036_0_0,"YMD")
format ts_130036_0_0 %td
capture drop s_130036_0_0
label variable ts_130036_0_0 "Date A23 first reported (brucellosis)"
gen double ts_130038_0_0 = date(s_130038_0_0,"YMD")
format ts_130038_0_0 %td
capture drop s_130038_0_0
label variable ts_130038_0_0 "Date A24 first reported (glanders and melioidosis)"
gen double ts_130040_0_0 = date(s_130040_0_0,"YMD")
format ts_130040_0_0 %td
capture drop s_130040_0_0
label variable ts_130040_0_0 "Date A25 first reported (rat-bite fevers)"
gen double ts_130042_0_0 = date(s_130042_0_0,"YMD")
format ts_130042_0_0 %td
capture drop s_130042_0_0
label variable ts_130042_0_0 "Date A26 first reported (erysipeloid)"
gen double ts_130044_0_0 = date(s_130044_0_0,"YMD")
format ts_130044_0_0 %td
capture drop s_130044_0_0
label variable ts_130044_0_0 "Date A27 first reported (leptospirosis)"
gen double ts_130046_0_0 = date(s_130046_0_0,"YMD")
format ts_130046_0_0 %td
capture drop s_130046_0_0
label variable ts_130046_0_0 "Date A28 first reported (other zoonotic bacterial diseases, not elsewhere classified)"
gen double ts_130048_0_0 = date(s_130048_0_0,"YMD")
format ts_130048_0_0 %td
capture drop s_130048_0_0
label variable ts_130048_0_0 "Date A30 first reported (leprosy [hansens disease])"
gen double ts_130050_0_0 = date(s_130050_0_0,"YMD")
format ts_130050_0_0 %td
capture drop s_130050_0_0
label variable ts_130050_0_0 "Date A31 first reported (infection due to other mycobacteria)"
gen double ts_130052_0_0 = date(s_130052_0_0,"YMD")
format ts_130052_0_0 %td
capture drop s_130052_0_0
label variable ts_130052_0_0 "Date A32 first reported (listeriosis)"
gen double ts_130054_0_0 = date(s_130054_0_0,"YMD")
format ts_130054_0_0 %td
capture drop s_130054_0_0
label variable ts_130054_0_0 "Date A33 first reported (tetanus neonatorum)"
gen double ts_130058_0_0 = date(s_130058_0_0,"YMD")
format ts_130058_0_0 %td
capture drop s_130058_0_0
label variable ts_130058_0_0 "Date A35 first reported (other tetanus)"
gen double ts_130060_0_0 = date(s_130060_0_0,"YMD")
format ts_130060_0_0 %td
capture drop s_130060_0_0
label variable ts_130060_0_0 "Date A36 first reported (diphtheria)"
gen double ts_130062_0_0 = date(s_130062_0_0,"YMD")
format ts_130062_0_0 %td
capture drop s_130062_0_0
label variable ts_130062_0_0 "Date A37 first reported (whooping cough)"
gen double ts_130064_0_0 = date(s_130064_0_0,"YMD")
format ts_130064_0_0 %td
capture drop s_130064_0_0
label variable ts_130064_0_0 "Date A38 first reported (scarlet fever)"
gen double ts_130066_0_0 = date(s_130066_0_0,"YMD")
format ts_130066_0_0 %td
capture drop s_130066_0_0
label variable ts_130066_0_0 "Date A39 first reported (meningococcal infection)"
gen double ts_130068_0_0 = date(s_130068_0_0,"YMD")
format ts_130068_0_0 %td
capture drop s_130068_0_0
label variable ts_130068_0_0 "Date A40 first reported (streptococcal septicaemia)"
gen double ts_130070_0_0 = date(s_130070_0_0,"YMD")
format ts_130070_0_0 %td
capture drop s_130070_0_0
label variable ts_130070_0_0 "Date A41 first reported (other septicaemia)"
gen double ts_130072_0_0 = date(s_130072_0_0,"YMD")
format ts_130072_0_0 %td
capture drop s_130072_0_0
label variable ts_130072_0_0 "Date A42 first reported (actinomycosis)"
gen double ts_130074_0_0 = date(s_130074_0_0,"YMD")
format ts_130074_0_0 %td
capture drop s_130074_0_0
label variable ts_130074_0_0 "Date A43 first reported (nocardiosis)"
gen double ts_130076_0_0 = date(s_130076_0_0,"YMD")
format ts_130076_0_0 %td
capture drop s_130076_0_0
label variable ts_130076_0_0 "Date A44 first reported (bartonellosis)"
gen double ts_130078_0_0 = date(s_130078_0_0,"YMD")
format ts_130078_0_0 %td
capture drop s_130078_0_0
label variable ts_130078_0_0 "Date A46 first reported (erysipelas)"
gen double ts_130080_0_0 = date(s_130080_0_0,"YMD")
format ts_130080_0_0 %td
capture drop s_130080_0_0
label variable ts_130080_0_0 "Date A48 first reported (other bacterial diseases, not elsewhere classified)"
gen double ts_130082_0_0 = date(s_130082_0_0,"YMD")
format ts_130082_0_0 %td
capture drop s_130082_0_0
label variable ts_130082_0_0 "Date A49 first reported (bacterial infection of unspecified site)"
gen double ts_130084_0_0 = date(s_130084_0_0,"YMD")
format ts_130084_0_0 %td
capture drop s_130084_0_0
label variable ts_130084_0_0 "Date A50 first reported (congenital syphilis)"
gen double ts_130086_0_0 = date(s_130086_0_0,"YMD")
format ts_130086_0_0 %td
capture drop s_130086_0_0
label variable ts_130086_0_0 "Date A51 first reported (early syphilis)"
gen double ts_130088_0_0 = date(s_130088_0_0,"YMD")
format ts_130088_0_0 %td
capture drop s_130088_0_0
label variable ts_130088_0_0 "Date A52 first reported (late syphilis)"
gen double ts_130090_0_0 = date(s_130090_0_0,"YMD")
format ts_130090_0_0 %td
capture drop s_130090_0_0
label variable ts_130090_0_0 "Date A53 first reported (other and unspecified syphilis)"
gen double ts_130092_0_0 = date(s_130092_0_0,"YMD")
format ts_130092_0_0 %td
capture drop s_130092_0_0
label variable ts_130092_0_0 "Date A54 first reported (gonococcal infection)"
gen double ts_130094_0_0 = date(s_130094_0_0,"YMD")
format ts_130094_0_0 %td
capture drop s_130094_0_0
label variable ts_130094_0_0 "Date A55 first reported (chlamydial lymphogranuloma (venereum))"
gen double ts_130096_0_0 = date(s_130096_0_0,"YMD")
format ts_130096_0_0 %td
capture drop s_130096_0_0
label variable ts_130096_0_0 "Date A56 first reported (other sexually transmitted chlamydial diseases)"
gen double ts_130100_0_0 = date(s_130100_0_0,"YMD")
format ts_130100_0_0 %td
capture drop s_130100_0_0
label variable ts_130100_0_0 "Date A58 first reported (granuloma inguinale)"
gen double ts_130102_0_0 = date(s_130102_0_0,"YMD")
format ts_130102_0_0 %td
capture drop s_130102_0_0
label variable ts_130102_0_0 "Date A59 first reported (trichomoniasis)"
gen double ts_130104_0_0 = date(s_130104_0_0,"YMD")
format ts_130104_0_0 %td
capture drop s_130104_0_0
label variable ts_130104_0_0 "Date A60 first reported (anogenital herpesviral [herpes simplex] infections)"
gen double ts_130106_0_0 = date(s_130106_0_0,"YMD")
format ts_130106_0_0 %td
capture drop s_130106_0_0
label variable ts_130106_0_0 "Date A63 first reported (other predominantly sexually transmitted diseases, not elsewhere classified)"
gen double ts_130108_0_0 = date(s_130108_0_0,"YMD")
format ts_130108_0_0 %td
capture drop s_130108_0_0
label variable ts_130108_0_0 "Date A64 first reported (unspecified sexually transmitted disease)"
gen double ts_130112_0_0 = date(s_130112_0_0,"YMD")
format ts_130112_0_0 %td
capture drop s_130112_0_0
label variable ts_130112_0_0 "Date A66 first reported (yaws)"
gen double ts_130114_0_0 = date(s_130114_0_0,"YMD")
format ts_130114_0_0 %td
capture drop s_130114_0_0
label variable ts_130114_0_0 "Date A67 first reported (pinta [carate])"
gen double ts_130116_0_0 = date(s_130116_0_0,"YMD")
format ts_130116_0_0 %td
capture drop s_130116_0_0
label variable ts_130116_0_0 "Date A68 first reported (relapsing fevers)"
gen double ts_130118_0_0 = date(s_130118_0_0,"YMD")
format ts_130118_0_0 %td
capture drop s_130118_0_0
label variable ts_130118_0_0 "Date A69 first reported (other spirochaetal infections)"
gen double ts_130120_0_0 = date(s_130120_0_0,"YMD")
format ts_130120_0_0 %td
capture drop s_130120_0_0
label variable ts_130120_0_0 "Date A70 first reported (chlamydia psittaci infection)"
gen double ts_130122_0_0 = date(s_130122_0_0,"YMD")
format ts_130122_0_0 %td
capture drop s_130122_0_0
label variable ts_130122_0_0 "Date A71 first reported (trachoma)"
gen double ts_130124_0_0 = date(s_130124_0_0,"YMD")
format ts_130124_0_0 %td
capture drop s_130124_0_0
label variable ts_130124_0_0 "Date A74 first reported (other diseases caused by chlamydiae)"
gen double ts_130126_0_0 = date(s_130126_0_0,"YMD")
format ts_130126_0_0 %td
capture drop s_130126_0_0
label variable ts_130126_0_0 "Date A75 first reported (typhus fever)"
gen double ts_130128_0_0 = date(s_130128_0_0,"YMD")
format ts_130128_0_0 %td
capture drop s_130128_0_0
label variable ts_130128_0_0 "Date A77 first reported (spotted fever [tick-borne rickettsioses])"
gen double ts_130130_0_0 = date(s_130130_0_0,"YMD")
format ts_130130_0_0 %td
capture drop s_130130_0_0
label variable ts_130130_0_0 "Date A78 first reported (q fever)"
gen double ts_130132_0_0 = date(s_130132_0_0,"YMD")
format ts_130132_0_0 %td
capture drop s_130132_0_0
label variable ts_130132_0_0 "Date A79 first reported (other rickettsioses)"
gen double ts_130134_0_0 = date(s_130134_0_0,"YMD")
format ts_130134_0_0 %td
capture drop s_130134_0_0
label variable ts_130134_0_0 "Date A80 first reported (acute poliomyelitis)"
gen double ts_130136_0_0 = date(s_130136_0_0,"YMD")
format ts_130136_0_0 %td
capture drop s_130136_0_0
label variable ts_130136_0_0 "Date A81 first reported (atypical virus infections of central nervous system)"
gen double ts_130138_0_0 = date(s_130138_0_0,"YMD")
format ts_130138_0_0 %td
capture drop s_130138_0_0
label variable ts_130138_0_0 "Date A82 first reported (rabies)"
gen double ts_130140_0_0 = date(s_130140_0_0,"YMD")
format ts_130140_0_0 %td
capture drop s_130140_0_0
label variable ts_130140_0_0 "Date A83 first reported (mosquito-borne viral encephalitis)"
gen double ts_130142_0_0 = date(s_130142_0_0,"YMD")
format ts_130142_0_0 %td
capture drop s_130142_0_0
label variable ts_130142_0_0 "Date A84 first reported (tick-borne viral encephalitis)"
gen double ts_130144_0_0 = date(s_130144_0_0,"YMD")
format ts_130144_0_0 %td
capture drop s_130144_0_0
label variable ts_130144_0_0 "Date A85 first reported (other viral encephalitis, not elsewhere classified)"
gen double ts_130146_0_0 = date(s_130146_0_0,"YMD")
format ts_130146_0_0 %td
capture drop s_130146_0_0
label variable ts_130146_0_0 "Date A86 first reported (unspecified viral encephalitis)"
gen double ts_130148_0_0 = date(s_130148_0_0,"YMD")
format ts_130148_0_0 %td
capture drop s_130148_0_0
label variable ts_130148_0_0 "Date A87 first reported (viral meningitis)"
gen double ts_130150_0_0 = date(s_130150_0_0,"YMD")
format ts_130150_0_0 %td
capture drop s_130150_0_0
label variable ts_130150_0_0 "Date A88 first reported (other viral infections of central nervous system, not elsewhere classified)"
gen double ts_130152_0_0 = date(s_130152_0_0,"YMD")
format ts_130152_0_0 %td
capture drop s_130152_0_0
label variable ts_130152_0_0 "Date A89 first reported (unspecified viral infection of central nervous system)"
gen double ts_130154_0_0 = date(s_130154_0_0,"YMD")
format ts_130154_0_0 %td
capture drop s_130154_0_0
label variable ts_130154_0_0 "Date A90 first reported (dengue fever [classical dengue])"
gen double ts_130156_0_0 = date(s_130156_0_0,"YMD")
format ts_130156_0_0 %td
capture drop s_130156_0_0
label variable ts_130156_0_0 "Date A91 first reported (dengue haemorrhagic fever)"
gen double ts_130158_0_0 = date(s_130158_0_0,"YMD")
format ts_130158_0_0 %td
capture drop s_130158_0_0
label variable ts_130158_0_0 "Date A92 first reported (other mosquito-borne viral fevers)"
gen double ts_130160_0_0 = date(s_130160_0_0,"YMD")
format ts_130160_0_0 %td
capture drop s_130160_0_0
label variable ts_130160_0_0 "Date A93 first reported (other arthropod-borne viral fevers, not elsewhere classified)"
gen double ts_130162_0_0 = date(s_130162_0_0,"YMD")
format ts_130162_0_0 %td
capture drop s_130162_0_0
label variable ts_130162_0_0 "Date A94 first reported (unspecified arthropod-borne viral fever)"
gen double ts_130164_0_0 = date(s_130164_0_0,"YMD")
format ts_130164_0_0 %td
capture drop s_130164_0_0
label variable ts_130164_0_0 "Date A95 first reported (yellow fever)"
gen double ts_130168_0_0 = date(s_130168_0_0,"YMD")
format ts_130168_0_0 %td
capture drop s_130168_0_0
label variable ts_130168_0_0 "Date A97 first reported (dengue)"
gen double ts_130170_0_0 = date(s_130170_0_0,"YMD")
format ts_130170_0_0 %td
capture drop s_130170_0_0
label variable ts_130170_0_0 "Date A98 first reported (other viral haemorrhagic fevers, not elsewhere classified)"
gen double ts_130174_0_0 = date(s_130174_0_0,"YMD")
format ts_130174_0_0 %td
capture drop s_130174_0_0
label variable ts_130174_0_0 "Date B00 first reported (herpesviral [herpes simplex] infections)"
gen double ts_130176_0_0 = date(s_130176_0_0,"YMD")
format ts_130176_0_0 %td
capture drop s_130176_0_0
label variable ts_130176_0_0 "Date B01 first reported (varicella [chickenpox])"
gen double ts_130178_0_0 = date(s_130178_0_0,"YMD")
format ts_130178_0_0 %td
capture drop s_130178_0_0
label variable ts_130178_0_0 "Date B02 first reported (zoster [herpes zoster])"
gen double ts_130180_0_0 = date(s_130180_0_0,"YMD")
format ts_130180_0_0 %td
capture drop s_130180_0_0
label variable ts_130180_0_0 "Date B03 first reported (smallpox)"
gen double ts_130184_0_0 = date(s_130184_0_0,"YMD")
format ts_130184_0_0 %td
capture drop s_130184_0_0
label variable ts_130184_0_0 "Date B05 first reported (measles)"
gen double ts_130186_0_0 = date(s_130186_0_0,"YMD")
format ts_130186_0_0 %td
capture drop s_130186_0_0
label variable ts_130186_0_0 "Date B06 first reported (rubella [german measles])"
gen double ts_130188_0_0 = date(s_130188_0_0,"YMD")
format ts_130188_0_0 %td
capture drop s_130188_0_0
label variable ts_130188_0_0 "Date B07 first reported (viral warts)"
gen double ts_130190_0_0 = date(s_130190_0_0,"YMD")
format ts_130190_0_0 %td
capture drop s_130190_0_0
label variable ts_130190_0_0 "Date B08 first reported (other viral infections characterised by skin and mucous membrane lesions, not elsewhere classified)"
gen double ts_130192_0_0 = date(s_130192_0_0,"YMD")
format ts_130192_0_0 %td
capture drop s_130192_0_0
label variable ts_130192_0_0 "Date B09 first reported (unspecified viral infection characterised by skin and mucous membrane lesions)"
gen double ts_130194_0_0 = date(s_130194_0_0,"YMD")
format ts_130194_0_0 %td
capture drop s_130194_0_0
label variable ts_130194_0_0 "Date B15 first reported (acute hepatitis a)"
gen double ts_130196_0_0 = date(s_130196_0_0,"YMD")
format ts_130196_0_0 %td
capture drop s_130196_0_0
label variable ts_130196_0_0 "Date B16 first reported (acute hepatitis b)"
gen double ts_130198_0_0 = date(s_130198_0_0,"YMD")
format ts_130198_0_0 %td
capture drop s_130198_0_0
label variable ts_130198_0_0 "Date B17 first reported (other acute viral hepatitis)"
gen double ts_130200_0_0 = date(s_130200_0_0,"YMD")
format ts_130200_0_0 %td
capture drop s_130200_0_0
label variable ts_130200_0_0 "Date B18 first reported (chronic viral hepatitis)"
gen double ts_130202_0_0 = date(s_130202_0_0,"YMD")
format ts_130202_0_0 %td
capture drop s_130202_0_0
label variable ts_130202_0_0 "Date B19 first reported (unspecified viral hepatitis)"
gen double ts_130204_0_0 = date(s_130204_0_0,"YMD")
format ts_130204_0_0 %td
capture drop s_130204_0_0
label variable ts_130204_0_0 "Date B20 first reported (human immunodeficiency virus [hiv] disease resulting in infectious and parasitic diseases)"
gen double ts_130206_0_0 = date(s_130206_0_0,"YMD")
format ts_130206_0_0 %td
capture drop s_130206_0_0
label variable ts_130206_0_0 "Date B21 first reported (human immunodeficiency virus [hiv] disease resulting in malignant neoplasms)"
gen double ts_130208_0_0 = date(s_130208_0_0,"YMD")
format ts_130208_0_0 %td
capture drop s_130208_0_0
label variable ts_130208_0_0 "Date B22 first reported (human immunodeficiency virus [hiv] disease resulting in other specified diseases)"
gen double ts_130210_0_0 = date(s_130210_0_0,"YMD")
format ts_130210_0_0 %td
capture drop s_130210_0_0
label variable ts_130210_0_0 "Date B23 first reported (human immunodeficiency virus [hiv] disease resulting in other conditions)"
gen double ts_130212_0_0 = date(s_130212_0_0,"YMD")
format ts_130212_0_0 %td
capture drop s_130212_0_0
label variable ts_130212_0_0 "Date B24 first reported (unspecified human immunodeficiency virus [hiv] disease)"
gen double ts_130214_0_0 = date(s_130214_0_0,"YMD")
format ts_130214_0_0 %td
capture drop s_130214_0_0
label variable ts_130214_0_0 "Date B25 first reported (cytomegaloviral disease)"
gen double ts_130216_0_0 = date(s_130216_0_0,"YMD")
format ts_130216_0_0 %td
capture drop s_130216_0_0
label variable ts_130216_0_0 "Date B26 first reported (mumps)"
gen double ts_130218_0_0 = date(s_130218_0_0,"YMD")
format ts_130218_0_0 %td
capture drop s_130218_0_0
label variable ts_130218_0_0 "Date B27 first reported (infectious mononucleosis)"
gen double ts_130220_0_0 = date(s_130220_0_0,"YMD")
format ts_130220_0_0 %td
capture drop s_130220_0_0
label variable ts_130220_0_0 "Date B30 first reported (viral conjunctivitis)"
gen double ts_130222_0_0 = date(s_130222_0_0,"YMD")
format ts_130222_0_0 %td
capture drop s_130222_0_0
label variable ts_130222_0_0 "Date B33 first reported (other viral diseases, not elsewhere classified)"
gen double ts_130224_0_0 = date(s_130224_0_0,"YMD")
format ts_130224_0_0 %td
capture drop s_130224_0_0
label variable ts_130224_0_0 "Date B34 first reported (viral infection of unspecified site)"
gen double ts_130226_0_0 = date(s_130226_0_0,"YMD")
format ts_130226_0_0 %td
capture drop s_130226_0_0
label variable ts_130226_0_0 "Date B35 first reported (dermatophytosis)"
gen double ts_130228_0_0 = date(s_130228_0_0,"YMD")
format ts_130228_0_0 %td
capture drop s_130228_0_0
label variable ts_130228_0_0 "Date B36 first reported (other superficial mycoses)"
gen double ts_130230_0_0 = date(s_130230_0_0,"YMD")
format ts_130230_0_0 %td
capture drop s_130230_0_0
label variable ts_130230_0_0 "Date B37 first reported (candidiasis)"
gen double ts_130232_0_0 = date(s_130232_0_0,"YMD")
format ts_130232_0_0 %td
capture drop s_130232_0_0
label variable ts_130232_0_0 "Date B38 first reported (coccidioidomycosis)"
gen double ts_130234_0_0 = date(s_130234_0_0,"YMD")
format ts_130234_0_0 %td
capture drop s_130234_0_0
label variable ts_130234_0_0 "Date B39 first reported (histoplasmosis)"
gen double ts_130236_0_0 = date(s_130236_0_0,"YMD")
format ts_130236_0_0 %td
capture drop s_130236_0_0
label variable ts_130236_0_0 "Date B40 first reported (blastomycosis)"
gen double ts_130240_0_0 = date(s_130240_0_0,"YMD")
format ts_130240_0_0 %td
capture drop s_130240_0_0
label variable ts_130240_0_0 "Date B42 first reported (sporotrichosis)"
gen double ts_130242_0_0 = date(s_130242_0_0,"YMD")
format ts_130242_0_0 %td
capture drop s_130242_0_0
label variable ts_130242_0_0 "Date B43 first reported (chromomycosis and phaeomycotic abscess)"
gen double ts_130244_0_0 = date(s_130244_0_0,"YMD")
format ts_130244_0_0 %td
capture drop s_130244_0_0
label variable ts_130244_0_0 "Date B44 first reported (aspergillosis)"
gen double ts_130246_0_0 = date(s_130246_0_0,"YMD")
format ts_130246_0_0 %td
capture drop s_130246_0_0
label variable ts_130246_0_0 "Date B45 first reported (cryptococcosis)"
gen double ts_130248_0_0 = date(s_130248_0_0,"YMD")
format ts_130248_0_0 %td
capture drop s_130248_0_0
label variable ts_130248_0_0 "Date B46 first reported (zygomycosis)"
gen double ts_130250_0_0 = date(s_130250_0_0,"YMD")
format ts_130250_0_0 %td
capture drop s_130250_0_0
label variable ts_130250_0_0 "Date B47 first reported (mycetoma)"
gen double ts_130252_0_0 = date(s_130252_0_0,"YMD")
format ts_130252_0_0 %td
capture drop s_130252_0_0
label variable ts_130252_0_0 "Date B48 first reported (other mycoses, not elsewhere classified)"
gen double ts_130254_0_0 = date(s_130254_0_0,"YMD")
format ts_130254_0_0 %td
capture drop s_130254_0_0
label variable ts_130254_0_0 "Date B49 first reported (unspecified mycosis)"
gen double ts_130256_0_0 = date(s_130256_0_0,"YMD")
format ts_130256_0_0 %td
capture drop s_130256_0_0
label variable ts_130256_0_0 "Date B50 first reported (plasmodium falciparum malaria)"
gen double ts_130258_0_0 = date(s_130258_0_0,"YMD")
format ts_130258_0_0 %td
capture drop s_130258_0_0
label variable ts_130258_0_0 "Date B51 first reported (plasmodium vivax malaria)"
gen double ts_130260_0_0 = date(s_130260_0_0,"YMD")
format ts_130260_0_0 %td
capture drop s_130260_0_0
label variable ts_130260_0_0 "Date B52 first reported (plasmodium malariae malaria)"
gen double ts_130262_0_0 = date(s_130262_0_0,"YMD")
format ts_130262_0_0 %td
capture drop s_130262_0_0
label variable ts_130262_0_0 "Date B53 first reported (other parasitologically confirmed malaria)"
gen double ts_130264_0_0 = date(s_130264_0_0,"YMD")
format ts_130264_0_0 %td
capture drop s_130264_0_0
label variable ts_130264_0_0 "Date B54 first reported (unspecified malaria)"
gen double ts_130266_0_0 = date(s_130266_0_0,"YMD")
format ts_130266_0_0 %td
capture drop s_130266_0_0
label variable ts_130266_0_0 "Date B55 first reported (leishmaniasis)"
gen double ts_130270_0_0 = date(s_130270_0_0,"YMD")
format ts_130270_0_0 %td
capture drop s_130270_0_0
label variable ts_130270_0_0 "Date B57 first reported (chagas disease)"
gen double ts_130272_0_0 = date(s_130272_0_0,"YMD")
format ts_130272_0_0 %td
capture drop s_130272_0_0
label variable ts_130272_0_0 "Date B58 first reported (toxoplasmosis)"
gen double ts_130274_0_0 = date(s_130274_0_0,"YMD")
format ts_130274_0_0 %td
capture drop s_130274_0_0
label variable ts_130274_0_0 "Date B59 first reported (pneumocystosis)"
gen double ts_130276_0_0 = date(s_130276_0_0,"YMD")
format ts_130276_0_0 %td
capture drop s_130276_0_0
label variable ts_130276_0_0 "Date B60 first reported (other protozoal diseases, not elsewhere classified)"
gen double ts_130280_0_0 = date(s_130280_0_0,"YMD")
format ts_130280_0_0 %td
capture drop s_130280_0_0
label variable ts_130280_0_0 "Date B65 first reported (schistosomiasis [bilharziasis])"
gen double ts_130282_0_0 = date(s_130282_0_0,"YMD")
format ts_130282_0_0 %td
capture drop s_130282_0_0
label variable ts_130282_0_0 "Date B66 first reported (other fluke infections)"
gen double ts_130284_0_0 = date(s_130284_0_0,"YMD")
format ts_130284_0_0 %td
capture drop s_130284_0_0
label variable ts_130284_0_0 "Date B67 first reported (echinococcosis)"
gen double ts_130286_0_0 = date(s_130286_0_0,"YMD")
format ts_130286_0_0 %td
capture drop s_130286_0_0
label variable ts_130286_0_0 "Date B68 first reported (taeniasis)"
gen double ts_130288_0_0 = date(s_130288_0_0,"YMD")
format ts_130288_0_0 %td
capture drop s_130288_0_0
label variable ts_130288_0_0 "Date B69 first reported (cysticercosis)"
gen double ts_130292_0_0 = date(s_130292_0_0,"YMD")
format ts_130292_0_0 %td
capture drop s_130292_0_0
label variable ts_130292_0_0 "Date B71 first reported (other cestode infections)"
gen double ts_130296_0_0 = date(s_130296_0_0,"YMD")
format ts_130296_0_0 %td
capture drop s_130296_0_0
label variable ts_130296_0_0 "Date B73 first reported (onchocerciasis)"
gen double ts_130298_0_0 = date(s_130298_0_0,"YMD")
format ts_130298_0_0 %td
capture drop s_130298_0_0
label variable ts_130298_0_0 "Date B74 first reported (filariasis)"
gen double ts_130300_0_0 = date(s_130300_0_0,"YMD")
format ts_130300_0_0 %td
capture drop s_130300_0_0
label variable ts_130300_0_0 "Date B75 first reported (trichinellosis)"
gen double ts_130302_0_0 = date(s_130302_0_0,"YMD")
format ts_130302_0_0 %td
capture drop s_130302_0_0
label variable ts_130302_0_0 "Date B76 first reported (hookworm diseases)"
gen double ts_130304_0_0 = date(s_130304_0_0,"YMD")
format ts_130304_0_0 %td
capture drop s_130304_0_0
label variable ts_130304_0_0 "Date B77 first reported (ascariasis)"
gen double ts_130306_0_0 = date(s_130306_0_0,"YMD")
format ts_130306_0_0 %td
capture drop s_130306_0_0
label variable ts_130306_0_0 "Date B78 first reported (strongyloidiasis)"
gen double ts_130308_0_0 = date(s_130308_0_0,"YMD")
format ts_130308_0_0 %td
capture drop s_130308_0_0
label variable ts_130308_0_0 "Date B79 first reported (trichuriasis)"
gen double ts_130310_0_0 = date(s_130310_0_0,"YMD")
format ts_130310_0_0 %td
capture drop s_130310_0_0
label variable ts_130310_0_0 "Date B80 first reported (enterobiasis)"
gen double ts_130312_0_0 = date(s_130312_0_0,"YMD")
format ts_130312_0_0 %td
capture drop s_130312_0_0
label variable ts_130312_0_0 "Date B81 first reported (other intestinal helminthiases, not elsewhere classified)"
gen double ts_130314_0_0 = date(s_130314_0_0,"YMD")
format ts_130314_0_0 %td
capture drop s_130314_0_0
label variable ts_130314_0_0 "Date B82 first reported (unspecified intestinal parasitism)"
gen double ts_130316_0_0 = date(s_130316_0_0,"YMD")
format ts_130316_0_0 %td
capture drop s_130316_0_0
label variable ts_130316_0_0 "Date B83 first reported (other helminthiases)"
gen double ts_130318_0_0 = date(s_130318_0_0,"YMD")
format ts_130318_0_0 %td
capture drop s_130318_0_0
label variable ts_130318_0_0 "Date B85 first reported (pediculosis and phthiriasis)"
gen double ts_130320_0_0 = date(s_130320_0_0,"YMD")
format ts_130320_0_0 %td
capture drop s_130320_0_0
label variable ts_130320_0_0 "Date B86 first reported (scabies)"
gen double ts_130322_0_0 = date(s_130322_0_0,"YMD")
format ts_130322_0_0 %td
capture drop s_130322_0_0
label variable ts_130322_0_0 "Date B87 first reported (myiasis)"
gen double ts_130324_0_0 = date(s_130324_0_0,"YMD")
format ts_130324_0_0 %td
capture drop s_130324_0_0
label variable ts_130324_0_0 "Date B88 first reported (other infestations)"
gen double ts_130326_0_0 = date(s_130326_0_0,"YMD")
format ts_130326_0_0 %td
capture drop s_130326_0_0
label variable ts_130326_0_0 "Date B89 first reported (unspecified parasitic disease)"
gen double ts_130328_0_0 = date(s_130328_0_0,"YMD")
format ts_130328_0_0 %td
capture drop s_130328_0_0
label variable ts_130328_0_0 "Date B90 first reported (sequelae of tuberculosis)"
gen double ts_130330_0_0 = date(s_130330_0_0,"YMD")
format ts_130330_0_0 %td
capture drop s_130330_0_0
label variable ts_130330_0_0 "Date B91 first reported (sequelae of poliomyelitis)"
gen double ts_130334_0_0 = date(s_130334_0_0,"YMD")
format ts_130334_0_0 %td
capture drop s_130334_0_0
label variable ts_130334_0_0 "Date B94 first reported (sequelae of other and unspecified infectious and parasitic diseases)"
gen double ts_130336_0_0 = date(s_130336_0_0,"YMD")
format ts_130336_0_0 %td
capture drop s_130336_0_0
label variable ts_130336_0_0 "Date B95 first reported (streptococcus and staphylococcus as the cause of diseases classified to other chapters)"
gen double ts_130338_0_0 = date(s_130338_0_0,"YMD")
format ts_130338_0_0 %td
capture drop s_130338_0_0
label variable ts_130338_0_0 "Date B96 first reported (other bacterial agents as the cause of diseases classified to other chapters)"
gen double ts_130340_0_0 = date(s_130340_0_0,"YMD")
format ts_130340_0_0 %td
capture drop s_130340_0_0
label variable ts_130340_0_0 "Date B97 first reported (viral agents as the cause of diseases classified to other chapters)"
gen double ts_130342_0_0 = date(s_130342_0_0,"YMD")
format ts_130342_0_0 %td
capture drop s_130342_0_0
label variable ts_130342_0_0 "Date B98 first reported (other specified infectious agents as the cause of diseases classified to other chapters)"
gen double ts_130344_0_0 = date(s_130344_0_0,"YMD")
format ts_130344_0_0 %td
capture drop s_130344_0_0
label variable ts_130344_0_0 "Date B99 first reported (other and unspecified infectious diseases)"

***992 to 1002**
gen double ts_130992_0_0 = date(s_130992_0_0,"YMD")
format ts_130992_0_0 %td
capture drop s_130992_0_0
label variable ts_130992_0_0 "Date G00 first reported (bacterial meningitis, not elsewhere classified)"
gen double ts_130994_0_0 = date(s_130994_0_0,"YMD")
format ts_130994_0_0 %td
capture drop s_130994_0_0
label variable ts_130994_0_0 "Date G01 first reported (meningitis in bacterial diseases classified elsewhere)"
gen double ts_130996_0_0 = date(s_130996_0_0,"YMD")
format ts_130996_0_0 %td
capture drop s_130996_0_0
label variable ts_130996_0_0 "Date G02 first reported (meningitis in other infectious and parasitic diseases classified elsewhere)"
gen double ts_130998_0_0 = date(s_130998_0_0,"YMD")
format ts_130998_0_0 %td
capture drop s_130998_0_0
label variable ts_130998_0_0 "Date G03 first reported (meningitis due to other and unspecified causes)"
gen double ts_131000_0_0 = date(s_131000_0_0,"YMD")
format ts_131000_0_0 %td
capture drop s_131000_0_0
label variable ts_131000_0_0 "Date G04 first reported (encephalitis, myelitis and encephalomyelitis)"
gen double ts_131002_0_0 = date(s_131002_0_0,"YMD")
format ts_131002_0_0 %td
capture drop s_131002_0_0
label variable ts_131002_0_0 "Date G05 first reported (encephalitis, myelitis and encephalomyelitis in diseases classified elsewhere)"

**1424 to 1462***
gen double ts_131424_0_0 = date(s_131424_0_0,"YMD")
format ts_131424_0_0 %td
capture drop s_131424_0_0
label variable ts_131424_0_0 "Date J00 first reported (acute nasopharyngitis [common cold])"
gen double ts_131426_0_0 = date(s_131426_0_0,"YMD")
format ts_131426_0_0 %td
capture drop s_131426_0_0
label variable ts_131426_0_0 "Date J01 first reported (acute sinusitis)"
gen double ts_131428_0_0 = date(s_131428_0_0,"YMD")
format ts_131428_0_0 %td
capture drop s_131428_0_0
label variable ts_131428_0_0 "Date J02 first reported (acute pharyngitis)"
gen double ts_131430_0_0 = date(s_131430_0_0,"YMD")
format ts_131430_0_0 %td
capture drop s_131430_0_0
label variable ts_131430_0_0 "Date J03 first reported (acute tonsillitis)"
gen double ts_131432_0_0 = date(s_131432_0_0,"YMD")
format ts_131432_0_0 %td
capture drop s_131432_0_0
label variable ts_131432_0_0 "Date J04 first reported (acute laryngitis and tracheitis)"
gen double ts_131434_0_0 = date(s_131434_0_0,"YMD")
format ts_131434_0_0 %td
capture drop s_131434_0_0
label variable ts_131434_0_0 "Date J05 first reported (acute obstructive laryngitis [croup] and epiglottitis)"
gen double ts_131436_0_0 = date(s_131436_0_0,"YMD")
format ts_131436_0_0 %td
capture drop s_131436_0_0
label variable ts_131436_0_0 "Date J06 first reported (acute upper respiratory infections of multiple and unspecified sites)"
gen double ts_131438_0_0 = date(s_131438_0_0,"YMD")
format ts_131438_0_0 %td
capture drop s_131438_0_0
label variable ts_131438_0_0 "Date J09 first reported (influenza due to certain identified influenza virus)"
gen double ts_131440_0_0 = date(s_131440_0_0,"YMD")
format ts_131440_0_0 %td
capture drop s_131440_0_0
label variable ts_131440_0_0 "Date J10 first reported (influenza due to identified influenza virus)"
gen double ts_131442_0_0 = date(s_131442_0_0,"YMD")
format ts_131442_0_0 %td
capture drop s_131442_0_0
label variable ts_131442_0_0 "Date J11 first reported (influenza, virus not identified)"
gen double ts_131444_0_0 = date(s_131444_0_0,"YMD")
format ts_131444_0_0 %td
capture drop s_131444_0_0
label variable ts_131444_0_0 "Date J12 first reported (viral pneumonia, not elsewhere classified)"
gen double ts_131446_0_0 = date(s_131446_0_0,"YMD")
format ts_131446_0_0 %td
capture drop s_131446_0_0
label variable ts_131446_0_0 "Date J13 first reported (pneumonia due to streptococcus pneumoniae)"
gen double ts_131448_0_0 = date(s_131448_0_0,"YMD")
format ts_131448_0_0 %td
capture drop s_131448_0_0
label variable ts_131448_0_0 "Date J14 first reported (pneumonia due to haemophilus influenzae)"
gen double ts_131450_0_0 = date(s_131450_0_0,"YMD")
format ts_131450_0_0 %td
capture drop s_131450_0_0
label variable ts_131450_0_0 "Date J15 first reported (bacterial pneumonia, not elsewhere classified)"
gen double ts_131452_0_0 = date(s_131452_0_0,"YMD")
format ts_131452_0_0 %td
capture drop s_131452_0_0
label variable ts_131452_0_0 "Date J16 first reported (pneumonia due to other infectious organisms, not elsewhere classified)"
gen double ts_131454_0_0 = date(s_131454_0_0,"YMD")
format ts_131454_0_0 %td
capture drop s_131454_0_0
label variable ts_131454_0_0 "Date J17 first reported (pneumonia in diseases classified elsewhere)"
gen double ts_131456_0_0 = date(s_131456_0_0,"YMD")
format ts_131456_0_0 %td
capture drop s_131456_0_0
label variable ts_131456_0_0 "Date J18 first reported (pneumonia, organism unspecified)"
gen double ts_131458_0_0 = date(s_131458_0_0,"YMD")
format ts_131458_0_0 %td
capture drop s_131458_0_0
label variable ts_131458_0_0 "Date J20 first reported (acute bronchitis)"
gen double ts_131460_0_0 = date(s_131460_0_0,"YMD")
format ts_131460_0_0 %td
capture drop s_131460_0_0
label variable ts_131460_0_0 "Date J21 first reported (acute bronchiolitis)"
gen double ts_131462_0_0 = date(s_131462_0_0,"YMD")
format ts_131462_0_0 %td
capture drop s_131462_0_0
label variable ts_131462_0_0 "Date J22 first reported (unspecified acute lower respiratory infection)"

****************1696 to 1708************
gen double ts_131696_0_0 = date(s_131696_0_0,"YMD")
format ts_131696_0_0 %td
capture drop s_131696_0_0
label variable ts_131696_0_0 "Date L00 first reported (staphylococcal scalded skin syndrome)"
gen double ts_131698_0_0 = date(s_131698_0_0,"YMD")
format ts_131698_0_0 %td
capture drop s_131698_0_0
label variable ts_131698_0_0 "Date L01 first reported (impetigo)"
gen double ts_131700_0_0 = date(s_131700_0_0,"YMD")
format ts_131700_0_0 %td
capture drop s_131700_0_0
label variable ts_131700_0_0 "Date L02 first reported (cutaneous abscess, furuncle and carbuncle)"
gen double ts_131702_0_0 = date(s_131702_0_0,"YMD")
format ts_131702_0_0 %td
capture drop s_131702_0_0
label variable ts_131702_0_0 "Date L03 first reported (cellulitis)"
gen double ts_131704_0_0 = date(s_131704_0_0,"YMD")
format ts_131704_0_0 %td
capture drop s_131704_0_0
label variable ts_131704_0_0 "Date L04 first reported (acute lymphadenitis)"
gen double ts_131706_0_0 = date(s_131706_0_0,"YMD")
format ts_131706_0_0 %td
capture drop s_131706_0_0
label variable ts_131706_0_0 "Date L05 first reported (pilonidal cyst)"
gen double ts_131708_0_0 = date(s_131708_0_0,"YMD")
format ts_131708_0_0 %td
capture drop s_131708_0_0
label variable ts_131708_0_0 "Date L08 first reported (other local infections of skin and subcutaneous tissue)"


**(1840 1842 2054 2070 2074 2098 2108 2110)**
gen double ts_131840_0_0 = date(s_131840_0_0,"YMD")
format ts_131840_0_0 %td
capture drop s_131840_0_0
label variable ts_131840_0_0 "Date M00 first reported (pyogenic arthritis)"
gen double ts_131842_0_0 = date(s_131842_0_0,"YMD")
format ts_131842_0_0 %td
capture drop s_131842_0_0
label variable ts_131842_0_0 "Date M01 first reported (direct infections of joint in infectious and parasitic diseases classified elsewhere)"
gen double ts_132054_0_0 = date(s_132054_0_0,"YMD")
format ts_132054_0_0 %td
capture drop s_132054_0_0
label variable ts_132054_0_0 "Date N30 first reported (cystitis)"
gen double ts_132070_0_0 = date(s_132070_0_0,"YMD")
format ts_132070_0_0 %td
capture drop s_132070_0_0
label variable ts_132070_0_0 "Date N39 first reported (other disorders of urinary system)"
gen double ts_132074_0_0 = date(s_132074_0_0,"YMD")
format ts_132074_0_0 %td
capture drop s_132074_0_0
label variable ts_132074_0_0 "Date N41 first reported (inflammatory diseases of prostate)"
gen double ts_132098_0_0 = date(s_132098_0_0,"YMD")
format ts_132098_0_0 %td
capture drop s_132098_0_0
label variable ts_132098_0_0 "Date N61 first reported (inflammatory disorders of breast)"
gen double ts_132108_0_0 = date(s_132108_0_0,"YMD")
format ts_132108_0_0 %td
capture drop s_132108_0_0
label variable ts_132108_0_0 "Date N71 first reported (inflammatory disease of uterus, except cervix)"
gen double ts_132110_0_0 = date(s_132110_0_0,"YMD")
format ts_132110_0_0 %td
capture drop s_132110_0_0
label variable ts_132110_0_0 "Date N72 first reported (inflammatory disease of cervix uteri)"

************DENTAL PROBLEMS DIAGNOSES************************

**131556	Date K02 first reported (dental caries)	Digestive system disorders  
**131557	Source of report of K02 (dental caries)	Digestive system disorders  


**131560	Date K04 first reported (diseases of pulp and periapical tissues)	Digestive system disorders  
**131561	Source of report of K04 (diseases of pulp and periapical tissues)	Digestive system disorders  

**131562	Date K05 first reported (gingivitis and periodontal diseases)	Digestive system disorders  
**131563	Source of report of K05 (gingivitis and periodontal diseases)	Digestive system disorders  

capture drop tsd_131556_0_0
gen double tsd_131556_0_0 = date(s_131556_0_0,"YMD")
format tsd_131556_0_0 %td
capture drop s_131556_0_0
label variable tsd_131556_0_0 "Date K02 first reported (dental caries)"

capture drop tsd_131560_0_0
gen double tsd_131560_0_0 = date(s_131560_0_0,"YMD")
format tsd_131560_0_0 %td
capture drop s_131560_0_0
label variable tsd_131560_0_0 "Date K04 first reported (diseases of pulp and periapical tissues)"


capture drop tsd_131562_0_0
gen double tsd_131562_0_0 = date(s_131562_0_0,"YMD")
format tsd_131562_0_0 %td
capture drop s_131562_0_0
label variable tsd_131562_0_0 "Date K05 first reported (gingivitis and periodontal diseases)"



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_FINAL.dta", replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3A.smcl",replace



**************************DEMOGRAPHICS, SES*********************************************
cd "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA"

clear
use n_eid s_31_0_0 n_21022_0_0  n_34_0_0 s_52_0_0 s_6138_0_0 n_22189_0_0  s_21000_0_0 s_709_0_0 s_738_0_0 s_1239_0_0 s_20277_0_0 s_20119_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB", replace
sort n_eid
save, replace

clear
use n_eid ts_53_0_0 ts_40000_0_0 ts_40000_1_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATESDEMOG_UKB", replace
sort n_eid
save, replace

clear
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATESDEMOG_UKB"
sort n_eid
capture drop _merge
save, replace


clear
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB",clear



*Sex*
capture drop sex
capture drop n_31_0_0
gen n_31_0_0=s_31_0_0
encode n_31_0_0, gen(sex) 
tab sex
su sex
capture drop sexnum
gen sexnum=1 if sex==2
replace sexnum=2 if sex==1
capture drop sex
capture rename sexnum sex
save, replace
describe sex

*Age*
capture drop Age
gen Age=n_21022_0_0 

*Years of Birth*
capture drop birthyear
gen birthyear=n_34_0_0 

*Month of Birth*
capture drop n_52_0_0
gen n_52_0_0=.
replace n_52_0_0=1 if s_52_0_0=="January"
replace n_52_0_0=2 if s_52_0_0=="February"
replace n_52_0_0=3 if s_52_0_0=="March"
replace n_52_0_0=4 if s_52_0_0=="April"
replace n_52_0_0=5 if s_52_0_0=="May"
replace n_52_0_0=6 if s_52_0_0=="June"
replace n_52_0_0=7 if s_52_0_0=="July"
replace n_52_0_0=8 if s_52_0_0=="August"
replace n_52_0_0=9 if s_52_0_0=="September"
replace n_52_0_0=10 if s_52_0_0=="October"
replace n_52_0_0=11 if s_52_0_0=="November"
replace n_52_0_0=12 if s_52_0_0=="December"

capture drop birthmonth
gen birthmonth=n_52_0_0 



*Date of birth*
capture drop birthdate
gen birthdate=mdy(birthmonth,14,birthyear)

*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 
format startdate %d

*Baseline age**
capture drop baselineage
gen baselineage=(startdate-birthdate)/365.25




**Household size**
label var s_709_0_0	"Number in household"


capture drop householdsize
gen householdsize=s_709_0_0
label var householdsize "Number of household members"

**-1	Do not know
**-3	Prefer not to answer

replace householdsize="" if householdsize=="Do not know"
replace householdsize="" if householdsize=="Prefer not to answer"
destring householdsize, replace
tab householdsize
su householdsize

*Ethnicity*
sort s_21000_0_0
capture drop n_21000_0_0
encode s_21000_0_0, gen(n_21000_0_0)


labelbook n_21000_0_0

** Definition
**           1   African
**           2   Any other Asian background
**           3   Any other Black background
**           4   Any other mixed background
**           5   Any other white background
**           6   Asian or Asian British
**           7   Bangladeshi
**          8   Black or Black British
**           9   British
**          10   Caribbean
**          11   Chinese
**          12   Do not know
**          13   Indian
**          14   Irish
**          15   Mixed
**          16   Other ethnic group
**          17   Pakistani
**          18   Prefer not to answer
**          19   White
**          20   White and Asian
**          21   White and Black African
**          22   White and Black Caribbean

capture drop ethnicity
gen ethnicity = 1 if inlist(n_21000_0_0,9,14,19,5) 
replace ethnicity = 2 if inlist(n_21000_0_0,3,6,13, 17, 7, 2 )
replace ethnicity = 3 if inlist(n_21000_0_0,11)
replace ethnicity = 4 if inlist(n_21000_0_0,4,8,10,1,3)
replace ethnicity = 5 if inlist(n_21000_0_0,4,15,16,20,21,22)
replace ethnicity = 6 if ethnicity ==.

label var ethnicity "ethnic group"
capture label drop ethnicityL
label define ethnicityL 1 "white" 2 "south asian" 3 "east asian/Chinese" 4 "black" 5 "other/mixed" 6 "unknown"
label values ethnicity ethnicityL

capture drop ethnicity2
gen ethnicity2=.
replace ethnicity2=ethnicity
recode ethnicity2 (1=0) (4=1) (2=2) (3=3) (5=3) (6=3) 

label var ethnicity2 "ethnic grouping 2"
capture label drop ethnicityL2
label define ethnicityL2 0 "white" 1 "black" 2 "south asian" 3 "other" 
label values ethnicity2 ethnicityL2

capture drop RACE_ETHN
gen RACE_ETHN=ethnicity2

capture drop NonWhite
gen NonWhite=.
replace NonWhite=RACE_ETHN
recode NonWhite (0=0) (1=1) (2=1) (3=1)

label var NonWhite "ethnic grouping 3"
capture label drop ethnicityL3
label define ethnicityL3 0 "white" 1 "Non-White"  
label values NonWhite ethnicityL3


******************DATES*******************************************

*Years of Birth*
capture drop birthyear
gen  birthyear=n_34_0_0 

*Month of Birth*
capture drop birthmonth
gen  birthmonth=n_52_0_0 

*Death Date*
capture drop deathdate
gen deathdate = ts_40000_0_0 
replace deathdate =  ts_40000_1_0 if deathdate ==.
format deathdate %d
label var deathdate "date of death"

*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 

********************************SES******************************

*Education, qualification*
capture drop n_6138_0_0
encode s_6138_0_0,gen(n_6138_0_0)
sort n_6138_0_0
save, replace

labelbook n_6138_0_0


**  Definition
**           1   A levels/AS levels or equivalent
**           2   A levels/AS levels or equivalent|CSEs or equivalent
**           3   A levels/AS levels or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent
**           4   A levels/AS levels or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing,
**               teaching
**           5   A levels/AS levels or equivalent|CSEs or equivalent|Other professional qualifications eg: nursing, teaching
**           6   A levels/AS levels or equivalent|NVQ or HND or HNC or equivalent
**           7   A levels/AS levels or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing, teaching
**           8   A levels/AS levels or equivalent|O levels/GCSEs or equivalent
**           9   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent
**          10   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent
**          11   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional
**               qualifications eg: nursing, teaching
**          12   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent|Other professional qualifications eg: nursing,
**               teaching
**          13   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent
**          14   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg:
**               nursing, teaching
**          15   A levels/AS levels or equivalent|O levels/GCSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          16   A levels/AS levels or equivalent|Other professional qualifications eg: nursing, teaching
**          17   CSEs or equivalent
**          18   CSEs or equivalent|NVQ or HND or HNC or equivalent
**          19   CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing, teaching
**          20   CSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          21   College or University degree
**          22   College or University degree|A levels/AS levels or equivalent
**          23   College or University degree|A levels/AS levels or equivalent|CSEs or equivalent
**          24   College or University degree|A levels/AS levels or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent
**          25   College or University degree|A levels/AS levels or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional
**               qualifications eg: nursing, teaching
**          26   College or University degree|A levels/AS levels or equivalent|CSEs or equivalent|Other professional qualifications eg: nursing,
**               teaching
**          27   College or University degree|A levels/AS levels or equivalent|NVQ or HND or HNC or equivalent
**          28   College or University degree|A levels/AS levels or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg:
**               nursing, teaching
**          29   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent
**          30   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent
**          31   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or
**               equivalent
**          32   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or
**               equivalent|Other professional qualifications eg: nursing, teaching
**          33   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|CSEs or equivalent|Other professional
**               qualifications eg: nursing, teaching
**          34   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent
**          35   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent|Other
**               professional qualifications eg: nursing, teaching
**          36   College or University degree|A levels/AS levels or equivalent|O levels/GCSEs or equivalent|Other professional qualifications eg:
**               nursing, teaching
**          37   College or University degree|A levels/AS levels or equivalent|Other professional qualifications eg: nursing, teaching
**          38   College or University degree|CSEs or equivalent
**          39   College or University degree|CSEs or equivalent|NVQ or HND or HNC or equivalent
**          40   College or University degree|CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing,
**               teaching
**          41   College or University degree|CSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          42   College or University degree|NVQ or HND or HNC or equivalent
**          43   College or University degree|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing, teaching
**          44   College or University degree|O levels/GCSEs or equivalent
**          45   College or University degree|O levels/GCSEs or equivalent|CSEs or equivalent
**          46   College or University degree|O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent
**          47   College or University degree|O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional
**               qualifications eg: nursing, teaching
**          48   College or University degree|O levels/GCSEs or equivalent|CSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          49   College or University degree|O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent
**          50   College or University degree|O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg:
**               nursing, teaching
**          51   College or University degree|O levels/GCSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          52   College or University degree|Other professional qualifications eg: nursing, teaching
**          53   NVQ or HND or HNC or equivalent
**          54   NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing, teaching
**          55   None of the above
**          56   O levels/GCSEs or equivalent
**          57   O levels/GCSEs or equivalent|CSEs or equivalent
**          58   O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent
**          59   O levels/GCSEs or equivalent|CSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing,
**               teaching
**          60   O levels/GCSEs or equivalent|CSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          61   O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent
**          62   O levels/GCSEs or equivalent|NVQ or HND or HNC or equivalent|Other professional qualifications eg: nursing, teaching
**          63   O levels/GCSEs or equivalent|Other professional qualifications eg: nursing, teaching
**          64   Other professional qualifications eg: nursing, teaching
**          65   Prefer not to answer


capture drop education
gen education=.
replace education=0 if n_6138_0_0==55
replace education=1 if n_6138_0_0>=21 & n_6138_0_0<=52
replace education=2 if n_6138_0_0>=1  &  n_6138_0_0<=16
replace education=3 if n_6138_0_0>=56  &  n_6138_0_0<=63
replace education=4 if n_6138_0_0>=17  &  n_6138_0_0<=20
replace education=5 if n_6138_0_0>=53  &  n_6138_0_0<=54
replace education=6 if n_6138_0_0==64


capture label drop educationL
label define educationL 0 "none of the above" 1 "College/University" 2 "A/AS Levels/Equivalent" 3 "O Levels/GCSEs/Equivalent" 4 "CSEs/Equivalent" 5 "NVQ/HND/HNC/Equivalent" 6 "Other professional qual" 7 "Unknown"
label values education educationL

**0 = Low (combining "None", "CSEs/Equivalent", "NVQ/HND/HNC/Equivalent", and "Other professional qual"); 1 = Intermediate (combining "O Levels/GCSEs/Equivalent" and "A/AS Levels Equivalent"); 2 = Higher level ("College/University").



capture drop educationbr
gen educationbr=.
replace educationbr=0 if (education==0 | education==4 | education==5 | education==6)
replace educationbr=1 if (education==2 | education==3)
replace educationbr=2 if education==1

tab educationbr


*Deprivation*
capture rename n_22189_0_0 townsend


**Household income before tax**
tab s_738_0_0
sort s_738_0_0
capture drop n_738_0_0
encode s_738_0_0,gen(n_738_0_0)

labelbook  n_738_0_0

**Definition
**           1   18,000 to 30,999
**           2   31,000 to 51,999
**           3   52,000 to 100,000
**           4   Do not know
**           5   Greater than 100,000
**           6   Less than 18,000
**           7   Prefer not to answer

capture drop householdincome
gen householdincome=.
label var householdincome	"Average total household income before tax"
replace householdincome=1 if n_738_0_0==6
replace householdincome=2 if n_738_0_0==1
replace householdincome=3 if n_738_0_0==2
replace householdincome=4 if n_738_0_0==3
replace householdincome=5 if n_738_0_0==5
replace householdincome=-1 if n_738_0_0==4
replace householdincome=-3 if n_738_0_0==7

**1	Less than 18,000
**2	18,000 to 30,999
**3	31,000 to 51,999
**4	52,000 to 100,000
**5	Greater than 100,000
**-1	Do not know
**-3	Prefer not to answer



recode householdincome (-1=.) (-3=.)

tab householdincome 

save, replace

**Occupation**

capture drop n_20277_0_0
tab s_20277_0_0
sort s_20277_0_0
encode s_20277_0_0, gen(n_20277_0_0)

labelbook n_20277_0_0



sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\occupation_old", clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\occupation_old"
capture rename occupation_old occupation


***occupation***
*1000s: Managers and senior officials
*2000s: Professional occupation
*3000s: Associate professional and technical occupations
*4000s: Administrative and secretarial occupations
*5000s: Skilled trades occupations
*6000s: Personal service occupations
*7000s: Sales and customer service occupations
*8000s: Process plants and machine operatives
*9000s: Elementary occupations

**capture drop occupation
**gen occupation=.
**replace occupation=1 if n_20277_0_0>=1000 & n_20277_0_0<1999
**replace occupation=2 if n_20277_0_0>=2000 & n_20277_0_0<2999
**replace occupation=3 if n_20277_0_0>=3000 & n_20277_0_0<3999
**replace occupation=4 if n_20277_0_0>=4000 & n_20277_0_0<4999
**replace occupation=5 if n_20277_0_0>=5000 & n_20277_0_0<5999
**replace occupation=6 if n_20277_0_0>=6000 & n_20277_0_0<6999
**replace occupation=7 if n_20277_0_0>=7000 & n_20277_0_0<7999
**replace occupation=8 if n_20277_0_0>=8000 & n_20277_0_0<8999
**replace occupation=9 if n_20277_0_0>=9000 & n_20277_0_0<9999

tab occupation
list occupation n_20277_0_0

save, replace


//STEP 2: GENERATE SES VARIABLE//


**SES: occupation

 

**SES: educationbr, householdincome, townsend, occupation

capture drop zeducationbr 
egen zeducationbr=std(educationbr)

capture drop zhouseholdincome 
egen zhouseholdincome=std(householdincome)

capture drop ztownsend
egen ztownsend=std(townsend)

capture drop ztownsendinv
gen ztownsendinv=ztownsend*-1


capture drop zoccupation
egen zoccupation=std(occupation)


capture drop zoccupationinv
gen zoccupationinv=zoccupation*-1

capture drop rowmissSES
egen rowmissSES=rowmiss(zeducationbr zhouseholdincome ztownsendinv zoccupationinv)

tab rowmissSES

capture drop SES
egen SES=rowmean(zeducationbr zhouseholdincome ztownsendinv zoccupationinv) if rowmissSES<=2

sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\withdrawals",clear
capture drop _merge
sort n_eid
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\withdrawals" 

keep if withdrew==.

save, replace  


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3B.smcl",replace


cd "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA"

//STEP 3: GENERATE LIFESTYLE VARIABLES: SMOKING, ALCOHOL, AND PA//

clear 
use n_eid s_1239_0_0 s_3456_0_0 n_22507_0_0  s_1279_0_0 s_1269_0_0 n_20162_0_0 s_1558_0_0 n_100022_0_0 s_981_0_0 ///
s_971_0_0 s_894_0_0 s_884_0_0 s_914_0_0 s_904_0_0 n_21022_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLENODIET_UKB",replace

capture drop Age
gen Age=n_21022_0_0 


*Current Smoking Status*
tab s_1239_0_0
sort s_1239_0_0
capture drop n_1239_0_0
encode s_1239_0_0, gen(n_1239_0_0)

tab n_1239_0_0
labelbook n_1239_0_0

** Definition
**           1   No
**           2   Only occasionally
**           3   Prefer not to answer
*           4   Yes, on most or all days

su n_22507_0_0


capture drop smoking
gen smoking = 0 if  n_1239_0_0 == 1 | n_1239_0_0 == 3
replace smoking = 1 if n_22507_0_0 != . 
replace smoking = 2 if n_1239_0_0 == 4 | n_1239_0_0 == 2
label var smoking "current smoking status"
capture label drop smokingL
label define smokingL 0 "non-smoker" 1 "Ex-smoker" 2 "Current smoker"
label values smoking smokingL
recode smoking .=0

tab smoking

*Cigarettes Per Day*
tab s_3456_0_0
sort s_3456_0_0
capture drop n_3456_0_0
encode s_3456_0_0, gen(n_3456_0_0)
tab n_3456_0_0
labelbook n_3456_0_0

        ** 54   Do not know
        **  55   Less than one a day
        **  56   Prefer not to answer


replace n_3456_0_0=0.5 if n_3456_0_0==55
replace n_3456_0_0=. if n_3456_0_0==54
replace n_3456_0_0=. if n_3456_0_0==56


capture drop cigperday
gen cigperday = n_3456_0_0 if smoking == 2    //missing values exist - consider imputation
replace cigperday = 0 if smoking == 0 | smoking == 1
replace cigperday = . if cigperday < 0
label var cigperday "if smoking, number of cig per day"

su cigperday


*Aged Stopped Smoking Cigarettes*
capture drop stopsmoke agestop
gen stopsmoke = Age - n_22507_0_0 
label var stopsmoke "intermediate var: baseline age - age stopped smoking"
gen agestop = 1 if stopsmoke < 5
replace agestop = 2 if stopsmoke >= 5 & stopsmoke <= 10
replace agestop = 3 if stopsmoke > 10 & stopsmoke !=.
label var agestop "how long ago did you quit smoking in years"
capture label drop stopL
label define stopL 1 "< 5 years" 2 " between 5-10 years" 3 "> 10 years"
label values agestop stopL  

*Combine Current Smoking with Ex-smoking duration for protective effects*
capture drop smokingstatus
gen smokingstatus = 0 if smoking == 2
replace smokingstatus = agestop if smokingstatus ==.
replace smokingstatus = 4 if smoking == 0
label var smokingstatus "complete smoking status"
capture label drop statusL
label define statusL 0 "current smoker" 1 "ex-smoker < 5 years" 2 "ex-smoker between 5-10 years" 3 "ex-smoker > 10 years" 4 "never smoker"
label values smokingstatus statusL
recode smokingstatus .=4

tab smokingstatus

*Environmental tobacco smoke*

tab s_1279_0_0
sort s_1279_0_0
capture drop n_1279_0_0
encode s_1279_0_0, gen(n_1279_0_0)
tab n_1279_0_0
labelbook n_1279_0_0

 **75   Do not know
 **76   Prefer not to answer

replace n_1279_0_0=. if n_1279_0_0==75 | n_1279_0_0==76
save, replace 

tab s_1269_0_0
sort s_1269_0_0
capture drop n_1269_0_0
encode s_1269_0_0, gen(n_1269_0_0)
tab n_1269_0_0
labelbook n_1269_0_0

**  104   Do not know
**  105   Prefer not to answer

replace n_1269_0_0=. if n_1269_0_0==104 | n_1269_0_0==105
save, replace 



capture drop etsmoke
replace n_1279_0_0 = . if n_1279_0_0 < 0
replace n_1269_0_0  = . if n_1269_0_0 < 0
order n_1279_0_0, after(n_1269_0_0)
capture drop ets
egen ets = rowtotal(n_1269_0_0-n_1279_0_0)
capture drop etsmoke
gen etsmoke = ets
label var etsmoke "environmental tobacco exposures (hours per week)"

su etsmoke


**Pack-years of smoking**
capture drop packyearssmoke
gen packyearssmoke=n_20162_0_0
replace packyearssmoke=0 if smoking==0

su packyearssmoke

**Use smokingstatus, etsmoke and packyearssmoke as measured variables for SMOKING LATENT VARIABLE OR AVERAGE Z-SCORE*****
capture drop zsmokingstatus zetsmoke zpackyearssmoke
egen zsmokingstatus=std(smokingstatus)
egen zetsmoke=std(etsmoke)
egen zpackyearssmoke=std(packyearssmoke)


capture drop rowmissSMOKE
egen rowmissSMOKE=rowmiss(zsmokingstatus zetsmoke zpackyearssmoke)

tab rowmissSMOKE

capture drop SMOKE
egen SMOKE=rmean(zsmokingstatus zetsmoke zpackyearssmoke) if rowmissSMOKE<=1

su SMOKE

save, replace


************************************ALCOHOL: fixed code 6 to missing***************************************************
*https://biobank.ctsu.ox.ac.uk/crystal/label.cgi?id=100098

*Usual Alcohol intake*
capture drop n_1558_0_0
encode s_1558_0_0, gen(n_1558_0_0)
labelbook n_1558_0_0

**  Definition
**           1   Daily or almost daily
**           2   Never
**           3   Once or twice a week
**           4   One to three times a month
**           5   Prefer not to answer
**           6   Special occasions only
**           7   Three or four times a week




capture drop alcohol
gen alcohol = 0 if  n_1558_0_0 == 2
replace alcohol = 1 if  n_1558_0_0 == 6
replace alcohol = 2 if  n_1558_0_0 == 4
replace alcohol = 3 if  n_1558_0_0 == 7
replace alcohol = 4 if  n_1558_0_0 == 3
replace alcohol = 5 if  n_1558_0_0 == 1
replace alcohol = . if  n_1558_0_0 == 5
replace alcohol = . if  n_1558_0_0 ==.
label var alcohol "alcohol intake frequency"
capture label drop alcoholL
label define alcoholL 0 "never" 1 "special occasions only" 2 "1-3 times per month" 3 "1-3 times per week" 4 "3-4 times per week" 5 "daily or almost daily" 
label values alcohol alcoholL



**use alcohol ALCOHOL LATENT VARIABLE OR AVERAGE Z-SCORE***
capture drop zalcohol
egen zalcohol=std(alcohol)

capture drop ALCOHOL
gen ALCOHOL=zalcohol

su ALCOHOL alcohol, det


*************************************PHYSICAL ACTIVITY*********************************************************************
***https://biobank.ctsu.ox.ac.uk/crystal/search.cgi?wot=0&srch=physical+activity&sta0=on&sta1=on&sta2=on&sta3=on&str0=on&str3=on&fit0=on&fit10=on&fit20=on&fit30=on&fvt11=on&fvt21=on&fvt22=on&fvt31=on&fvt41=on&fvt51=on&fvt61=on&fvt101=on


*Physical activity - use the IPAQ scoring guidelines*

*Walking MET-min/week - use median time of each category*

capture drop n_981_0_0
encode s_981_0_0, gen(n_981_0_0)
labelbook n_981_0_0

** Definition
**           1   Between 1 and 1.5 hours
**           2   Between 1.5 and 2 hours
**           3   Between 15 and 30 minutes
**           4   Between 2 and 3 hours
**           5   Between 30 minutes and 1 hour
**           6   Do not know
**           7   Less than 15 minutes
**           8   Over 3 hours
**           9   Prefer not to answer




capture drop walkperday
gen walkperday=.
replace walkperday = 7.5 if n_981_0_0 == 7
replace walkperday = 22.5 if n_981_0_0 == 3
replace walkperday = 45 if n_981_0_0 == 5
replace walkperday = 75 if n_981_0_0 == 1
replace walkperday = 105 if n_981_0_0 == 2
replace walkperday = 150 if n_981_0_0 == 4
replace walkperday = 210 if n_981_0_0 == 8
label var walkperday "walking minutes per day"



*Frequency of Walking (no days per week) - use median time of each category*

capture drop n_971_0_0
encode s_971_0_0, gen(n_971_0_0)
labelbook n_971_0_0


**  Definition
**           1   2-3 times a week
**           2   2-3 times in the last 4 weeks
**           3   4-5 times a week
**           4   Do not know
**           5   Every day
**           6   Once a week
**           7   Once in the last 4 weeks
**           8   Prefer not to answer




capture drop walkperweek
gen walkperweek=.
replace walkperweek = 0.25 if n_971_0_0 == 7
replace walkperweek = 0.625 if n_971_0_0 == 2
replace walkperweek = 1 if n_971_0_0 == 6
replace walkperweek = 2.5 if n_971_0_0 == 1
replace walkperweek = 4.5 if n_971_0_0 == 3
replace walkperweek = 7 if n_971_0_0 == 5
label var walkperweek "walking days per week"

su walkperweek

*Calculate walking MET-min/week*
capture drop walkMETmin
gen walkMETmin = 3.3 * walkperday * walkperweek
label var walkMETmin "MET-min per week walking"

su walkMETmin



*Moderate exercise MET-min/week*
tab s_894_0_0
capture drop n_894_0_0
gen n_894_0_0=""
replace n_894_0_0=s_894_0_0 if s_894_0_0~="Do not know" & s_894_0_0~="Prefer not to answer" 
destring n_894_0_0,replace

capture drop modperday
gen modperday = n_894_0_0 if n_894_0_0 >= 0
label var modperday "moderate exercise minutes per day"

su modperday





*Frequency of moderate exercise (no days per week)*
tab s_884_0_0
capture drop n_884_0_0
gen n_884_0_0=""
replace n_884_0_0=s_884_0_0 if s_884_0_0~="Do not know" & s_884_0_0~="Prefer not to answer" 
destring n_884_0_0,replace


capture drop modperweek
gen modperweek =  n_884_0_0 if  n_884_0_0 >= 0
label var modperweek "moderate exercise days per week"

su modperweek



*Calculate moderate exercise MET-min/week*
capture drop modMETmin
gen modMETmin = 4.0 * modperday * modperweek
label var modMETmin "MET-min per week moderate exercise"
su modMETmin


*Vigorous exercise MET-min/week*
tab s_914_0_0
capture drop n_914_0_0
gen n_914_0_0=""
replace n_914_0_0=s_914_0_0 if s_914_0_0~="Do not know" & s_914_0_0~="Prefer not to answer" 
destring n_914_0_0,replace


capture drop vigperday
gen vigperday = n_914_0_0 if n_914_0_0 >= 0
label var vigperday "vigorous exercise minutes per day"

su vigperday


*Frequency of vigorous exercise (no days per week)*
tab s_904_0_0
capture drop n_904_0_0
gen n_904_0_0=""
replace n_904_0_0=s_904_0_0 if s_904_0_0~="Do not know" & s_904_0_0~="Prefer not to answer" 
destring n_904_0_0,replace



capture drop vigperweek
gen vigperweek = n_904_0_0 if n_904_0_0 >= 0
label var vigperweek "vigorous exercise days per week"

su vigperweek



*Calculate vigorous exercise MET-min/week*
capture drop vigMETmin
gen vigMETmin = 8.0 * vigperday * vigperweek
label var vigMETmin "MET-min per week vigorous exercise"

su vigMETmin


****Calculate TOTAL MET-min per week*******
capture drop METmin
order modMETmin, before(vigMETmin)
order walkMETmin, before(modMETmin)
egen METmin = rowtotal(walkMETmin modMETmin vigMETmin)
label var METmin "MET-min per week total exercise" // missing values exist - consider imputation
su METmin


////USE METmin as the PA measure, z-scored////

capture drop PA
egen PA=std(METmin)

su PA

save, replace

capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3B.smcl",replace


//STEP 4: GENERATE LIFESTYLE VARIABLES: DIET//

use n_eid s_1289_0_0 s_1299_0_0 s_1309_0_0 s_1319_0_0 s_1329_0_0 s_1339_0_0 s_1349_0_0 s_1359_0_0 s_1369_0_0 s_1379_0_0 s_1389_0_0 s_6144_0_0 ///
s_6144_1_0 s_6144_2_0 s_6144_3_0 s_10855_0_0 s_1408_0_0 s_1418_0_0 s_2654_0_0 s_1428_0_0 s_1438_0_0 s_1448_0_0 s_1458_0_0 s_1468_0_0 ///
s_1478_0_0 s_1478_0_0 s_1548_0_0  using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"

**(ALL ITEMS UNDER THE DIET CATEGORY)
**URL: https://biobank.ndph.ox.ac.uk/showcase/label.cgi?id=100052


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLEDIET_UKB",replace

**https://www.ahajournals.org/doi/10.1161/CIRCULATIONAHA.115.018585#d3e341

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLEDIET_UKB",clear



foreach x of varlist s_1289_0_0 s_1299_0_0 s_1309_0_0 s_1319_0_0 s_1329_0_0 s_1339_0_0 s_1349_0_0 s_1359_0_0 s_1369_0_0 s_1379_0_0 s_1389_0_0 s_6144_0_0 ///
s_6144_1_0 s_6144_2_0 s_6144_3_0 s_10855_0_0 s_1408_0_0 s_1418_0_0 s_2654_0_0 s_1428_0_0 s_1438_0_0 s_1448_0_0 s_1458_0_0 s_1468_0_0 ///
s_1478_0_0 s_1478_0_0 s_1548_0_0 {
	replace `x'="" if `x'=="prefer not to answer" | `x'=="do not know"  
	
}

capture rename s_* n_*

foreach x of varlist n_1289_0_0 n_1299_0_0 n_1309_0_0 n_1319_0_0 n_1329_0_0 n_1339_0_0 n_1349_0_0 n_1359_0_0 n_1369_0_0 n_1379_0_0 n_1389_0_0 n_6144_0_0 n_6144_1_0 n_6144_2_0 n_6144_3_0 n_10855_0_0 n_1408_0_0 n_1418_0_0 n_2654_0_0 n_1428_0_0 n_1438_0_0 n_1448_0_0 n_1458_0_0 n_1468_0_0 n_1478_0_0 {
	
	destring(`x'),replace
}


capture drop n_1289_0_0r n_1299_0_0r n_1309_0_0r n_1319_0_0r n_1329_0_0r n_1339_0_0r n_1349_0_0r n_1359_0_0r n_1369_0_0r n_1379_0_0r n_1389_0_0r 
capture drop n_6144_0_0r n_6144_1_0r n_6144_2_0r n_6144_3_0r n_10855_0_0r n_1408_0_0r n_1418_0_0r n_2654_0_0r n_1438_0_0r n_1448_0_0r n_1458_0_0r 
capture drop n_1468_0_0r n_1478_0_0r n_1478_0_0r


foreach x of varlist n_1289_0_0 n_1299_0_0 n_1309_0_0 n_1319_0_0 n_1329_0_0 n_1339_0_0 n_1349_0_0 n_1359_0_0 n_1369_0_0 n_1379_0_0 n_1389_0_0 n_6144_0_0 n_6144_1_0 n_6144_2_0 n_6144_3_0 n_10855_0_0 n_1408_0_0 n_1418_0_0 n_2654_0_0 n_1428_0_0 n_1438_0_0 n_1448_0_0 n_1458_0_0 n_1468_0_0 n_1478_0_0  {
	gen `x'r=`x'
}

foreach y of varlist n_1289_0_0r n_1299_0_0r n_1309_0_0r n_1319_0_0r n_1329_0_0r n_1339_0_0r n_1349_0_0r n_1359_0_0r n_1369_0_0r n_1379_0_0r n_1389_0_0r n_6144_0_0r n_6144_1_0r n_6144_2_0r n_6144_3_0r n_10855_0_0r n_1408_0_0r n_1418_0_0r n_1428_0_0r n_2654_0_0r n_1438_0_0r n_1448_0_0r n_1458_0_0r n_1468_0_0r n_1478_0_0r n_1478_0_0r {
replace `y'="" if `y'=="Do not know" | `y'=="Prefer not to answer" 
}


tab1 n_1289_0_0r n_1299_0_0r n_1309_0_0r n_1319_0_0r n_1329_0_0r n_1339_0_0r n_1349_0_0r n_1359_0_0r n_1369_0_0r n_1379_0_0r n_1389_0_0r n_6144_0_0r n_6144_1_0r n_6144_2_0r n_6144_3_0r n_10855_0_0r n_1408_0_0r n_1418_0_0r n_1428_0_0r n_2654_0_0r n_1438_0_0r n_1448_0_0r n_1458_0_0r n_1468_0_0r n_1478_0_0r n_1478_0_0r


foreach y of varlist n_1289_0_0r n_1299_0_0r n_1309_0_0r n_1319_0_0r n_1329_0_0r n_1339_0_0r n_1349_0_0r n_1359_0_0r n_1369_0_0r n_1379_0_0r n_1389_0_0r n_6144_0_0r n_6144_1_0r n_6144_2_0r n_6144_3_0r n_10855_0_0r n_1408_0_0r n_1418_0_0r n_1428_0_0r n_2654_0_0r n_1438_0_0r n_1448_0_0r n_1458_0_0r n_1468_0_0r n_1478_0_0r n_1478_0_0r {
replace `y'="0.5" if `y'=="Less than one" 
}

save, replace


/////////////////////FRUITS COMPONENT //////////////////////


**Servings per day for all fruits**

**1 piece of dried fruit (e.g. apricot)~=2.5 TBSP, 1 TBSP= 0.063 cups; ½ cup of dried fruit (1 serving) is 3 pieces of dried fruit.

**1 medium sized fruit is one serving.
tab1 n_1309_0_0r n_1319_0_0r
destring n_1309_0_0r,replace
destring n_1319_0_0r,replace

capture drop allfruits
gen allfruits=.
replace allfruits=(n_1309_0_0r+(n_1319_0_0r/3))


**>=3 servings per day**


capture drop allfruits_component1
gen allfruits_component1=.
replace allfruits_component1=1 if allfruits>=3 & allfruits~=.
replace allfruits_component1=0 if allfruits_component1~=1 & allfruits~=.

su allfruits
tab allfruits_component1



//////////////////////VEGETABLES COMPONENT/////////////////////

**Servings per day for all vegetables**

**1 cup of raw leafy vegetables is 16 TBSP. ½ cup of cooked or non-leafy raw vegetables is 8 TBSP. 

**1 serving of raw leafy/non-leafy vegetables is ~=12 TBSP; 1 serving of cooked vegetables is ~=8 TBSP
tab1 n_1289_0_0r n_1299_0_0r
destring(n_1289_0_0r), replace
destring(n_1299_0_0r), replace

su n_1289_0_0r n_1299_0_0r

capture drop allvegs
gen allvegs=.
replace allvegs=((n_1289_0_0r/8))+((n_1299_0_0r/12))

**>=3 servings per day**

capture drop allvegs_component2
gen allvegs_component2=.
replace allvegs_component2=1 if allvegs>=3 & allvegs~=.
replace allvegs_component2=0 if allvegs_component2~=1 & allvegs~=.

su allvegs
tab allvegs_component2



//////////////WHOLE GRAINS///////////////////////////////////

**Bread intake, slices/week: n_1438_0_0r
**Type of bread: n_1448_0_0r	

**1 White
**2	Brown
**3	Wholemeal or wholegrain
**4	Other type of bread


**Cereal intake, bowls/week: n_1458_0_0r

**Type of cereal: n_1468_0_0r

**1	Bran cereal (e.g. All Bran, Branflakes)
**2	Biscuit cereal (e.g. Weetabix)
**3	Oat cereal (e.g. Ready Brek, porridge)
**4	Muesli
**5	Other (e.g. Cornflakes, Frosties)

tab1 n_1438_0_0r n_1448_0_0r
destring n_1438_0_0r,replace
destring n_1448_0_0r,replace

encode n_1448_0_0r,gen(n_1448_0_0renc)
labelbook n_1448_0_0renc

**  Definition
**           1   Brown
**           2   Other type of bread
**           3   White
**           4   Wholemeal or wholegrain


capture drop wholegrain_bread
gen wholegrain_bread=.
replace wholegrain_bread=n_1438_0_0r if n_1448_0_0renc==4
replace wholegrain_bread=0 if n_1448_0_0renc~=4 & n_1438_0_0r~=.

su wholegrain_bread


capture drop wholegrain_bread_day
gen wholegrain_bread_day=.
replace wholegrain_bread_day=wholegrain_bread/7 

su wholegrain_bread_day


destring n_1458_0_0r, replace
encode n_1468_0_0r, gen(n_1468_0_0renc)

labelbook n_1468_0_0renc
** Definition
**           1   Biscuit cereal (e.g. Weetabix)
**           2   Bran cereal (e.g. All Bran, Branflakes)
**           3   Muesli
**           4   Oat cereal (e.g. Ready Brek, porridge)
**           5   Other (e.g. Cornflakes, Frosties)




capture drop wholegrain_cereal
gen wholegrain_cereal=.
replace wholegrain_cereal=n_1458_0_0r if n_1468_0_0renc==1 | n_1468_0_0renc==2 | n_1468_0_0renc==3 | n_1468_0_0renc==4
replace wholegrain_cereal=0 if n_1468_0_0renc==5 & n_1458_0_0r~=. 

capture drop wholegrain_cereal_day
gen wholegrain_cereal_day=.
replace wholegrain_cereal_day=wholegrain_cereal/7 


capture drop wholegrain
gen wholegrain=(wholegrain_bread_day+wholegrain_cereal_day)

capture drop wholegrain_component3
gen wholegrain_component3=.
replace wholegrain_component3=1 if wholegrain>=3 & wholegrain~=.
replace wholegrain_component3=0 if wholegrain_component3~=1 & wholegrain~=.

//////////////FISH/SHELLFISH////////////////////////////////

**non-oily fish, times/week: n_1329_0_0r
**oily fish, times/week: n_1339_0_0r


**0	Never
**1	Less than once a week
**2	Once a week
**3	2-4 times a week
**4	5-6 times a week
**5	Once or more daily

tab1 n_1329_0_0r  n_1339_0_0r

capture drop n_1329_0_0renc
gen  n_1329_0_0renc=.
replace n_1329_0_0renc=0 if n_1329_0_0r=="Never"
replace n_1329_0_0renc=1 if n_1329_0_0r=="Less than once a week"
replace n_1329_0_0renc=2 if n_1329_0_0r=="Once a week"
replace n_1329_0_0renc=3 if n_1329_0_0r=="2-4 times a week"
replace n_1329_0_0renc=4 if n_1329_0_0r=="5-6 times a week"
replace n_1329_0_0renc=5 if n_1329_0_0r=="Once or more daily"

su n_1329_0_0renc

capture drop n_1339_0_0renc
gen  n_1339_0_0renc=.
replace n_1339_0_0renc=0 if n_1339_0_0r=="Never"
replace n_1339_0_0renc=1 if n_1339_0_0r=="Less than once a week"
replace n_1339_0_0renc=2 if n_1339_0_0r=="Once a week"
replace n_1339_0_0renc=3 if n_1339_0_0r=="2-4 times a week"
replace n_1339_0_0renc=4 if n_1339_0_0r=="5-6 times a week"
replace n_1339_0_0renc=5 if n_1339_0_0r=="Once or more daily"

su n_1339_0_0renc


capture drop fish
gen fish=n_1329_0_0renc+n_1339_0_0renc

capture drop fish_component4
gen fish_component4=.
replace fish_component4=1 if fish>=3 & fish~=.
replace fish_component4=0 if fish_component4~=1 & fish~=.



//////////////DAIRY PRODUCTS///////////////////////////////
tab1 n_6144_0_0r n_1408_0_0r n_1418_0_0r


**-> tabulation of n_6144_0_0r  

**                            n_6144_0_0r |      Freq.     Percent        Cum.
**----------------------------------------+-----------------------------------
**                         Dairy products |      3,821        0.77        0.77
**Dairy products|Sugar or foods/drinks .. |      1,997        0.40        1.17
**          Dairy products|Wheat products |        972        0.20        1.37
**Dairy products|Wheat products|Sugar o.. |        619        0.12        1.49
**          Eggs or foods containing eggs |      6,578        1.33        2.82
**Eggs or foods containing eggs|Dairy p.. |      1,097        0.22        3.04
**Eggs or foods containing eggs|Dairy p.. |        639        0.13        3.17
**Eggs or foods containing eggs|Dairy p.. |      2,309        0.47        3.64
**Eggs or foods containing eggs|Dairy p.. |        428        0.09        3.72
**Eggs or foods containing eggs|Sugar o.. |      2,762        0.56        4.28
**Eggs or foods containing eggs|Wheat p.. |        354        0.07        4.35
**Eggs or foods containing eggs|Wheat p.. |        153        0.03        4.38
**                 I eat all of the above |    382,172       77.09       81.48
** Sugar or foods/drinks containing sugar |     82,933       16.73       98.21
**                         Wheat products |      6,385        1.29       99.49
**Wheat products|Sugar or foods/drinks .. |      2,507        0.51      100.00
**----------------------------------------+-----------------------------------
**                                  Total |    495,726      100.00

capture drop n_6144_0_0renc
encode n_6144_0_0r, gen(n_6144_0_0renc)
labelbook n_6144_0_0renc
**  Definition
**           1   Dairy products
**           2   Dairy products|Sugar or foods/drinks containing sugar
**           3   Dairy products|Wheat products
**           4   Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**           5   Eggs or foods containing eggs
**           6   Eggs or foods containing eggs|Dairy products
**           7   Eggs or foods containing eggs|Dairy products|Sugar or foods/drinks containing sugar
**           8   Eggs or foods containing eggs|Dairy products|Wheat products
**           9   Eggs or foods containing eggs|Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**          10   Eggs or foods containing eggs|Sugar or foods/drinks containing sugar
**          11   Eggs or foods containing eggs|Wheat products
**          12   Eggs or foods containing eggs|Wheat products|Sugar or foods/drinks containing sugar
**          13   I eat all of the above
**          14   Sugar or foods/drinks containing sugar
**          15   Wheat products
**          16   Wheat products|Sugar or foods/drinks containing sugar


**Never eat eggs, dairy, wheat, sugar: n_6144_0_0r
**1	Eggs or foods containing eggs
**2	Dairy products
**3	Wheat products
**4	Sugar or foods/drinks containing sugar
**5	I eat all of the above


capture drop n_6144_1_0renc
encode n_6144_1_0r, gen(n_6144_1_0renc)
labelbook n_6144_1_0renc

**Definition
**           1   Dairy products
**           2   Dairy products|Sugar or foods/drinks containing sugar
**           3   Dairy products|Wheat products
**           4   Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**           5   Eggs or foods containing eggs
**           6   Eggs or foods containing eggs|Dairy products
**           7   Eggs or foods containing eggs|Dairy products|Sugar or foods/drinks containing sugar
**           8   Eggs or foods containing eggs|Dairy products|Wheat products
**           9   Eggs or foods containing eggs|Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**          10   Eggs or foods containing eggs|Sugar or foods/drinks containing sugar
**          11   Eggs or foods containing eggs|Wheat products
**          12   Eggs or foods containing eggs|Wheat products|Sugar or foods/drinks containing sugar
**          13   I eat all of the above
**          14   Sugar or foods/drinks containing sugar
**          15   Wheat products
**          16   Wheat products|Sugar or foods/drinks containing sugar

capture drop n_6144_2_0renc
encode n_6144_2_0r, gen(n_6144_2_0renc)
labelbook n_6144_2_0renc

                                   
**  Definition
**           1   Dairy products
**           2   Dairy products|Sugar or foods/drinks containing sugar
**           3   Dairy products|Wheat products
**           4   Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**           5   Eggs or foods containing eggs
**           6   Eggs or foods containing eggs|Dairy products
**           7   Eggs or foods containing eggs|Dairy products|Sugar or foods/drinks containing sugar
**           8   Eggs or foods containing eggs|Dairy products|Wheat products
**           9   Eggs or foods containing eggs|Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**          10   Eggs or foods containing eggs|Sugar or foods/drinks containing sugar
**          11   Eggs or foods containing eggs|Wheat products
**          12   Eggs or foods containing eggs|Wheat products|Sugar or foods/drinks containing sugar
**          13   I eat all of the above
**          14   Sugar or foods/drinks containing sugar
**          15   Wheat products
**          16   Wheat products|Sugar or foods/drinks containing sugar

capture drop n_6144_3_0renc
encode n_6144_3_0r, gen(n_6144_3_0renc)
labelbook n_6144_3_0renc

                                   
**  Definition
**           1   Dairy products
**           2   Dairy products|Sugar or foods/drinks containing sugar
**           3   Dairy products|Wheat products
**           4   Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**           5   Eggs or foods containing eggs
**           6   Eggs or foods containing eggs|Dairy products
**           7   Eggs or foods containing eggs|Dairy products|Sugar or foods/drinks containing sugar
**           8   Eggs or foods containing eggs|Dairy products|Wheat products
**           9   Eggs or foods containing eggs|Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**          10   Eggs or foods containing eggs|Sugar or foods/drinks containing sugar
**          11   Eggs or foods containing eggs|Wheat products
**          12   Eggs or foods containing eggs|Wheat products|Sugar or foods/drinks containing sugar
**          13   I eat all of the above
**          14   Sugar or foods/drinks containing sugar
**          15   Wheat products
**          16   Wheat products|Sugar or foods/drinks containing sugar

  

**-> tabulation of n_1408_0_0r  

**          n_1408_0_0r |      Freq.     Percent        Cum.
**----------------------+-----------------------------------
**     2-4 times a week |    220,445       45.20       45.20
**     5-6 times a week |     46,459        9.53       54.72
**Less than once a week |     84,690       17.36       72.09
**                Never |     13,561        2.78       74.87
**          Once a week |    104,735       21.47       96.34
**   Once or more daily |     17,830        3.66      100.00
**----------------------+-----------------------------------
**                Total |    487,720      100.00

**-> tabulation of n_1418_0_0r  

**           n_1418_0_0r |      Freq.     Percent        Cum.
**-----------------------+-----------------------------------
**            Full cream |     34,578        6.91        6.91
**Never/rarely have milk |     16,713        3.34       10.25
**    Other type of milk |      6,486        1.30       11.54
**          Semi-skimmed |    322,711       64.46       76.00
**               Skimmed |    100,533       20.08       96.08
**                  Soya |     19,610        3.92      100.00
**-----------------------+-----------------------------------
**                 Total |    500,631      100.00



**Never eat eggs, dairy, wheat, sugar: n_6144_0_0r (old)
**1	Eggs or foods containing eggs
**2	Dairy products
**3	Wheat products
**4	Sugar or foods/drinks containing sugar
**5	I eat all of the above


capture drop n_6144_0_0recdairy
gen n_6144_0_0recdairy=.
replace n_6144_0_0recdairy=1 if n_6144_0_0renc>=5 & n_6144_0_0renc<=12
replace n_6144_0_0recdairy=0 if n_6144_0_0recdairy~=1 & n_6144_0_0renc~=.

tab n_6144_0_0recdairy



**Cheese intake: n_1408_0_0r (old)**
**0	Never
**1	Less than once a week
**2	Once a week
**3	2-4 times a week
**4	5-6 times a week
**5	Once or more daily

capture drop n_1408_0_0rec
gen n_1408_0_0rec=.
replace n_1408_0_0rec=0 if n_1408_0_0r=="Never"
replace n_1408_0_0rec=1 if n_1408_0_0r=="Less than once a week"
replace n_1408_0_0rec=2 if n_1408_0_0r=="Once a week"
replace n_1408_0_0rec=3 if n_1408_0_0r=="2-4 times a week"
replace n_1408_0_0rec=4 if n_1408_0_0r=="5-6 times a week"
replace n_1408_0_0rec=5 if n_1408_0_0r=="Once or more daily"

tab n_1408_0_0rec


**Milk type used: n_1418_0_0r (old)
**1	Full cream
**2	Semi-skimmed
**3	Skimmed
**4	Soya
**5	Other type of milk
**6	Never/rarely have milk

capture drop n_1418_0_0rec
gen n_1418_0_0rec=.
replace n_1418_0_0rec=1 if n_1418_0_0r=="Full cream" 
replace n_1418_0_0rec=2 if n_1418_0_0r=="Semi-skimmed"
replace n_1418_0_0rec=3 if n_1418_0_0r=="Skimmed"
replace n_1418_0_0rec=4 if n_1418_0_0r=="Soya"
replace n_1418_0_0rec=5 if n_1418_0_0r=="Other type of milk"
replace n_1418_0_0rec=6 if n_1418_0_0r=="Never/rarely have milk"

tab n_1418_0_0rec


capture drop dairy_component5
gen dairy_component5=.
replace dairy_component5=1 if n_6144_0_0recdairy==0 & n_1408_0_0rec==5 & n_1418_0_0rec~=6 
replace dairy_component5=0 if dairy_component5~=1 & n_6144_0_0recdairy~=. & n_1408_0_0rec~=. & n_1418_0_0rec~=.

tab dairy_component5



/////////////VEGETABLE OILS//////////////////////////////

**Other types of non-butter spreads: n_2654_0_0r**

**4	Soft (tub) margarine
**5	Hard (block) margarine
**6	Olive oil based spread (eg: Bertolli)
**7	Polyunsaturated/sunflower oil based spread (eg: Flora)
**2	Flora Pro-Active or Benecol
**8	Other low or reduced fat spread
**9	Other type of spread/margarine

tab n_2654_0_0r


**                           n_2654_0_0r |      Freq.     Percent        Cum.
**----------------------------------------+-----------------------------------
**            Flora Pro-Active or Benecol |     39,589       15.33       15.33
**                 Hard (block) margarine |        400        0.15       15.48
**  Olive oil based spread (eg: Bertolli) |     63,378       24.54       40.02
**        Other low or reduced fat spread |     25,703        9.95       49.97
**         Other type of spread/margarine |      9,486        3.67       53.64
**Polyunsaturated/sunflower oil based s.. |     86,357       33.43       87.08
**                   Soft (tub) margarine |     33,376       12.92      100.00
**----------------------------------------+-----------------------------------
**                                  Total |    258,289      100.00


capture drop n_2654_0_0rec
gen n_2654_0_0rec=.
replace n_2654_0_0rec=4 if n_2654_0_0r=="Soft (tub) margarine"
replace n_2654_0_0rec=5 if n_2654_0_0r=="Hard (block) margarine"
replace n_2654_0_0rec=6 if n_2654_0_0r=="Olive oil based spread (eg: Bertolli)"
replace n_2654_0_0rec=7 if n_2654_0_0r=="Polyunsaturated/sunflower oil based spread (eg: Flora)"
replace n_2654_0_0rec=2 if n_2654_0_0r=="Flora Pro-Active or Benecol"
replace n_2654_0_0rec=8 if n_2654_0_0r=="Other low or reduced fat spread"
replace n_2654_0_0rec=9 if n_2654_0_0r=="Other type of spread/margarine"

tab n_2654_0_0rec

capture drop vegoil_component6
gen vegoil_component6=.
replace vegoil_component6=1 if n_2654_0_0rec==6 | n_2654_0_0rec==7 
replace vegoil_component6=0 if vegoil_component6~=1 

tab vegoil_component6



////////////REFINED GRAINS, STARCHES, ADDED SUGARS///////


su n_1438_0_0r


**Bread intake, slices/week: n_1438_0_0r

tab n_1448_0_0r

**            n_1448_0_0r |      Freq.     Percent        Cum.
**------------------------+-----------------------------------
**                  Brown |     60,546       12.63       12.63
**    Other type of bread |     20,566        4.29       16.92
**                  White |    127,003       26.49       43.40
**Wholemeal or wholegrain |    271,409       56.60      100.00
**------------------------+-----------------------------------
**                  Total |    479,524      100.00



**Type of bread: n_1448_0_0r (old)	

**1 White
**2	Brown
**3	wholemeal or wholegrain
**4	Other type of bread

capture drop n_1448_0_0rec
gen n_1448_0_0rec=.
replace n_1448_0_0rec=1 if n_1448_0_0r=="White"
replace n_1448_0_0rec=2 if n_1448_0_0r=="Brown"
replace n_1448_0_0rec=3 if n_1448_0_0r=="Wholemeal or wholegrain"
replace n_1448_0_0rec=4 if n_1448_0_0r=="Other type of bread"

tab n_1448_0_0rec
su n_1448_0_0rec

**Cereal intake, bowls/week: n_1458_0_0r



**Type of cereal: n_1468_0_0r

**1	Bran cereal (e.g. All Bran, Branflakes)
**2	Biscuit cereal (e.g. Weetabix)
**3	Oat cereal (e.g. Ready Brek, porridge)
**4	Muesli
**5	Other (e.g. Cornflakes, Frosties)

tab n_1468_0_0r


**                            n_1468_0_0r |      Freq.     Percent        Cum.
**----------------------------------------+-----------------------------------
**         Biscuit cereal (e.g. Weetabix) |     72,948       17.72       17.72
**Bran cereal (e.g. All Bran, Branflakes) |     69,335       16.84       34.55
**                                 Muesli |     82,848       20.12       54.67
** Oat cereal (e.g. Ready Brek, porridge) |    105,863       25.71       80.38
**      Other (e.g. Cornflakes, Frosties) |     80,770       19.62      100.00
**----------------------------------------+-----------------------------------
**                                  Total |    411,764      100.00

capture drop n_1468_0_0rec
gen n_1468_0_0rec=.
replace n_1468_0_0rec=1 if n_1468_0_0r=="Bran cereal (e.g. All Bran, Branflakes)"
replace n_1468_0_0rec=2 if n_1468_0_0r=="Biscuit cereal (e.g. Weetabix)"
replace n_1468_0_0rec=3 if n_1468_0_0r=="Oat cereal (e.g. Ready Brek, porridge)"
replace n_1468_0_0rec=4 if n_1468_0_0r=="Muesli"
replace n_1468_0_0rec=5 if n_1468_0_0r=="Other (e.g. Cornflakes, Frosties)"

tab n_1468_0_0rec
su n_1468_0_0rec

destring n_1438_0_0r,replace

su n_1438_0_0r

capture drop nonwholegrain_bread
gen nonwholegrain_bread=.
replace nonwholegrain_bread=n_1438_0_0r if n_1448_0_0rec~=3 & n_1448_0_0rec~=.
replace nonwholegrain_bread=0 if n_1448_0_0rec==3 & n_1438_0_0r~=.



capture drop nonwholegrain_bread_day
gen nonwholegrain_bread_day=.
replace nonwholegrain_bread_day=nonwholegrain_bread/7 

capture drop nonwholegrain_cereal
gen nonwholegrain_cereal=.
replace nonwholegrain_cereal=n_1458_0_0r if n_1468_0_0rec==5 
replace nonwholegrain_cereal=0 if n_1468_0_0rec~=5 & n_1458_0_0r~=.

capture drop nonwholegrain_cereal_day
gen nonwholegrain_cereal_day=.
replace nonwholegrain_cereal_day=nonwholegrain_cereal/7 


capture drop nonwholegrain
gen nonwholegrain=nonwholegrain_bread_day+nonwholegrain_cereal_day

capture drop nonwholegrain_component7
gen nonwholegrain_component7=.
replace nonwholegrain_component7=1 if nonwholegrain<1.5 & nonwholegrain~=.
replace nonwholegrain_component7=0 if nonwholegrain_component7~=1 & nonwholegrain~=.


save, replace

////////////PROCESSED MEATS/////////////////////////////


**n_1349_0_0r (old)
**0	Never
**1	Less than once a week
**2	Once a week
**3	2-4 times a week
**4	5-6 times a week
**5	Once or more daily

tab n_1349_0_0r

**          n_1349_0_0r |      Freq.     Percent        Cum.
**----------------------+-----------------------------------
**     2-4 times a week |    135,266       27.06       27.06
**     5-6 times a week |     15,654        3.13       30.19
**Less than once a week |    152,237       30.45       60.64
**                Never |     46,734        9.35       69.99
**          Once a week |    145,935       29.19       99.18
**   Once or more daily |      4,101        0.82      100.00
**----------------------+-----------------------------------
**                Total |    499,927      100.00


capture drop n_1349_0_0rec
gen n_1349_0_0rec=.
replace n_1349_0_0rec=0 if n_1349_0_0r=="Never"
replace n_1349_0_0rec=1 if n_1349_0_0r=="Less than once a week"
replace n_1349_0_0rec=2 if n_1349_0_0r=="Once a week"
replace n_1349_0_0rec=3 if n_1349_0_0r=="2-4 times a week"
replace n_1349_0_0rec=4 if n_1349_0_0r=="5-6 times a week"
replace n_1349_0_0rec=5 if n_1349_0_0r=="Once or more daily"

tab n_1349_0_0rec


capture drop processed_meat
gen processed_meat=n_1349_0_0rec

capture drop processed_meat_component8
gen processed_meat_component8=.
replace processed_meat_component8=1 if processed_meat==0 | processed_meat==1 | processed_meat==2
replace processed_meat_component8=0 if processed_meat==3 | processed_meat==4 | processed_meat==5


///////////UNPROCESSED RED MEATS/////////////////////////////

**Poultry: n_1359_0_0r: White meat
**Lamb/mutton: n_1379_0_0r: Red meat
**Beef:n_1369_0_0r: Red meat
**Pork:n_1389_0_0r: Red meat

**Old coding for the meat variables**
**0	Never
**1	Less than once a week
**2	Once a week
**3	2-4 times a week
**4	5-6 times a week
**5	Once or more daily

tab1 n_1369_0_0r n_1379_0_0r n_1389_0_0r

foreach x of varlist n_1369_0_0r n_1379_0_0r n_1389_0_0r {
	gen `x'ec=.
	replace `x'ec=0 if `x'=="Never"
	replace `x'ec=1 if `x'=="Less than once a week"
	replace `x'ec=2 if `x'=="Once a week"
	replace `x'ec=3 if `x'=="2-4 times a week"
	replace `x'ec=4 if `x'=="5-6 times a week"
	replace `x'ec=5 if `x'=="Once or more daily"
}    


**-> tabulation of n_1369_0_0r  

**          n_1369_0_0r |      Freq.     Percent        Cum.
**----------------------+-----------------------------------
**     2-4 times a week |     56,394       11.31       11.31
**     5-6 times a week |        909        0.18       11.49
**Less than once a week |    226,947       45.50       56.98
**                Never |     55,556       11.14       68.12
**          Once a week |    158,627       31.80       99.92
**   Once or more daily |        401        0.08      100.00
**----------------------+-----------------------------------
**                Total |    498,834      100.00

**-> tabulation of n_1379_0_0r  

**          n_1379_0_0r |      Freq.     Percent        Cum.
**----------------------+-----------------------------------
**     2-4 times a week |     14,778        2.97        2.97
**     5-6 times a week |        322        0.06        3.03
**Less than once a week |    281,551       56.57       59.61
**                Never |     88,583       17.80       77.41
**          Once a week |    112,195       22.54       99.95
**   Once or more daily |        242        0.05      100.00
**----------------------+-----------------------------------
**                Total |    497,671      100.00

**-> tabulation of n_1389_0_0r  

**          n_1389_0_0r |      Freq.     Percent        Cum.
**----------------------+-----------------------------------
**     2-4 times a week |     17,112        3.44        3.44
**     5-6 times a week |        466        0.09        3.53
**Less than once a week |    282,585       56.76       60.29
**                Never |     86,381       17.35       77.64
**          Once a week |    111,071       22.31       99.95
**   Once or more daily |        248        0.05      100.00
**----------------------+-----------------------------------
**                Total |    497,863      100.00


tab1 n_1369_0_0rec n_1379_0_0rec n_1389_0_0rec

capture drop unprocessed_meats
gen unprocessed_meats=(n_1369_0_0rec+n_1379_0_0rec+n_1389_0_0rec)


capture drop unprocessed_meats_component9
gen unprocessed_meats_component9=.
replace unprocessed_meats_component9=1 if unprocessed_meats<3 & unprocessed_meats~=.
replace unprocessed_meats_component9=0 if unprocessed_meats_component9~=1 & unprocessed_meats~=.

tab unprocessed_meats_component9 


////////////INDUSTRIAL TRANS FAT////////////////////////////

**Type of spread: n_1428_0_0r (old)

**1	Butter/spreadable butter
**3	Other type of spread/margarine
**0	Never/rarely use spread
**2	Flora Pro-Active/Benecol

capture drop n_1428_0_0rec
gen n_1428_0_0rec=.
replace n_1428_0_0rec=1 if n_1428_0_0r=="Butter/spreadable butter"
replace n_1428_0_0rec=3 if n_1428_0_0r=="Other type of spread/margarine"
replace n_1428_0_0rec=0 if n_1428_0_0r=="Never/rarely use spread"
replace n_1428_0_0rec=2 if n_1428_0_0r=="Flora Pro-Active/Benecol"

tab n_1428_0_0rec

capture drop transfat_component10
gen transfat_component10=.
replace transfat_component10=1 if n_1428_0_0rec==0
replace transfat_component10=0 if transfat_component10~=1 & n_1428_0_0rec~=.

tab transfat_component10




////////////SUGAR SWEETENDED BEVERAGES/////////////////////


tab n_6144_0_0r

**-> tabulation of n_6144_0_0r  

**                            n_6144_0_0r |      Freq.     Percent        Cum.
**----------------------------------------+-----------------------------------
**                         Dairy products |      3,821        0.77        0.77
**Dairy products|Sugar or foods/drinks .. |      1,997        0.40        1.17
**          Dairy products|Wheat products |        972        0.20        1.37
**Dairy products|Wheat products|Sugar o.. |        619        0.12        1.49
**          Eggs or foods containing eggs |      6,578        1.33        2.82
**Eggs or foods containing eggs|Dairy p.. |      1,097        0.22        3.04
**Eggs or foods containing eggs|Dairy p.. |        639        0.13        3.17
**Eggs or foods containing eggs|Dairy p.. |      2,309        0.47        3.64
**Eggs or foods containing eggs|Dairy p.. |        428        0.09        3.72
**Eggs or foods containing eggs|Sugar o.. |      2,762        0.56        4.28
**Eggs or foods containing eggs|Wheat p.. |        354        0.07        4.35
**Eggs or foods containing eggs|Wheat p.. |        153        0.03        4.38
**                 I eat all of the above |    382,172       77.09       81.48
** Sugar or foods/drinks containing sugar |     82,933       16.73       98.21
**                         Wheat products |      6,385        1.29       99.49
**Wheat products|Sugar or foods/drinks .. |      2,507        0.51      100.00
**----------------------------------------+-----------------------------------
**                                  Total |    495,726      100.00

capture drop n_6144_0_0renc
encode n_6144_0_0r, gen(n_6144_0_0renc)
labelbook n_6144_0_0renc
**  Definition
**           1   Dairy products
**           2   Dairy products|Sugar or foods/drinks containing sugar
**           3   Dairy products|Wheat products
**           4   Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**           5   Eggs or foods containing eggs
**           6   Eggs or foods containing eggs|Dairy products
**           7   Eggs or foods containing eggs|Dairy products|Sugar or foods/drinks containing sugar
**           8   Eggs or foods containing eggs|Dairy products|Wheat products
**           9   Eggs or foods containing eggs|Dairy products|Wheat products|Sugar or foods/drinks containing sugar
**          10   Eggs or foods containing eggs|Sugar or foods/drinks containing sugar
**          11   Eggs or foods containing eggs|Wheat products
**          12   Eggs or foods containing eggs|Wheat products|Sugar or foods/drinks containing sugar
**          13   I eat all of the above
**          14   Sugar or foods/drinks containing sugar
**          15   Wheat products
**          16   Wheat products|Sugar or foods/drinks containing sugar


**Never eat eggs, dairy, wheat, sugar: n_6144_0_0r
**1	Eggs or foods containing eggs
**2	Dairy products
**3	Wheat products
**4	Sugar or foods/drinks containing sugar
**5	I eat all of the above

tab n_6144_0_0renc

 

**                         n_6144_0_0renc |      Freq.     Percent        Cum.
**----------------------------------------+-----------------------------------
**                         Dairy products |      3,821        0.77        0.77
**Dairy products|Sugar or foods/drinks co |      1,997        0.40        1.17
**          Dairy products|Wheat products |        972        0.20        1.37
**Dairy products|Wheat products|Sugar or  |        619        0.12        1.49
**          Eggs or foods containing eggs |      6,578        1.33        2.82
**Eggs or foods containing eggs|Dairy pro |      1,097        0.22        3.04
**Eggs or foods containing eggs|Dairy pro |        639        0.13        3.17
**Eggs or foods containing eggs|Dairy pro |      2,309        0.47        3.64
**Eggs or foods containing eggs|Dairy pro |        428        0.09        3.72
**Eggs or foods containing eggs|Sugar or  |      2,762        0.56        4.28
**Eggs or foods containing eggs|Wheat pro |        354        0.07        4.35
**Eggs or foods containing eggs|Wheat pro |        153        0.03        4.38
**                 I eat all of the above |    382,172       77.09       81.48
** Sugar or foods/drinks containing sugar |     82,933       16.73       98.21
**                         Wheat products |      6,385        1.29       99.49
**Wheat products|Sugar or foods/drinks co |      2,507        0.51      100.00
**----------------------------------------+-----------------------------------
**                                  Total |    495,726      100.00



capture drop n_6144_0_0recsweet
gen n_6144_0_0recsweet=.
replace n_6144_0_0recsweet=1 if inlist(n_6144_0_0renc,2,4,7,9,10,12,14,16) 
replace n_6144_0_0recsweet=0 if n_6144_0_0recsweet~=1 & n_6144_0_0renc~=.

tab n_6144_0_0recsweet


capture drop sugar_bev_component11
gen sugar_bev_component11=.
replace sugar_bev_component11=0 if n_6144_0_0recsweet==0
replace sugar_bev_component11=1 if sugar_bev_component11~=0 & n_6144_0_0recsweet~=.

tab sugar_bev_component11


////////////SODIUM////////////////////////////////////////

**Salt added to food: n_1478_0_0r (old)
**1	Never/rarely
**2	Sometimes
**3	Usually
**4	Always

tab n_1478_0_0r

**---------------------+-----------------------------------
**              Always |     24,416        4.87        4.87
**        Never/rarely |    277,745       55.43       60.31
**           Sometimes |    140,518       28.05       88.35
**             Usually |     58,352       11.65      100.00
**---------------------+-----------------------------------
**               Total |    501,031      100.00


capture drop n_1478_0_0rec
gen n_1478_0_0rec=.
replace n_1478_0_0rec=1 if n_1478_0_0r=="Never/rarely"
replace n_1478_0_0rec=2 if n_1478_0_0r=="Sometimes"
replace n_1478_0_0rec=3 if n_1478_0_0r=="Usually"
replace n_1478_0_0rec=4 if n_1478_0_0r=="Always" 


tab n_1478_0_0rec

capture drop sodium_component12
gen sodium_component12=.
replace sodium_component12=1 if n_1478_0_0rec==1 | n_1478_0_0rec==2
replace sodium_component12=0 if sodium_component12~=1 & n_1478_0_0rec~=.

tab sodium_component12

//////////HDI_TOTALSCORE//////////////////

capture drop rowmissHDI
egen rowmissHDI=rowmiss(allfruits_component1 allvegs_component2 wholegrain_component3 fish_component4 dairy_component5 vegoil_component6 nonwholegrain_component7 processed_meat_component8 unprocessed_meats_component9 transfat_component10 sugar_bev_component11 sodium_component12)

tab rowmissHDI


capture drop HDI_TOTALSCORE
egen HDI_TOTALSCORE=rowmean(allfruits_component1 allvegs_component2 wholegrain_component3 fish_component4 dairy_component5 vegoil_component6 nonwholegrain_component7 processed_meat_component8 unprocessed_meats_component9 transfat_component10 sugar_bev_component11 sodium_component12) if rowmissHDI<=6

replace HDI_TOTALSCORE=HDI_TOTALSCORE*12 

////////////////////

///////////////////RECODING FOR VARIATION IN DIET///////////////

**n_1548_0_0 (old)
**Coding	Meaning
**1	Never/rarely
**2	Sometimes
**3	Often
**-1	Do not know
**-3	Prefer not to answer

tab n_1548_0_0

capture drop n_1548_0_0r
gen n_1548_0_0r=.
replace  n_1548_0_0r=1 if n_1548_0_0=="Never/rarely"
replace  n_1548_0_0r=2 if n_1548_0_0=="Sometimes"
replace  n_1548_0_0r=3 if n_1548_0_0=="Often"


capture drop DIET_VARIATION
gen DIET_VARIATION=n_1548_0_0r


su DIET_VARIATION

////////////DIET z-score///////////////

capture drop zHDI_TOTALSCORE
egen zHDI_TOTALSCORE=std(HDI_TOTALSCORE)

capture drop zDIET_VARIATION
egen zDIET_VARIATION=std(DIET_VARIATION)


capture drop DIET
gen DIET=zHDI_TOTALSCORE

save, replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3C.smcl",replace

//STEP 5: GENERATE LIFESTYLE VARIABLES: NUTR//

clear
use n_eid n_30890_0_0 n_30070_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\NUTR_UKB",replace

label var n_30890_0_0 "Vitamin D"
label var n_30070_0_0 "Red blood cell (erythrocyte) distribution width"


pwcorr n_30890_0_0 n_30070_0_0, sig

capture drop vitamind
gen vitamind= n_30890_0_0 


capture drop rdw
gen rdw=n_30070_0_0 

capture drop zvitamind
egen zvitamind=std(vitamind)

capture drop zrdw
egen zrdw=std(rdw)

capture drop zrdwinv
gen zrdwinv=zrdw*-1

capture drop rowmissNUTR
egen rowmissNUTR=rowmiss(zvitamind zrdwinv)

tab rowmissNUTR

capture drop NUTR
egen NUTR=rmean(zvitamind zrdwinv) if rowmissNUTR<=1

save, replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3D.smcl",replace

//STEP 6: GENERATE LIFESTYLE VARIABLES: SS//

clear

use n_eid s_1031_0_0 s_6160_0_* s_2110_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SS_UKB",replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SS_UKB",clear

 
//////////SOCIAL SUPPORT VARIABLE 1/////

**Frequency of friend/family visits**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=1031

**n_1031_0_0 (old), now called s_1031_0_0
**WP11 How often do you visit friends or family
**or have them visit you?
**SELECT one of 9 from
**1 : Almost daily
**2 : 2-4 times a week
**3 : About once a week
**4 : About once a month
**5 : Once every few months
**6 : Never or almost never
**7 : No friends/family
**outside household
**-1 : Do not know
**-3 : Prefer not to answer
**Goto WP12 If this varies, please give an average of
**how often you visit or have had visits in
**the last year. Include meeting with
**friends or family in environments
**outside of the home such as in the park,
**at a sports field, at a restaurant or pub.

**n_1031_0_0r**
capture drop n_1031_0_0r
gen n_1031_0_0r=.
replace n_1031_0_0r=1 if s_1031_0_0=="Almost daily"
replace n_1031_0_0r=2 if s_1031_0_0=="2-4 times a week"
replace n_1031_0_0r=3 if s_1031_0_0=="About once a week"
replace n_1031_0_0r=4 if s_1031_0_0=="About once a month"
replace n_1031_0_0r=5 if s_1031_0_0=="Once every few months"
replace n_1031_0_0r=6 if s_1031_0_0=="Never or almost never"
replace n_1031_0_0r=7 if s_1031_0_0=="No friends/family outside household"
replace n_1031_0_0r=-1 if s_1031_0_0=="Do not know" 
replace n_1031_0_0r=-3 if s_1031_0_0=="Prefer not to answer"


capture drop SS_friendsfamily
gen SS_friendsfamily=.
replace SS_friendsfamily=n_1031_0_0r
replace SS_friendsfamily=. if n_1031_0_0r==-1
replace SS_friendsfamily=. if n_1031_0_0r==-3
recode SS_friendsfamily (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1)

tab SS_friendsfamily


///SOCIAL SUPPORT VARIABLE 2/////
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=6160

**WP12 Which of the following do you attend once
**a week or more often?
**(You can select more than one)
**TOGGLE of 7 choices
**1 : Sports club or gym
**2 : Pub or social club
**3 : Religious group
**4 : Adult education class
**5 : Other group activity
**-7 : None of the above
**-3 : Prefer not to answer
**Require ≥1
**choices
**-7 : is exclusive
**-3 : is exclusive
**Goto WP12A If this varies, please think about
**activities in the last year.

encode s_6160_0_0,gen(n_6160_0_0r)

labelbook n_6160_0_0r


**  Definition
**           1   Adult education class
**           2   Adult education class|Other group activity
**           3   None of the above
**           4   Other group activity
**           5   Prefer not to answer
**           6   Pub or social club
**           7   Pub or social club|Adult education class
**           8   Pub or social club|Adult education class|Other group activity
**           9   Pub or social club|Other group activity
**          10   Pub or social club|Religious group
**          11   Pub or social club|Religious group|Adult education class
**          12   Pub or social club|Religious group|Adult education class|Other group activity
**          13   Pub or social club|Religious group|Other group activity
**          14   Religious group
**          15   Religious group|Adult education class
**          16   Religious group|Adult education class|Other group activity
**          17   Religious group|Other group activity
**          18   Sports club or gym
**          19   Sports club or gym|Adult education class
**          20   Sports club or gym|Adult education class|Other group activity
**          21   Sports club or gym|Other group activity
**          22   Sports club or gym|Pub or social club
**          23   Sports club or gym|Pub or social club|Adult education class
**          24   Sports club or gym|Pub or social club|Adult education class|Other group activity
**          25   Sports club or gym|Pub or social club|Other group activity
**          26   Sports club or gym|Pub or social club|Religious group
**          27   Sports club or gym|Pub or social club|Religious group|Adult education class
**          28   Sports club or gym|Pub or social club|Religious group|Adult education class|Other group activity
**          29   Sports club or gym|Pub or social club|Religious group|Other group activity
**          30   Sports club or gym|Religious group
**          31   Sports club or gym|Religious group|Adult education class
**          32   Sports club or gym|Religious group|Adult education class|Other group activity
**          33   Sports club or gym|Religious group|Other group activity

**   Variables:  n_6160_0_0r




**1 : Sports club or gym**
capture drop SS_leisuresocial1
gen SS_leisuresocial1=.
replace SS_leisuresocial1=1 if inlist(n_6160_0_0,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33)
replace SS_leisuresocial1=0 if SS_leisuresocial1~=1 & n_6160_0_0~=3 & n_6160_0_0~=5

tab SS_leisuresocial1

**2: Pub or social club
capture drop SS_leisuresocial2
gen SS_leisuresocial2=.
replace SS_leisuresocial2=1 if inlist(n_6160_0_0,6,7,8,9,10,11,12,13,22,23,24,25,26,27,28,29)
replace SS_leisuresocial2=0 if SS_leisuresocial2~=1 & n_6160_0_0~=3 & n_6160_0_0~=5

tab SS_leisuresocial2

**3: Religious group
capture drop SS_leisuresocial3
gen SS_leisuresocial3=.
replace SS_leisuresocial3=1 if inlist(n_6160_0_0,10,11,12,13,14,15,16,17,26,27,28,29,30,31,32,33)
replace SS_leisuresocial3=0 if SS_leisuresocial3~=1 & n_6160_0_0~=3 & n_6160_0_0~=5

tab SS_leisuresocial3

**4:Adult education class
capture drop SS_leisuresocial4
gen SS_leisuresocial4=.
replace SS_leisuresocial4=1 if inlist(n_6160_0_0,1,2,7,8,11,12,15,16,19,20,23,24,27,28,31,32)
replace SS_leisuresocial4=0 if SS_leisuresocial4~=1 & n_6160_0_0~=3 & n_6160_0_0~=5

tab SS_leisuresocial4

**5: Other group activity
capture drop SS_leisuresocial5
gen SS_leisuresocial5=.
replace SS_leisuresocial5=1 if inlist(n_6160_0_0,2,4,8,9,13,16,20,21,24,25,28,29,32,33)
replace SS_leisuresocial5=0 if SS_leisuresocial5~=1 & n_6160_0_0~=3 & n_6160_0_0~=5

tab SS_leisuresocial5




capture drop rowmissSS1
egen rowmissSS1=rowmiss(SS_leisuresocial1 SS_leisuresocial2 SS_leisuresocial3 SS_leisuresocial4 SS_leisuresocial5)

tab rowmissSS1

capture drop SS_leisuresocial
egen SS_leisuresocial=rmean(SS_leisuresocial1 SS_leisuresocial2 SS_leisuresocial3 SS_leisuresocial4 SS_leisuresocial5) if rowmissSS1<=5

replace SS_leisuresocial=SS_leisuresocial*5

save, replace




**SOCIAL SUPPORT VARIABLE 3**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=2110

**E1 How often are you able to confide in
**someone close to you?
**SELECT one of 8 from
**5 : Almost daily
**4 : 2-4 times a week
**3 : About once a week
**2 : About once a month
**1 : Once every few months
**0 : Never or almost never
**-1 : Do not know
**-3 : Prefer not to answer

**tab s_2110_0_0


**             2110-0.0 |      Freq.     Percent        Cum.
**----------------------+-----------------------------------
**     2-4 times a week |     46,741        9.32        9.32
**   About once a month |     25,854        5.16       14.48
**    About once a week |     53,290       10.63       25.11
**         Almost daily |    258,387       51.55       76.66
**          Do not know |     14,834        2.96       79.62
**Never or almost never |     71,687       14.30       93.92
**Once every few months |     27,336        5.45       99.38
** Prefer not to answer |      3,115        0.62      100.00
**----------------------+-----------------------------------
**                Total |    501,244      100.00


capture drop n_2110_0_0
gen n_2110_0_0=.
replace n_2110_0_0=5 if s_2110_0_0=="Almost daily"
replace n_2110_0_0=4 if s_2110_0_0=="2-4 times a week"
replace n_2110_0_0=3 if s_2110_0_0=="About once a week"
replace n_2110_0_0=2 if s_2110_0_0=="About once a month"
replace n_2110_0_0=1 if s_2110_0_0=="Once every few months"
replace n_2110_0_0=0 if s_2110_0_0=="Never or almost never"
replace n_2110_0_0=-1 if s_2110_0_0=="Do not know"
replace n_2110_0_0=-3 if s_2110_0_0=="Prefer not to answer"

capture drop SS_abilityconfide
gen SS_abilityconfide=.
replace SS_abilityconfide=n_2110_0_0
replace SS_abilityconfide=. if n_2110_0_0==-1 | n_2110_0_0==-3

tab SS_abilityconfide

save, replace

capture drop zSS_friendsfamily
egen zSS_friendsfamily=std(SS_friendsfamily)

capture drop zSS_leisuresocial
egen zSS_leisuresocial=std(SS_leisuresocial)

capture drop zSS_abilityconfide
egen zSS_abilityconfide=std(SS_abilityconfide)


capture drop rowmissSS
egen rowmissSS=rowmiss(zSS_friendsfamily zSS_leisuresocial zSS_abilityconfide)

tab rowmissSS



capture drop SS
egen SS=rmean(zSS_friendsfamily zSS_leisuresocial zSS_abilityconfide) if rowmissSS<=1


save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3E.smcl",replace

//STEP 7: GENERATE HEALTH VARIABLES//

use  n_eid n_135_0_0 n_134_0_0 s_2178_0_0 n_21001_0_0 n_21001_0_0 n_48_0_0 n_49_0_0 n_30600_0_0 n_30710_0_0 n_30690_0_0 n_30760_0_0 n_30750_0_0 n_102_0_0 n_4080_0_0 n_4079_0_0 s_31_0_0 **s_2443_0_0 s_1160_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin", clear

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\HEALTH_UKB",replace

clear 
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\HEALTH_UKB",clear

*Sex*
capture drop sex
capture drop n_31_0_0
gen n_31_0_0=s_31_0_0
encode n_31_0_0, gen(sex) 
tab sex
su sex
capture drop sexnum
gen sexnum=1 if sex==2
replace sexnum=2 if sex==1
capture drop sex
capture rename sexnum sex
save, replace
describe sex



********************CO-MORBIDITY INDEX**********

**NUMBER OF SELF-REPORTED NON-CANCER ILLNESSES:***

**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=135

capture drop comorbid_noncancer
gen comorbid_noncancer=.
replace comorbid_noncancer=n_135_0_0


***NUMBER OF SELF-REPORTED CANCERS*****

**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=134

capture drop comorbid_cancer
gen comorbid_cancer=.
replace comorbid_cancer=n_134_0_0

**NUMBER OF CO-MORBIDITIES**

capture drop comorbid
gen comorbid=comorbid_noncancer+comorbid_cancer


***********SELF-RATED HEALTH***************
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=2178
tab s_2178_0_0


**            2178-0.0 |      Freq.     Percent        Cum.
**---------------------+-----------------------------------
**        Do not know |      2,202        0.44        0.44
**           Excellent |     81,792       16.32       16.76
**                Fair |    105,288       21.01       37.76
**                Good |    288,831       57.62       95.39
**                Poor |     22,760        4.54       99.93
**Prefer not to answer |        365        0.07      100.00
**---------------------+-----------------------------------
**               Total |    501,238      100.00

capture drop n_2178_0_0
gen n_2178_0_0=.
replace n_2178_0_0=1 if s_2178_0_0=="Excellent"
replace n_2178_0_0=2 if s_2178_0_0=="Good"
replace n_2178_0_0=3 if s_2178_0_0=="Fair"
replace n_2178_0_0=4 if s_2178_0_0=="Poor"
replace n_2178_0_0=-1 if s_2178_0_0=="Do not know"
replace n_2178_0_0=-3 if s_2178_0_0=="Prefer not to answer"

capture drop srh
gen srh=n_2178_0_0

capture drop srhbr
gen srhbr=.
replace srhbr=srh if srh~=-1 & srh~=-3

tab srhbr


***********BODY MASS INDEX****************
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=23104

capture drop bmi
gen bmi=n_21001_0_0 
label var bmi "body mass index kg/m^2" //missing values exist - consider imputation

su bmi



***********ALLOSTATIC LOAD****************

***WAIST TO HIP RATIO***
**https://biobank.ctsu.ox.ac.uk/crystal/search.cgi?wot=0&srch=waist+circumference&sta0=on&sta1=on&sta2=on&sta3=on&str0=on&str3=on&fit0=on&fit10=on&fit20=on&fit30=on&fvt11=on&fvt21=on&fvt22=on&fvt31=on&fvt41=on&fvt51=on&fvt61=on&fvt101=on&yfirst=2000&ylast=2021

su n_48_0_0 n_49_0_0, det

capture drop waist
gen waist=n_48_0_0
label var waist "waist circumference cm" //missing values exist - consider imputation

capture drop hip
gen hip=n_49_0_0
label var hip "hip circumference cm" //missing values exist - consider imputation

capture drop waisthipratio
gen waisthipratio=waist/hip
label var waisthipratio "waist-hip ratio" //missing values exist - consider imputation

capture drop whr_high
gen whr_high=.
replace whr_high=1 if waisthipratio>0.90 & waisthipratio~=. & sex==1 | waisthipratio>0.85 & waisthipratio~=. & sex==2
replace whr_high=0 if whr_high~=1 & waisthipratio~=. 

label var whr_high "elevated, sex-specific waist-hip ratio: 0.90 for men, 0.85 for women"

tab whr_high 

**LOW SERUM ALBUMIN, <38 g/L**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30600**

su n_30600_0_0, det

capture drop albumin_low
gen albumin_low=.
replace albumin_low=1 if n_30600_0_0<38 & n_30600_0_0~=.
replace albumin_low=0 if albumin_low~=1 & n_30600_0_0~=. 
label var albumin_low "low serum albumin, <38 g/l"

tab albumin_low

**HIGH CRP, >=3 mg/dL**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30710

su n_30710_0_0,det

capture drop crp_high
gen crp_high=. 
replace crp_high=1 if n_30710_0_0>=3 & n_30710_0_0~=.
replace crp_high=0 if crp_high~=1 & n_30710_0_0~=. 
label var crp_high "elevated C-reactive protein, >=3 g/l"

tab crp_high


**ELEVATED TC, >=240 mg/dL: divide by 38.67 to get mmol/L: >=6.21 mmol/L

**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30690,det
**https://www.omnicalculator.com/health/cholesterol-units

su n_30690_0_0, det

capture drop tc_high
gen tc_high=.
replace tc_high=1 if n_30690_0_0>=6.21 & n_30690_0_0~=. 
replace tc_high=0 if tc_high~=1 & n_30690_0_0~=. 
label var tc_high "elevated total cholesterol, >=6.21 mmol/L"


tab tc_high

**LOW HDL-C, <40 mg/dL: divide by 38.67 to get mmol/L: <1.034 mmol/L**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30760
**https://www.omnicalculator.com/health/cholesterol-units

su n_30760_0_0, det


capture drop hdl_low
gen hdl_low=.
replace hdl_low=1 if n_30760_0_0<1.034 & n_30760_0_0~=.
replace hdl_low=0 if hdl_low~=1 & n_30760_0_0~=.
label var hdl_low "low HDL-C, <1.034 mmol/L"

tab hdl_low



**Glycated hemoglobin, % change to mmol/mol:  cutoff in % is 6.4% --> 46 mmol/mol
**https://www.hba1cnet.com/hba1c-calculator/
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30750

su n_30750_0_0,det

capture drop ghp_high
gen ghp_high=.
replace ghp_high=1 if n_30750_0_0>=46 & n_30750_0_0~=. 
replace ghp_high=0 if ghp_high~=1 & n_30750_0_0~=. 
label var ghp_high "High glycated hemoglobin A1c, >=46 mmol/mol"


tab ghp_high


**PULSE RATE, automated reading, beats/min:
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=102


su n_102_0_0,det

capture drop rhr_high
gen rhr_high=.
replace rhr_high=1 if n_102_0_0>=90 & n_102_0_0~=.
replace rhr_high=0 if rhr_high~=1 & n_102_0_0~=.
label var rhr_high "Resting pulse rate, >=90 beats/min"

tab rhr_high

**Blood pressure, automated reading:

**Systolic blood pressure, automated reading, mm Hg, >=140 mm Hg: 
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=4080

su n_4080_0_0,det

capture drop sbp_high
gen sbp_high=.
replace sbp_high=1 if n_4080_0_0>=140 & n_4080_0_0~=.
replace sbp_high=0 if sbp_high~=1 & n_4080_0_0~=.
label var sbp_high "Systolic blood pressure >=140 mm Hg"

tab sbp_high


**Diastolic blood pressure, automated reading, mm Hg, >=90 mm Hg: 
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=4079

su n_4079_0_0,det


capture drop dbp_high
gen dbp_high=.
replace dbp_high=1 if n_4079_0_0>=90 & n_4079_0_0~=.
replace dbp_high=0 if dbp_high~=1 & n_4079_0_0~=.
label var dbp_high "Diastolic blood pressure >=90 mm Hg"

tab dbp_high

**allostatic load, total score**

capture drop allostatic
gen allostatic=.
replace allostatic=albumin_low+crp_high+whr_high+tc_high+hdl_low+ghp_high+rhr_high+sbp_high+dbp_high


save, replace


capture drop zcomorbid
egen zcomorbid=std(comorbid)

capture drop zbmi
egen zbmi=std(bmi)

capture drop zsrh
egen zsrh=std(srhbr)

capture drop zallostatic
egen zallostatic=std(allostatic)

capture drop rowmissHEALTH
egen rowmissHEALTH=rowmiss(zcomorbid zbmi zsrh zallostatic)

tab rowmissHEALTH

capture drop HEALTH
egen HEALTH=rmean(zcomorbid zbmi zsrh zallostatic) if rowmissHEALTH<=2

su HEALTH

save, replace



**************************Diabetes*************************
tab s_2443_0_0


**            2443-0.0 |      Freq.     Percent        Cum.
**---------------------+-----------------------------------
**         Do not know |      1,280        0.26        0.26
**                  No |    473,153       94.40       94.65
**Prefer not to answer |        404        0.08       94.74
**                 Yes |     26,388        5.26      100.00
**---------------------+-----------------------------------
**               Total |    501,225      100.00


capture drop n_2443_0_0
gen n_2443_0_0=.
replace n_2443_0_0=1 if s_2443_0_0=="Yes"
replace n_2443_0_0=0 if s_2443_0_0=="No"
replace n_2443_0_0=-1 if s_2443_0_0=="Do not know"
replace n_2443_0_0=-3 if s_2443_0_0=="Prefer not to answer"

capture drop diabetes
gen diabetes = n_2443_0_0
recode diabetes -3 = 0 -1 =0
label var diabetes "previously diagnosed with diabetes"



********************Sleep duration***********************
tab s_1160_0_0



**            1160-0.0 |      Freq.     Percent        Cum.
**---------------------+-----------------------------------
**                   1 |         35        0.01        0.01
**                  10 |      7,094        1.42        1.42
**                  11 |        680        0.14        1.56
**                  12 |      1,167        0.23        1.79
**                  13 |         75        0.01        1.81
**                  14 |        101        0.02        1.83
**                 15 |         49        0.01        1.84
**                  16 |         47        0.01        1.84
**                  17 |          1        0.00        1.85
**                  18 |         13        0.00        1.85
**                  19 |          2        0.00        1.85
**                   2 |        181        0.04        1.88
**                  20 |          8        0.00        1.89
**                  21 |          1        0.00        1.89
**                  22 |          1        0.00        1.89
**                  23 |          1        0.00        1.89
**                   3 |        840        0.17        2.05
**                   4 |      4,606        0.92        2.97
**                   5 |     21,909        4.37        7.34
**                   6 |     95,585       19.07       26.41
**                   7 |    192,253       38.35       64.77
**                   8 |    144,211       28.77       93.53
**                   9 |     29,085        5.80       99.34
**         Do not know |      2,940        0.59       99.92
**Prefer not to answer |        384        0.08      100.00
**---------------------+-----------------------------------
**              Total |    501,269      100.00


capture drop n_1160_0_0
gen n_1160_0_0=""
replace n_1160_0_0=s_1160_0_0 if s_1160_0_0~="Do not know" & s_1160_0_0~="Prefer not to answer" 

destring n_1160_0_0,replace

capture drop sleep_duration
gen sleep_duration=n_1160_0_0 if n_1160_0_0>0

save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3F.smcl",replace
****************************STEP 8: MERGE FILES TOGETHER FOR LIFE'S ESSENTIAL 8****************************

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLENODIET_UKB",clear
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLEDIET_UKB",clear
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SS_UKB",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\HEALTH_UKB",clear
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\NUTR_UKB",clear
sort n_eid
capture drop _merge
save, replace



use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DEMOG_SES_UKB",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLENODIET_UKB"
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LIFESTYLEDIET_UKB"
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SS_UKB"
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\HEALTH_UKB"
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\NUTR_UKB"
sort n_eid
capture drop _merge

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LE8_UKB", replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3G.smcl",replace

//STEP 9: GET MEDICATION VARIABLES: STATINS, ANTI-HYPERTENSIVES AND OTHER MEDICATIONS AND MERGE WITH LE8_UKB///////

use n_eid s_20003_0_* s_20004_0_* s_6153_0_0  s_6155_0_*  n_137_0_0 s_6177_0_*  s_6179_0_*  using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin", clear

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MEDICATIONS_UKB", replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MEDICATIONS_UKB",clear

tab1 s_6153_0_0
tab1 s_6177_0_0

capture drop n_6153_0_0
encode s_6153_0_0,gen(n_6153_0_0)
labelbook n_6153_0_0

**  Definition
**           1   Blood pressure medication
**           2   Blood pressure medication|Hormone replacement therapy
**           3   Blood pressure medication|Hormone replacement therapy|Oral contraceptive pill or minipill
**           4   Blood pressure medication|Insulin
**           5   Blood pressure medication|Insulin|Hormone replacement therapy
**           6   Blood pressure medication|Insulin|Oral contraceptive pill or minipill
**           7   Blood pressure medication|Oral contraceptive pill or minipill
**           8   Cholesterol lowering medication
**           9   Cholesterol lowering medication|Blood pressure medication
**          10   Cholesterol lowering medication|Blood pressure medication|Hormone replacement therapy
**          11   Cholesterol lowering medication|Blood pressure medication|Hormone replacement therapy|Oral contraceptive pill or minipill
**          12   Cholesterol lowering medication|Blood pressure medication|Insulin
**          13   Cholesterol lowering medication|Blood pressure medication|Insulin|Hormone replacement therapy
**          14   Cholesterol lowering medication|Blood pressure medication|Insulin|Oral contraceptive pill or minipill
**          15   Cholesterol lowering medication|Blood pressure medication|Oral contraceptive pill or minipill
**          16   Cholesterol lowering medication|Hormone replacement therapy
**          17   Cholesterol lowering medication|Hormone replacement therapy|Oral contraceptive pill or minipill
**          18   Cholesterol lowering medication|Insulin
**          19   Cholesterol lowering medication|Insulin|Hormone replacement therapy
**          20   Cholesterol lowering medication|Insulin|Oral contraceptive pill or minipill
**          21   Cholesterol lowering medication|Oral contraceptive pill or minipill
**         22   Do not know
**          23   Hormone replacement therapy
**          24   Hormone replacement therapy|Oral contraceptive pill or minipill
**          25   Insulin
**          26   Insulin|Hormone replacement therapy
**          27   Insulin|Oral contraceptive pill or minipill
**          28   None of the above
**          29   Oral contraceptive pill or minipill
**          30   Prefer not to answer

**   Variables:  n_6153_0_0



capture drop n_6177_0_0
encode s_6177_0_0,gen(n_6177_0_0)
labelbook n_6177_0_0

** Definition
**           1   Blood pressure medication
**           2   Blood pressure medication|Insulin
**           3   Cholesterol lowering medication
**           4   Cholesterol lowering medication|Blood pressure medication
**           5   Cholesterol lowering medication|Blood pressure medication|Insulin
**           6   Cholesterol lowering medication|Insulin
**           7   Do not know
**           8   Insulin
**           9   None of the above
**          10   Prefer not to answer

**   Variables:  n_6177_0_0





*Lipid Lowering Drugs*
capture drop statins
gen statins = .
replace statins=1 if inlist(n_6153_0_0,8,9,10,11,12,13,14,15,16,17,18,19,20,21 )
replace statins=1 if inlist(n_6177_0_0,3,4,5,6)
replace statins=0 if statins==.

tab statins

*Blood Pressure Treatment*
capture drop bptreat
gen bptreat = .
replace bptreat=1 if inlist(n_6153_0_0,1,2,3,4,5,6,7 )
replace bptreat=1 if inlist(n_6177_0_0,1,2,4,5)
replace bptreat=0 if bptreat==.

tab bptreat

*Number of medications*
capture drop medicationnum
gen medicationnum=n_137_0_0


**Polypharmacy**
capture drop POLYPH
gen POLYPH=.
replace POLYPH=1 if medicationnum>=2 & medicationnum~=.
replace POLYPH=0 if POLYPH~=1 & medicationnum~=. 


capture drop POLYPH2
gen POLYPH2=.
replace POLYPH2=1 if medicationnum>=5 & medicationnum~=.
replace POLYPH2=0 if POLYPH2~=1 & medicationnum~=. 



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MEDICATIONS_UKB", replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LE8_UKB",clear
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MEDICATIONS_UKB",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LE8_UKB",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MEDICATIONS_UKB"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LE8_UKB", replace




capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT3H.smcl",replace

//STEP 10: GENERATE LIFE'S ESSENTIAL 8 INDEX//////

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LE8_UKB", clear



**************************************COMPONENT 1: DIET************************************************

**HDI_TOTALSCORE

su HDI_TOTALSCORE
histogram HDI_TOTALSCORE

**>=95th percentile: 100
**75th-94th percentile: 80
**50th-74th: 50
**25th-49th: 25
**1st-24th: 0

capture drop HDI_TOTALSCOREpct
xtile HDI_TOTALSCOREpct=HDI_TOTALSCORE,nq(100)

capture drop LE8_COMP1DIET
gen LE8_COMP1DIET=.
replace LE8_COMP1DIET=100 if HDI_TOTALSCOREpct>=95 & HDI_TOTALSCORE~=.
replace LE8_COMP1DIET=80 if HDI_TOTALSCOREpct>=75 & HDI_TOTALSCOREpct<95 & HDI_TOTALSCORE~=.
replace LE8_COMP1DIET=50 if HDI_TOTALSCOREpct>=50 & HDI_TOTALSCOREpct<75 & HDI_TOTALSCORE~=.
replace LE8_COMP1DIET=25 if HDI_TOTALSCOREpct>=25 & HDI_TOTALSCOREpct<50 & HDI_TOTALSCORE~=.
replace LE8_COMP1DIET=0 if HDI_TOTALSCOREpct>=1 & HDI_TOTALSCOREpct<25 & HDI_TOTALSCORE~=.


************************************COMPONENT 2: PHYSICAL ACTIVITY*************************************


*Moderate exercise MET-min/week*
**gen modperday = n_894_0_0 if n_894_0_0 >= 0
**label var modperday "moderate exercise minutes per day"


*Vigorous exercise MET-min/week*
**gen vigperday = n_914_0_0 if n_914_0_0 >= 0
**label var vigperday "vigorous exercise minutes per day"

**Minutes per day of moderate or greater activity**

capture drop modvigperday
egen modvigperday=rowtotal(modperday vigperday)


**100: >=150
**90: 120-149
**80: 90-119
**60: 60-89
**40: 30-59
**20: 1-29
**0: 0

capture drop LE8_COMP2PA
gen LE8_COMP2PA=.
replace LE8_COMP2PA=100 if modvigperday>=150 & modvigperday~=.
replace LE8_COMP2PA=90 if modvigperday>=120 & modvigperday<150 & modvigperday~=.
replace LE8_COMP2PA=80 if modvigperday>=90 & modvigperday<120 & modvigperday~=.
replace LE8_COMP2PA=60 if modvigperday>=60 & modvigperday<90 & modvigperday~=.
replace LE8_COMP2PA=40 if modvigperday>=30 & modvigperday<60 & modvigperday~=.
replace LE8_COMP2PA=20 if modvigperday>=1 & modvigperday<30 & modvigperday~=.
replace LE8_COMP2PA=0 if modvigperday==0 

save, replace

************************************COMPONENT 3: NICOTINE EXPOSURE*************************************

*Combine Current Smoking with Ex-smoking duration for protective effects*


**gen smokingstatus = 0 if smoking == 2
**replace smokingstatus = agestop if smokingstatus ==.
**replace smokingstatus = 4 if smoking == 0
**label var smokingstatus "complete smoking status"
**label define statusL 0 "current smoker" 1 "ex-smoker < 5 years" 2 "ex-smoker between 5-10 years" 3 "ex-smoker > 10 years" 4 "never smoker"
**label values smokingstatus statusL
**recode smokingstatus .=4

*Environmental tobacco smoke*

**replace n_1279_0_0 = . if n_1279_0_0 < 0
**replace n_1269_0_0  = . if n_1269_0_0 < 0
**order n_1279_0_0, after(n_1269_0_0)
**egen ets = rowtotal(n_1269_0_0-n_1279_0_0)
**gen etsmoke = ets
**label var etsmoke "environmental tobacco exposures (hours per week)"

save, replace

**100 Never smoker
** 75 Former smoker, quit >=5 years
** 50 Former smoker, quit 1-<5 years
**25 Former smoker, quit <1 year, or currently using inhaled NDS
**0 Current smoker

capture drop LE8_COMP3NICOTINE
gen LE8_COMP3NICOTINE=.
replace LE8_COMP3NICOTINE=100 if smokingstatus==4
replace LE8_COMP3NICOTINE=75 if smokingstatus==2 | smokingstatus==3
replace LE8_COMP3NICOTINE=37.5 if smokingstatus==1 
replace LE8_COMP3NICOTINE=0 if smokingstatus==0
replace LE8_COMP3NICOTINE=LE8_COMP3NICOTINE-20 if LE8_COMP3NICOTINE~=0 & etsmoke~=0



**[Note that 25 and 50 are combined to denote <5 years, into 37.5 ] 
save, replace



*************************************COMPONENT 4: SLEEP HEALTH*****************************************


**capture drop sleep_duration
**gen sleep_duration=n_1160_0_0 if n_1160_0_0>0


**100: 7-<9
**90: 9-<10
**70: 6-<7
**40: 5-<6 or >=10
**20: 4-<5
**0: <4


capture drop LE8_COMP4SLEEP
gen LE8_COMP4SLEEP=.
replace LE8_COMP4SLEEP=100 if sleep_duration>=7 & sleep_duration<9
replace LE8_COMP4SLEEP=90 if sleep_duration>=9 & sleep_duration<10
replace LE8_COMP4SLEEP=70 if sleep_duration>=6 & sleep_duration<7
replace LE8_COMP4SLEEP=40 if (sleep_duration>=5 & sleep_duration<6) | (sleep_duration>=10 & sleep_duration~=.)
replace LE8_COMP4SLEEP=20 if sleep_duration>=4 & sleep_duration<5
replace LE8_COMP4SLEEP=0 if sleep_duration<4

save, replace


**************************************COMPONENT 5: BODY MASS INDEX************************************

**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=23104

**capture drop bmi
**gen bmi=n_21001_0_0 
**label var bmi "body mass index kg/m^2" 

**100: <25
**70: 25-29.9
**30: 30.0-34.9
**15: 35.0-39.9
**0: >=40.0


capture drop LE8_COMP5BMI
gen LE8_COMP5BMI=.
replace LE8_COMP5BMI=100 if bmi<25 & bmi~=.
replace LE8_COMP5BMI=70 if bmi>=25 & bmi<30
replace LE8_COMP5BMI=30 if bmi>=30 & bmi<35
replace LE8_COMP5BMI=15 if bmi>=35 & bmi<40
replace LE8_COMP5BMI=0 if bmi>=40 & bmi~=.


save, replace


***************************************COMPONENT 6: Blood lipids **************************************

**ELEVATED TC, >=240 mg/dL: divide by 38.67 to get mmol/L: >=6.21 mmol/L

**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30690,det
**https://www.omnicalculator.com/health/cholesterol-units

su n_30690_0_0, det



**LOW HDL-C, <40 mg/dL: divide by 38.67 to get mmol/L: <1.034 mmol/L**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30760
**https://www.omnicalculator.com/health/cholesterol-units

su n_30760_0_0, det


capture drop nonhdlchol
gen nonhdlchol=(n_30690_0_0-n_30760_0_0)


**100: <130 or <3.36
**60: 130-159 or 3.36-<4.13
**40: 160-189 or 4.13-<4.91
**20: 190-219 or 4.91-<5.69
**0: >=220 or >=5.69

capture drop LE8_COMP6LIPIDS
gen LE8_COMP6LIPIDS=.
replace LE8_COMP6LIPIDS=100 if nonhdlchol<3.36
replace LE8_COMP6LIPIDS=60 if nonhdlchol>=3.36 & nonhdlchol<4.13
replace LE8_COMP6LIPIDS=40 if nonhdlchol>=4.13 & nonhdlchol<4.91
replace LE8_COMP6LIPIDS=20 if nonhdlchol>=4.91 & nonhdlchol<5.69
replace LE8_COMP6LIPIDS=0 if nonhdlchol>=5.69 & nonhdlchol~=.
replace LE8_COMP6LIPIDS=LE8_COMP6LIPIDS-20 if LE8_COMP6LIPIDS~=0 & statins==1

save, replace

***************************************COMPONENT 7: Blood glucose or HbA1c*************************************

**Glycated hemoglobin, % change to mmol/mol: (35.3 mmol/mol is 5.4%), cutoff in % is 6.4% --> 46 mmol/mol
**Use the converter below

**https://www.hba1cnet.com/hba1c-calculator/
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=30750

su n_30750_0_0,det



*Diabetes*
**gen diabetes = n_2443_0_0
**recode diabetes -3 = 0 -1 =0
**label var diabetes "previously diagnosed with diabetes"
**label values diabetes aspirinL

**Points	Level (for HANDLS SE8)
**100	If dxDiabetes is not "Diabetes" and hbA1c < 5.7
**60	If dxDiabetes is not "Diabetes" and HbA1c 5.7–6.4
**40	HbA1c <7.0 and dxDiabetes = "Diabetes", 
**OR If dxDiabetes is not "Diabetes"(or dx missing) and HbA1C 6.4-7.0
**30	HbA1c 7.0–7.9  (regardless of dx)
**20	HbA1c 8.0–8.9  (regardless of dx)
**10	Hb A1c 9.0–9.9  (regardless of dx)
**0	HbA1c ≥10.0  (regardless of dx)


capture drop LE8_COMP7GLUC
gen LE8_COMP7GLUC=.
replace LE8_COMP7GLUC=100 if diabetes==0 & n_30750_0_0<39 
replace LE8_COMP7GLUC=60 if  diabetes==0 & (n_30750_0_0>=39 &  n_30750_0_0<46)
replace LE8_COMP7GLUC=40 if  (diabetes==1 & (n_30750_0_0<53)) | (diabetes==0 & (n_30750_0_0>=46 & n_30750_0_0<53))
replace LE8_COMP7GLUC=30 if  (n_30750_0_0>=53 & n_30750_0_0<64)
replace LE8_COMP7GLUC=20 if  (n_30750_0_0>=64 & n_30750_0_0<75)
replace LE8_COMP7GLUC=10 if  (n_30750_0_0>=75 & n_30750_0_0<86)
replace LE8_COMP7GLUC=0 if  (n_30750_0_0>=86) & n_30750_0_0~=.

save, replace

***************************************COMPONENT 8: Blood pressure************************************


**Systolic blood pressure, automated reading, mm Hg, >=140 mm Hg: 
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=4080

su n_4080_0_0,det


**Diastolic blood pressure, automated reading, mm Hg, >=90 mm Hg: 
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=4079

su n_4079_0_0,det


**100: <120/<80 (Optimal)
**75: 120-129/<80 (Elevated)
**50: 130-139 or 80-89 (Stage | HTN)
**25: 140-159 or 90-99
**0: >=160 or >=100
**Subtact 20 pionts if treated level**

capture drop LE8_COMP8BP
gen LE8_COMP8BP=.
replace LE8_COMP8BP=100 if n_4080_0_0<120 & n_4079_0_0<80
replace LE8_COMP8BP=75 if (n_4080_0_0>=120 & n_4080_0_0<130) & n_4079_0_0<80
replace LE8_COMP8BP=50 if (n_4080_0_0>=130 & n_4080_0_0<140) | (n_4079_0_0>=80 & n_4079_0_0<90)
replace LE8_COMP8BP=25 if (n_4080_0_0>=140 & n_4080_0_0<160) | (n_4079_0_0>=90 & n_4079_0_0<100)
replace LE8_COMP8BP=0 if (n_4080_0_0>=160 & n_4080_0_0~=.) | (n_4079_0_0>=100 & n_4079_0_0~=.)
replace LE8_COMP8BP=LE8_COMP8BP-20 if LE8_COMP8BP~=0 & bptreat==1



*******************************************LE8 TOTAL SCORE**********************************************
capture drop rowmissLE8TOTAL
egen rowmissLE8TOTAL=rowmiss(LE8_COMP1DIET LE8_COMP2PA LE8_COMP3NICOTINE LE8_COMP4SLEEP LE8_COMP5BMI LE8_COMP6LIPIDS LE8_COMP7GLUC LE8_COMP8BP)

tab rowmissLE8TOTAL

capture drop LE8_TOTALSCORE
egen LE8_TOTALSCORE=rmean(LE8_COMP1DIET LE8_COMP2PA LE8_COMP3NICOTINE LE8_COMP4SLEEP LE8_COMP5BMI LE8_COMP6LIPIDS LE8_COMP7GLUC LE8_COMP8BP) if rowmissLE8TOTAL<=4

replace LE8_TOTALSCORE=LE8_TOTALSCORE*8


*******************************************LE8 LIFESTYLE SCORE*******************************************
capture drop rowmissLE8LIFESTYLE
egen rowmissLE8LIFESTYLE=rowmiss(LE8_COMP1DIET LE8_COMP2PA LE8_COMP3NICOTINE LE8_COMP4SLEEP)

tab rowmissLE8LIFESTYLE

capture drop LE8_LIFESTYLE
egen LE8_LIFESTYLE=rmean(LE8_COMP1DIET LE8_COMP2PA LE8_COMP3NICOTINE LE8_COMP4SLEEP) if rowmissLE8LIFESTYLE<=2


replace LE8_LIFESTYLE=LE8_LIFESTYLE*4



********************************************LE8 BIOLOGICAL SCORE***********************************************
capture drop rowmissLE8BIOLOGICAL
egen rowmissLE8BIOLOGICAL=rowmiss(LE8_COMP5BMI LE8_COMP6LIPIDS LE8_COMP7GLUC LE8_COMP8BP)

tab rowmissLE8BIOLOGICAL

capture drop LE8_BIOLOGICAL
egen LE8_BIOLOGICAL=rmean(LE8_COMP5BMI LE8_COMP6LIPIDS LE8_COMP7GLUC LE8_COMP8BP) if rowmissLE8BIOLOGICAL<=2

replace LE8_BIOLOGICAL=LE8_BIOLOGICAL*4

 

save, replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT4A.smcl",replace
//STEP 11: GENERATE COGNITION VARIABLES//
clear
use n_eid n_20023_0_0 n_399_0_1 n_399_0_2 s_400_0_1 s_400_0_2 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"

**save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\COGN_UKB",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\COGN_UKB",clear

capture drop n_400_0_1r
capture drop n_400_0_2r

gen n_400_0_1r=s_400_0_1 if s_400_0_1~="Test not completed"   
gen n_400_0_2r=s_400_0_2 if s_400_0_2~="Test not completed"

destring n_399_0_1 n_399_0_2 n_400_0_1r n_400_0_2r,replace

su n_399_0_1 n_399_0_2 n_400_0_1r n_400_0_2r


**Reaction time: mean time to correctly identify matches**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=20023

capture drop REACTION_TIME
gen REACTION_TIME=.
replace REACTION_TIME=ln(n_20023_0_0)



**Pairs matching: number incorrect**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=399
capture drop n_399_0_mean
gen n_399_0_mean=(n_399_0_1+n_399_0_2)/2

su n_399_0_mean


capture drop PAIRSMATCHING_INC
gen PAIRSMATCHING_INC=.
replace PAIRSMATCHING_INC=ln(n_399_0_mean)

save, replace

**Pairs matching: time to complete**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=400

capture drop n_400_0_mean
gen n_400_0_mean=(n_400_0_1r+n_400_0_2r)/2


capture drop PAIRSMATCHING_TTC
gen PAIRSMATCHING_TTC=.
replace PAIRSMATCHING_TTC=ln(n_400_0_mean)


capture drop rowmissCOGN
egen rowmissCOGN=rowmiss(REACTION_TIME PAIRSMATCHING_INC PAIRSMATCHING_TTC)

tab rowmissCOGN

***PCA for cognitive performance**

pca REACTION_TIME PAIRSMATCHING_INC PAIRSMATCHING_TTC if rowmissCOGN<=1, factors(1)
predict POORCOGN
 
su REACTION_TIME PAIRSMATCHING_INC PAIRSMATCHING_TTC POORCOGN
 
save , replace




capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT4B.smcl",replace




//STEP 12A: GENERATE AD/DEMENTIA AND RELATED TIME VARIABLES//

use n_eid n_21022_0_0 n_20009_0_* n_20002_0_* s_41202_0_* n_34_0_0 s_52_0_0 s_53_0_0 s_40000_*_0  n_40007_*_0  s_42018_0_0 s_42020_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ADDEMENTIA_UKB",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ADDEMENTIA_UKB",clear


**DEMENTIA AND ALZHEIMER'S DISEASE, INCIDENT CASES AND DATE OF INCIDENCE**

**https://biobank.ctsu.ox.ac.uk/crystal/search.cgi?wot=0&srch=dementia&sta0=on&sta1=on&sta2=on&sta3=on&str0=on&str3=on&fit0=on&fit10=on&fit20=on&fit30=on&fvt11=on&fvt21=on&fvt22=on&fvt31=on&fvt41=on&fvt51=on&fvt61=on&fvt101=on&yfirst=2000&ylast=2021

**Main resource: algorithmically defined outcomes: 
**https://biobank.ctsu.ox.ac.uk/crystal/ukb/docs/alg_outcome_main.pdf**: pages 14-15


**Field ID	Description	Category

**42018	Date of all cause dementia report	Dementia outcomes  
**42024	Date of frontotemporal dementia report	Dementia outcomes  
**42022	Date of vascular dementia report	Dementia outcomes  
**42019	Source of all cause dementia report	Dementia outcomes  
**42025	Source of frontotemporal dementia report	Dementia outcomes  
**42023	Source of vascular dementia report	Dementia outcomes  


**Field ID	Description	Category
**20009	Interpolated Age of participant when non-cancer illness first diagnosed	Medical conditions  
**40007	Age at death	Death register  


**Field ID	Description	Category
**42020	        Date of alzheimer's disease report	Dementia outcomes  (**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=42020)
**42021	        Source of alzheimer's disease report	Dementia outcomes  

/////////////////////////////////////////////////////////////////////////////////////////////////
***Field 20002: https://biobank.ctsu.ox.ac.uk/crystal/coding.cgi?id=6
***Field 20009: https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=20009

*Years of Birth*
capture drop birthyear
gen birthyear=n_34_0_0 

*Month of Birth*
capture drop n_52_0_0
gen n_52_0_0=.
replace n_52_0_0=1 if s_52_0_0=="January"
replace n_52_0_0=2 if s_52_0_0=="February"
replace n_52_0_0=3 if s_52_0_0=="March"
replace n_52_0_0=4 if s_52_0_0=="April"
replace n_52_0_0=5 if s_52_0_0=="May"
replace n_52_0_0=6 if s_52_0_0=="June"
replace n_52_0_0=7 if s_52_0_0=="July"
replace n_52_0_0=8 if s_52_0_0=="August"
replace n_52_0_0=9 if s_52_0_0=="September"
replace n_52_0_0=10 if s_52_0_0=="October"
replace n_52_0_0=11 if s_52_0_0=="November"
replace n_52_0_0=12 if s_52_0_0=="December"

capture drop birthmonth
gen birthmonth=n_52_0_0 


*Date of birth*
capture drop birthdate
gen birthdate=mdy(birthmonth,14,birthyear)


**Start dates and date of death**

capture gen double ts_53_0_0 = date(s_53_0_0,"YMD")
capture format ts_53_0_0 %td
capture label variable ts_53_0_0 "Date of attending assessment centre"

capture gen double ts_53_1_0 = date(s_53_1_0,"YMD")
capture format ts_53_1_0 %td
capture label variable ts_53_1_0 "Date of attending assessment centre"

capture gen double ts_53_2_0 = date(s_53_2_0,"YMD")
capture format ts_53_2_0 %td
capture label variable ts_53_2_0 "Date of attending assessment centre"

capture gen double ts_53_3_0 = date(s_53_3_0,"YMD")
capture format ts_53_3_0 %td
capture label variable ts_53_3_0 "Date of attending assessment centre"

capture gen double ts_40000_0_0 = date(s_40000_0_0,"YMD")
capture format ts_40000_0_0 %td
capture label variable ts_40000_0_0 "Date of death"

capture gen double ts_40000_1_0 = date(s_40000_1_0,"YMD")
capture format ts_40000_1_0 %td
capture label variable ts_40000_1_0 "Date of death"


format %18.14f n_40007_0_0
format %18.14f n_40007_1_0

**Dementia and Alzheimer's Disease**

capture gen double ts_42018_0_0 = date(s_42018_0_0,"YMD")
capture format ts_42018_0_0 %td
capture label variable ts_42018_0_0 "Date of all cause dementia report"

capture gen double ts_42020_0_0 = date(s_42020_0_0,"YMD")
capture format ts_42020_0_0 %td
capture label variable ts_42020_0_0 "Date of alzheimers disease report"


**Parkinson's and all-cause Parkinsonism***

capture gen double ts_42030_0_0 = date(s_42030_0_0,"YMD")
capture format ts_42030_0_0 %td
capture label variable ts_42030_0_0 "Date of all cause parkinsonism report"

capture gen double ts_42032_0_0 = date(s_42032_0_0,"YMD")
capture format ts_42032_0_0 %td
capture label variable ts_42032_0_0 "Date of parkinsons disease report"


*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 
format startdate %d

*Baseline age**
capture drop baselineage
gen baselineage=(startdate-birthdate)/365.25


**Source: https://bmcmedicine.biomedcentral.com/track/pdf/10.1186/s12916-021-01980-z.pdf


**Dementia: A81.0, F00, F01, F02, F03, F05, G30, G31.0, G31.1, G31.8, and I67.3

**AD: (F00, G30)

**VaD: (F01, I67.3)


*****Incident dementia*******************


format ts_42018_0_0 %d 

capture drop DEMENTIA_EARLIESTDATE
gen DEMENTIA_EARLIESTDATE= ts_42018_0_0  

capture drop dem_diag
gen dem_diag=.
replace dem_diag=1 if DEMENTIA_EARLIESTDATE~=.
replace dem_diag=0 if dem_diag~=1



****Incident Alzheimer's Disease***


format ts_42020_0_0 %d 

capture drop AD_EARLIESTDATE
gen AD_EARLIESTDATE = ts_42020_0_0


capture drop ad_diag
gen ad_diag=.
replace ad_diag=1 if AD_EARLIESTDATE~=.
replace ad_diag=0 if ad_diag~=1


**********************************************

*Years of Birth*
capture drop birthyear
gen birthyear=n_34_0_0 

*Month of Birth*
capture drop birthmonth
gen birthmonth=n_52_0_0 

*Date of birth*
capture drop birthdate
gen birthdate=mdy(birthmonth,14,birthyear)

*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 
format startdate %d

*Baseline age**
capture drop baselineage
gen baselineage=(startdate-birthdate)/365.25

*Death Date*
capture drop deathdate
gen deathdate = ts_40000_0_0 
replace deathdate =  ts_40000_1_0 if deathdate ==.
format deathdate %d
label var deathdate "date of death"

**Died vs. not**
capture drop died
gen died=.
replace died=1 if deathdate~=.
replace died=0 if deathdate==.

**Age of death**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=40007

capture drop deathage
gen deathage=.
replace deathage=n_40007_0_0 if n_40007_0_0~=.
replace deathage=n_40007_1_0 if n_40007_1_0~=.

**https://biobank.ndph.ox.ac.uk/ukb/exinfo.cgi?src=Data_providers_and_dates**

*Generate exit date:
capture drop doexit
gen doexit = deathdate if died==1
replace doexit = d(1jan2024) if doexit==. & died==0
format doexit %d

*Generate follow-up time between start and end among those who survived during follow-up without incident outcome*
capture drop time0_0dem timeyrs0_0dem
gen time0_0dem = doexit - startdate if died==0
gen timeyrs0_0dem = time0_0/365.25
label var time0_0dem "follow up time in days if no incident outcome and survived, days"
label var timeyrs0_0dem "follow up time in years if no incident outcome and survived, years"

*Generate follow-up time between start and end among those who died during follow-up without incident outcome*
capture drop time1_0dem timeyrs1_0dem
gen time1_0dem = doexit - startdate if died==1
gen timeyrs1_0dem = time1_0 /365.25
label var time1_0dem "follow up time in days if no incident outcome and died, days"
label var timeyrs1_0dem "follow up time in years if no incident outcome and died, years"


***Generate dementia earliest date for incident cases: **

**Field IDField title
**42018Date of all cause dementia report
**42019Source of all cause dementia report
**42020Date of alzheimer's disease report
**42021Source of alzheimer's disease report
**42022Date of vascular dementia report
**42023Source of vascular dementia report
**42024Date of frontotemporal dementia report
**42025Source of frontotemporal dementia r


***Generate Alzheimer's Disease earliest date for incident cases**
**42020	        Date of alzheimer's disease report	Dementia outcomes  (**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=42020)



****Generate follow-up time between start and end among those who survived or died during follow-up but with  incident all-cause dementia*
capture drop time01_1Adem 
capture drop time01_1Ayearsdem
gen time01_1Adem = DEMENTIA_EARLIESTDATE - startdate 
gen time01_1Ayearsdem = time01_1A/365.25 
replace time01_1Ayearsdem=time01_1Ayearsdem if time01_1Ayearsdem>-10
label var time01_1Adem "follow up time in days if Dementia incident outcome and died/survived, days"
label var time01_1Ayearsdem "follow up time in days if Dementia incident outcome and died/survived, years"


****Generate follow-up time between start and end among those who survived or died during follow-up but with  incident AD*
capture drop time01_1BAD 
capture drop time01_1ByearsAD
gen time01_1BAD = AD_EARLIESTDATE - startdate
gen time01_1ByearsAD = time01_1BAD/365.25 
replace time01_1ByearsAD=time01_1ByearsAD if time01_1ByearsAD>-10
label var time01_1BAD "follow up time in days if AD incident outcome and died/survived, days"
label var time01_1ByearsAD "follow up time in years if AD incident outcome and died/survived, years"




*****************All-cause dementia**********************
**Generate time to all-cause dementia**

capture drop time_dementia
gen time_dementia=.
replace time_dementia=timeyrs1_0dem  if dem_diag==0 & died==1
replace time_dementia=time01_1Ayearsdem   if dem_diag==1 
replace time_dementia=timeyrs0_0dem   if time_dementia==.


**Generate Age to incident all-cause dementia or death or end of follow-up**
capture drop Age_dementia
gen Age_dementia=.
replace Age_dementia=baselineage+time_dementia 
 


capture stset,clear
stset Age_dementia, failure(dem_diag==1) enter(baselineage) id(n_eid) scale(1)

capture drop _d_dementia
gen _d_dementia=_d


capture drop _t_dementia
gen _t_dementia=_t



*****************AD dementia**********************
**Generate time to AD dementia**

capture drop timeyrs0_0AD
gen timeyrs0_0AD=timeyrs0_0dem

capture drop time_AD
gen time_AD=.
replace time_AD=timeyrs1_0dem  if ad_diag==0 & died==1
replace time_AD=time01_1ByearsAD   if ad_diag==1 
replace time_AD=timeyrs0_0dem   if time_AD==.


**Generate Age to incident AD dementia or death or end of follow-up**
capture drop Age_AD
gen Age_AD=.
replace Age_AD=baselineage+time_AD 
 


capture stset,clear
stset Age_AD, failure(ad_diag==1) enter(baselineage) id(n_eid) scale(1)

capture drop _d_AD
gen _d_AD=_d


capture drop _t_AD
gen _t_AD=_t






su time* Age* _t* _d*, det
tab1 dem_diag ad_diag


capture stset,clear

save, replace




//STEP 12B: GENERATE PD  TIME VARIABLES//

use n_eid n_21022_0_0 n_20009_0_* n_20002_0_* s_41202_0_* n_34_0_0 s_52_0_0 s_53_0_0 s_40000_*_0  n_40007_*_0  s_42030_0_0 s_42032_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin", clear

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PD_UKB",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PD_UKB",clear



*Years of Birth*
capture drop birthyear
gen birthyear=n_34_0_0 


*Month of Birth*
capture drop n_52_0_0
gen n_52_0_0=.
replace n_52_0_0=1 if s_52_0_0=="January"
replace n_52_0_0=2 if s_52_0_0=="February"
replace n_52_0_0=3 if s_52_0_0=="March"
replace n_52_0_0=4 if s_52_0_0=="April"
replace n_52_0_0=5 if s_52_0_0=="May"
replace n_52_0_0=6 if s_52_0_0=="June"
replace n_52_0_0=7 if s_52_0_0=="July"
replace n_52_0_0=8 if s_52_0_0=="August"
replace n_52_0_0=9 if s_52_0_0=="September"
replace n_52_0_0=10 if s_52_0_0=="October"
replace n_52_0_0=11 if s_52_0_0=="November"
replace n_52_0_0=12 if s_52_0_0=="December"

capture drop birthmonth
gen birthmonth=n_52_0_0 


*Date of birth*
capture drop birthdate
gen birthdate=mdy(birthmonth,14,birthyear)


**Start dates and date of death**

capture gen double ts_53_0_0 = date(s_53_0_0,"YMD")
capture format ts_53_0_0 %td
capture label variable ts_53_0_0 "Date of attending assessment centre"

capture gen double ts_53_1_0 = date(s_53_1_0,"YMD")
capture format ts_53_1_0 %td
capture label variable ts_53_1_0 "Date of attending assessment centre"

capture gen double ts_53_2_0 = date(s_53_2_0,"YMD")
capture format ts_53_2_0 %td
capture label variable ts_53_2_0 "Date of attending assessment centre"

capture gen double ts_53_3_0 = date(s_53_3_0,"YMD")
capture format ts_53_3_0 %td
capture label variable ts_53_3_0 "Date of attending assessment centre"

capture gen double ts_40000_0_0 = date(s_40000_0_0,"YMD")
capture format ts_40000_0_0 %td
capture label variable ts_40000_0_0 "Date of death"

capture gen double ts_40000_1_0 = date(s_40000_1_0,"YMD")
capture format ts_40000_1_0 %td
capture label variable ts_40000_1_0 "Date of death"


format %18.14f n_40007_0_0
format %18.14f n_40007_1_0

**Dementia and Alzheimer's Disease**

capture gen double ts_42018_0_0 = date(s_42018_0_0,"YMD")
capture format ts_42018_0_0 %td
capture label variable ts_42018_0_0 "Date of all cause dementia report"

capture gen double ts_42020_0_0 = date(s_42020_0_0,"YMD")
capture format ts_42020_0_0 %td
capture label variable ts_42020_0_0 "Date of alzheimers disease report"


**Parkinson's and all-cause Parkinsonism***

capture gen double ts_42030_0_0 = date(s_42030_0_0,"YMD")
capture format ts_42030_0_0 %td
capture label variable ts_42030_0_0 "Date of all cause parkinsonism report"

capture gen double ts_42032_0_0 = date(s_42032_0_0,"YMD")
capture format ts_42032_0_0 %td
capture label variable ts_42032_0_0 "Date of parkinsons disease report"


*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 
format startdate %d

*Baseline age**
capture drop baselineage
gen baselineage=(startdate-birthdate)/365.25



format ts_42032_0_0 %d 

capture drop PD_EARLIESTDATE
gen PD_EARLIESTDATE= ts_42032_0_0  

capture drop PD_diag
gen PD_diag=.
replace PD_diag=1 if PD_EARLIESTDATE~=.
replace PD_diag=0 if PD_diag~=1

su PD_EARLIESTDATE

tab PD_diag



*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 
format startdate %d

*Baseline age**
capture drop baselineage
gen baselineage=(startdate-birthdate)/365.25

*Death Date*
capture drop deathdate
gen deathdate = ts_40000_0_0 
replace deathdate =  ts_40000_1_0 if deathdate ==.
format deathdate %d
label var deathdate "date of death"

**Died vs. not**
capture drop died
gen died=.
replace died=1 if deathdate~=.
replace died=0 if deathdate==.

**Age of death**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=40007

capture drop deathage
gen deathage=.
replace deathage=n_40007_0_0 if n_40007_0_0~=.
replace deathage=n_40007_1_0 if n_40007_1_0~=.

**https://biobank.ndph.ox.ac.uk/ukb/exinfo.cgi?src=Data_providers_and_dates**

*Generate exit date:
capture drop doexit
gen doexit = deathdate if died==1
replace doexit = d(1jan2024) if doexit==. & died==0
format doexit %d

*Generate follow-up time between start and end among those who survived during follow-up without incident outcome*
capture drop time0_0 timeyrs0_0PD
gen time0_0PD = doexit - startdate if died==0
gen timeyrs0_0PD = time0_0PD/365.25
label var time0_0PD "follow up time in days if no incident outcome and survived, days"
label var timeyrs0_0PD "follow up time in years if no incident outcome and survived, years"

*Generate follow-up time between start and end among those who died during follow-up without incident outcome*
capture drop time1_0PD timeyrs1_0PD
gen time1_0PD = doexit - startdate if died==1
gen timeyrs1_0PD = time1_0PD /365.25
label var time1_0PD "follow up time in days if no incident outcome and died, days"
label var timeyrs1_0PD "follow up time in years if no incident outcome and died, years"


***Generate PD earliest date for incident cases: **


****Generate follow-up time between start and end among those who survived or died during follow-up but with  incident PD*
capture drop time01_1APD 
capture drop time01_1AyearsPD
gen time01_1APD = PD_EARLIESTDATE - startdate 
gen time01_1AyearsPD = time01_1A/365.25 
replace time01_1AyearsPD=time01_1AyearsPD if time01_1AyearsPD>-10
label var time01_1APD "follow up time in days if Dementia incident outcome and died/survived, days"
label var time01_1AyearsPD "follow up time in days if Dementia incident outcome and died/survived, years"


**Generate time to PD**

capture drop time_PD
gen time_PD=.
replace time_PD=timeyrs1_0PD  if PD_diag==0 & died==1
replace time_PD=time01_1AyearsPD   if PD_diag==1 
replace time_PD=timeyrs0_0PD   if time_PD==.


**Generate Age to incident PD or death or end of follow-up**
capture drop Age_PD
gen Age_PD=.
replace Age_PD=baselineage+time_PD 




**Generate the two survival time/event variables for multistate**

capture stset,clear
stset Age_PD, failure(PD_diag==1) enter(baselineage) id(n_eid) scale(1)

 
capture drop _d_PD
gen _d_PD=_d


capture drop _t_PD
gen _t_PD=_t





su time* Age* _t* _d*, det
tab1 PD_diag


save, replace


********STEP 12C: MORTALITY OUTCOME**********************


use n_eid n_21022_0_0 n_20009_0_* n_20002_0_* s_41202_0_* n_34_0_0 s_52_0_0 s_53_0_0 s_40000_*_0  n_40007_*_0  s_42030_0_0 s_42032_0_0 using  "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin", clear
 

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MORT_UKB",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MORT_UKB",clear

*Year of Birth*
capture drop birthyear
gen birthyear=n_34_0_0 


*Month of Birth*
capture drop n_52_0_0
gen n_52_0_0=.
replace n_52_0_0=1 if s_52_0_0=="January"
replace n_52_0_0=2 if s_52_0_0=="February"
replace n_52_0_0=3 if s_52_0_0=="March"
replace n_52_0_0=4 if s_52_0_0=="April"
replace n_52_0_0=5 if s_52_0_0=="May"
replace n_52_0_0=6 if s_52_0_0=="June"
replace n_52_0_0=7 if s_52_0_0=="July"
replace n_52_0_0=8 if s_52_0_0=="August"
replace n_52_0_0=9 if s_52_0_0=="September"
replace n_52_0_0=10 if s_52_0_0=="October"
replace n_52_0_0=11 if s_52_0_0=="November"
replace n_52_0_0=12 if s_52_0_0=="December"

capture drop birthmonth
gen birthmonth=n_52_0_0 


*Date of birth*
capture drop birthdate
gen birthdate=mdy(birthmonth,14,birthyear)


**Start dates and date of death**

capture gen double ts_53_0_0 = date(s_53_0_0,"YMD")
capture format ts_53_0_0 %td
capture label variable ts_53_0_0 "Date of attending assessment centre"

capture gen double ts_53_1_0 = date(s_53_1_0,"YMD")
capture format ts_53_1_0 %td
capture label variable ts_53_1_0 "Date of attending assessment centre"

capture gen double ts_53_2_0 = date(s_53_2_0,"YMD")
capture format ts_53_2_0 %td
capture label variable ts_53_2_0 "Date of attending assessment centre"

capture gen double ts_53_3_0 = date(s_53_3_0,"YMD")
capture format ts_53_3_0 %td
capture label variable ts_53_3_0 "Date of attending assessment centre"

capture gen double ts_40000_0_0 = date(s_40000_0_0,"YMD")
capture format ts_40000_0_0 %td
capture label variable ts_40000_0_0 "Date of death"

capture gen double ts_40000_1_0 = date(s_40000_1_0,"YMD")
capture format ts_40000_1_0 %td
capture label variable ts_40000_1_0 "Date of death"


format %18.14f n_40007_0_0
format %18.14f n_40007_1_0

**Dementia and Alzheimer's Disease**

capture gen double ts_42018_0_0 = date(s_42018_0_0,"YMD")
capture format ts_42018_0_0 %td
capture label variable ts_42018_0_0 "Date of all cause dementia report"

capture gen double ts_42020_0_0 = date(s_42020_0_0,"YMD")
capture format ts_42020_0_0 %td
capture label variable ts_42020_0_0 "Date of alzheimers disease report"


**Parkinson's and all-cause Parkinsonism***

capture gen double ts_42030_0_0 = date(s_42030_0_0,"YMD")
capture format ts_42030_0_0 %td
capture label variable ts_42030_0_0 "Date of all cause parkinsonism report"

capture gen double ts_42032_0_0 = date(s_42032_0_0,"YMD")
capture format ts_42032_0_0 %td
capture label variable ts_42032_0_0 "Date of parkinsons disease report"


*Baseline Cohort Start Date*
capture drop startdate
gen startdate=ts_53_0_0 
format startdate %d

*Baseline age**
capture drop baselineage
gen baselineage=(startdate-birthdate)/365.25


*Death Date*
capture drop deathdate
gen deathdate = ts_40000_0_0 
replace deathdate =  ts_40000_1_0 if deathdate ==.
format deathdate %d
label var deathdate "date of death"

**Died vs. not**
capture drop died
gen died=.
replace died=1 if deathdate~=.
replace died=0 if deathdate==.

**Age of death**
**https://biobank.ctsu.ox.ac.uk/crystal/field.cgi?id=40007

capture drop deathage
gen deathage=.
replace deathage=n_40007_0_0 if n_40007_0_0~=.
replace deathage=n_40007_1_0 if n_40007_1_0~=.

**https://biobank.ndph.ox.ac.uk/ukb/exinfo.cgi?src=Data_providers_and_dates**

*Generate exit date:
capture drop doexit
gen doexit = deathdate if died==1
replace doexit = d(1jan2024) if doexit==. & died==0
format doexit %d

*Generate follow-up time between start and end among those who survived during follow-up without incident outcome*
capture drop time0_0 timeyrs0_0
gen time0_0 = doexit - startdate if died==0
gen timeyrs0_0 = time0_0/365.25
label var time0_0 "follow up time in days if no incident outcome and survived, days"
label var timeyrs0_0 "follow up time in years if no incident outcome and survived, years"

*Generate follow-up time between start and end among those who died during follow-up without incident outcome*
capture drop time1_0 timeyrs1_0
gen time1_0 = doexit - startdate if died==1
gen timeyrs1_0 = time1_0 /365.25
label var time1_0 "follow up time in days if no incident outcome and died, days"
label var timeyrs1_0 "follow up time in years if no incident outcome and died, years"



**Generate time to DEATH**

capture drop time_death
gen time_death=.
replace time_death=timeyrs1_0  if  died==1
replace time_death=timeyrs0_0   if deathdate==.


**Generate Age to incident PD or death or end of follow-up**
capture drop Age_death
gen Age_death=.
replace Age_death=baselineage+time_death


**Generate the two survival time/event variables for multistate**

capture stset,clear
stset Age_death, failure(died==1) enter(baselineage) id(n_eid) scale(1)

 
capture drop _d_death
gen _d_death=_d


capture drop _t_death
gen _t_death=_t


su time* Age* _t* _d*, det
tab1 died

save, replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT4C.smcl",replace



////////////////STEP 13: AD AND OTHER STANDARD PGS; PRINCIPAL COMPONENTS; APOE; NEW AD PRS////////////////////////

**AD and OTHER PGS plus principal components**

use  n_eid  n_262*_0_0  using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin",clear



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS", replace
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\APOE_GENOTYPE", clear
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\APOE_GENOTYPE",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AD_PRS_76SNPs", clear
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AD_PRS_76SNPs",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS",clear
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\APOE_GENOTYPE"
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AD_PRS_76SNPs"
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS", replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS",clear


capture drop AD_PGS
gen AD_PGS=n_26206_0_0

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS", replace
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\GENETIC_PCS20"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS", replace
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS", replace



//STEP 14: MERGE DATASETS TOGETHER//


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ADDEMENTIA_UKB",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PD_UKB",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MORT_UKB",clear
sort n_eid
capture drop _merge
save, replace




use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\COGN_UKB",clear
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\LE8_UKB",clear
sort n_eid
capture drop _merge
save, replace

merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\COGN_UKB"
capture drop _merge
sort n_eid
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ADDEMENTIA_UKB"
capture drop _merge
sort n_eid
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PD_UKB"
capture drop _merge
sort n_eid
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\MORT_UKB"
capture drop _merge
sort n_eid


merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PGS"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION", replace



//STEP 15: MERGE DATASETS TOGETHER WITH WITHDRAWALS//


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\withdrawals",clear
sort n_eid
capture drop _merge
save, replace



cd "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA"


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION",clear
merge n_eid using withdrawals
save, replace
sort n_eid
capture drop _merge
save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT5A.smcl",replace

****************************************NEUROIMAGING: MERGE WITH DATES AND GENERATE TS VARIABLES *************************************************************************************************************************


****************************STEP 14A: MRI DATA: INSTANCE 2***************************************************************



///////////////////////////////// BRAIN SMRI PHENOTYPES////////////////////////////////////////

use n_eid n_25010_2_0 n_25008_2_0 n_25006_2_0 n_25006_2_0 n_2501*_2_0 n_2502*_2_0 n_257*_2_0 n_258*_2_0 n_259*_2_0  n_26521_2_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin.dta"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_BRAINSMRI_INSTANCE2", replace
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_BRAINSMRI_INSTANCE2", replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",clear
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_BRAINSMRI_INSTANCE2",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_BRAINSMRI_INSTANCE2fin", replace

keep n_eid n_25010_2_0 n_25008_2_0 n_25006_2_0 n_25006_2_0 n_2501*_2_0 n_2502*_2_0 n_257*_2_0 n_258*_2_0 n_259*_2_0  n_26521_2_0 ts_*

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_BRAINSMRI_INSTANCE2fin", replace

////////////////////////////////////TIME_V0V2, TIME_V0V3 AND TIME_V2V3////////////////////////////////////////////////////////

capture drop TIME_V0V2
gen TIME_V0V2=ts_53_2_0-ts_53_0_0

capture drop TIME_V2V3
gen TIME_V2V3=ts_53_3_0-ts_53_2_0

capture drop TIME_V0V3
gen TIME_V0V3=ts_53_3_0-ts_53_0_0


////////////////////////////////////INSTANCE VARIABLE//////////////////////////////////////////////////

capture drop INSTANCE
gen INSTANCE=2

save, replace


/////////////////////////////////////SMRI VARIABLES/////////////////////////

**Total brain volume: 25010**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25010

capture drop TOTALBRAIN
gen TOTALBRAIN=n_25010_2_0


**ICV: 26521**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=26521

capture drop ICV
gen ICV=n_26521_2_0



**Total WM: 25008**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25008

capture drop WM
gen WM=n_25008_2_0


**Total GM: 25006**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25006

capture drop GM
gen GM=n_25006_2_0



**Total Lesion volume or WMH: 25781**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25781

capture drop WMH
gen WMH=n_25781_2_0

capture drop WMHpctICV
gen WMHpctICV=(WMH*100/ICV)

capture drop LnWMHpctICV
gen LnWMHpctICV=ln(WMHpctICV)



**FRONTAL GRAY MATTER, Left**

capture drop FRONTAL_GM_LEFT
gen FRONTAL_GM_LEFT=(n_25830_2_0+n_25862_2_0+n_25846_2_0+n_25782_2_0+n_25792_2_0+n_25790_2_0+n_25832_2_0+n_25788_2_0+n_25794_2_0+n_25786_2_0)


**FRONTAL GRAY MATTER, Right**

capture drop FRONTAL_GM_RIGHT
gen FRONTAL_GM_RIGHT=(n_25831_2_0+n_25863_2_0+n_25847_2_0+n_25783_2_0+n_25793_2_0+n_25791_2_0+n_25833_2_0+n_25789_2_0+n_25795_2_0+n_25787_2_0)


**All small L/R ROIs GRAY MATTER VOLUMES: FAST**

**Field ID	Description
**25888	Volume of grey matter in Amygdala (left)
**25889	Volume of grey matter in Amygdala (right)
**25822	Volume of grey matter in Angular Gyrus (left)
**25823	Volume of grey matter in Angular Gyrus (right)
**25892	Volume of grey matter in Brain-Stem
**25880	Volume of grey matter in Caudate (left)
**25881	Volume of grey matter in Caudate (right)
**25864	Volume of grey matter in Central Opercular Cortex (left)
**25865	Volume of grey matter in Central Opercular Cortex (right)
**25838	Volume of grey matter in Cingulate Gyrus, anterior division (left)
**25839	Volume of grey matter in Cingulate Gyrus, anterior division (right)
**25840	Volume of grey matter in Cingulate Gyrus, posterior division (left)
**25841	Volume of grey matter in Cingulate Gyrus, posterior division (right)
**25900	Volume of grey matter in Crus I Cerebellum (left)
**25902	Volume of grey matter in Crus I Cerebellum (right)
**25901	Volume of grey matter in Crus I Cerebellum (vermis)
**25903	Volume of grey matter in Crus II Cerebellum (left)
**25905	Volume of grey matter in Crus II Cerebellum (right)
**25904	Volume of grey matter in Crus II Cerebellum (vermis)
**25844	Volume of grey matter in Cuneal Cortex (left)
**25845	Volume of grey matter in Cuneal Cortex (right)
**25830	Volume of grey matter in Frontal Medial Cortex (left)
**25831	Volume of grey matter in Frontal Medial Cortex (right)
**25862	Volume of grey matter in Frontal Operculum Cortex (left)
**25863	Volume of grey matter in Frontal Operculum Cortex (right)
**25846	Volume of grey matter in Frontal Orbital Cortex (left)
**25847	Volume of grey matter in Frontal Orbital Cortex (right)
**25782	Volume of grey matter in Frontal Pole (left)
**25783	Volume of grey matter in Frontal Pole (right)
**25870	Volume of grey matter in Heschl's Gyrus (includes H1 and H2) (left)
**25871	Volume of grey matter in Heschl's Gyrus (includes H1 and H2) (right)
**25886	Volume of grey matter in Hippocampus (left)
**25887	Volume of grey matter in Hippocampus (right)
**25893	Volume of grey matter in I-IV Cerebellum (left)
**25894	Volume of grey matter in I-IV Cerebellum (right)
**25915	Volume of grey matter in IX Cerebellum (left)
**25917	Volume of grey matter in IX Cerebellum (right)
**25916	Volume of grey matter in IX Cerebellum (vermis)
**25792	Volume of grey matter in Inferior Frontal Gyrus, pars opercularis (left)
**25793	Volume of grey matter in Inferior Frontal Gyrus, pars opercularis (right)
**25790	Volume of grey matter in Inferior Frontal Gyrus, pars triangularis (left)
**25791	Volume of grey matter in Inferior Frontal Gyrus, pars triangularis (right)
**25808	Volume of grey matter in Inferior Temporal Gyrus, anterior division (left)
**25809	Volume of grey matter in Inferior Temporal Gyrus, anterior division (right)
**25810	Volume of grey matter in Inferior Temporal Gyrus, posterior division (left)
**25811	Volume of grey matter in Inferior Temporal Gyrus, posterior division (right)
**25812	Volume of grey matter in Inferior Temporal Gyrus, temporooccipital part (left)
**25813	Volume of grey matter in Inferior Temporal Gyrus, temporooccipital part (right)
**25784	Volume of grey matter in Insular Cortex (left)
**25785	Volume of grey matter in Insular Cortex (right)
**25828	Volume of grey matter in Intracalcarine Cortex (left)
**25829	Volume of grey matter in Intracalcarine Cortex (right)
**25832	Volume of grey matter in Juxtapositional Lobule Cortex (formerly Supplementary Motor Cortex) (left)
**25833	Volume of grey matter in Juxtapositional Lobule Cortex (formerly Supplementary Motor Cortex) (right)
**25826	Volume of grey matter in Lateral Occipital Cortex, inferior division (left)
**25827	Volume of grey matter in Lateral Occipital Cortex, inferior division (right)
**25824	Volume of grey matter in Lateral Occipital Cortex, superior division (left)
**25825	Volume of grey matter in Lateral Occipital Cortex, superior division (right)
**25852	Volume of grey matter in Lingual Gyrus (left)
**25853	Volume of grey matter in Lingual Gyrus (right)
**25788	Volume of grey matter in Middle Frontal Gyrus (left)
**25789	Volume of grey matter in Middle Frontal Gyrus (right)
**25802	Volume of grey matter in Middle Temporal Gyrus, anterior division (left)
**25803	Volume of grey matter in Middle Temporal Gyrus, anterior division (right)
**25804	Volume of grey matter in Middle Temporal Gyrus, posterior division (left)
**25805	Volume of grey matter in Middle Temporal Gyrus, posterior division (right)
**25806	Volume of grey matter in Middle Temporal Gyrus, temporooccipital part (left)
**25807	Volume of grey matter in Middle Temporal Gyrus, temporooccipital part (right)
**25860	Volume of grey matter in Occipital Fusiform Gyrus (left)
**25861	Volume of grey matter in Occipital Fusiform Gyrus (right)
**25876	Volume of grey matter in Occipital Pole (left)
**25877	Volume of grey matter in Occipital Pole (right)
**25884	Volume of grey matter in Pallidum (left)
**25885	Volume of grey matter in Pallidum (right)
**25836	Volume of grey matter in Paracingulate Gyrus (left)
**25837	Volume of grey matter in Paracingulate Gyrus (right)
**25848	Volume of grey matter in Parahippocampal Gyrus, anterior division (left)
**25849	Volume of grey matter in Parahippocampal Gyrus, anterior division (right)
**25850	Volume of grey matter in Parahippocampal Gyrus, posterior division (left)
**25851	Volume of grey matter in Parahippocampal Gyrus, posterior division (right)
**25866	Volume of grey matter in Parietal Operculum Cortex (left)
**25867	Volume of grey matter in Parietal Operculum Cortex (right)
**25868	Volume of grey matter in Planum Polare (left)
**25869	Volume of grey matter in Planum Polare (right)
**25872	Volume of grey matter in Planum Temporale (left)
**25873	Volume of grey matter in Planum Temporale (right)
**25814	Volume of grey matter in Postcentral Gyrus (left)
**25815	Volume of grey matter in Postcentral Gyrus (right)
**25794	Volume of grey matter in Precentral Gyrus (left)
**25795	Volume of grey matter in Precentral Gyrus (right)
**25842	Volume of grey matter in Precuneous Cortex (left)
**25843	Volume of grey matter in Precuneous Cortex (right)
**25882	Volume of grey matter in Putamen (left)
**25883	Volume of grey matter in Putamen (right)
**25834	Volume of grey matter in Subcallosal Cortex (left)
**25835	Volume of grey matter in Subcallosal Cortex (right)
**25786	Volume of grey matter in Superior Frontal Gyrus (left)
**25787	Volume of grey matter in Superior Frontal Gyrus (right)
**25816	Volume of grey matter in Superior Parietal Lobule (left)
**25817	Volume of grey matter in Superior Parietal Lobule (right)
**25798	Volume of grey matter in Superior Temporal Gyrus, anterior division (left)
**25799	Volume of grey matter in Superior Temporal Gyrus, anterior division (right)
**25800	Volume of grey matter in Superior Temporal Gyrus, posterior division (left)
**25801	Volume of grey matter in Superior Temporal Gyrus, posterior division (right)
**25874	Volume of grey matter in Supracalcarine Cortex (left)
**25875	Volume of grey matter in Supracalcarine Cortex (right)
**25818	Volume of grey matter in Supramarginal Gyrus, anterior division (left)
**25819	Volume of grey matter in Supramarginal Gyrus, anterior division (right)
**25820	Volume of grey matter in Supramarginal Gyrus, posterior division (left)
**25821	Volume of grey matter in Supramarginal Gyrus, posterior division (right)
**25854	Volume of grey matter in Temporal Fusiform Cortex, anterior division (left)
**25855	Volume of grey matter in Temporal Fusiform Cortex, anterior division (right)
**25856	Volume of grey matter in Temporal Fusiform Cortex, posterior division (left)
**25857	Volume of grey matter in Temporal Fusiform Cortex, posterior division (right)
**25858	Volume of grey matter in Temporal Occipital Fusiform Cortex (left)
**25859	Volume of grey matter in Temporal Occipital Fusiform Cortex (right)
**25796	Volume of grey matter in Temporal Pole (left)
**25797	Volume of grey matter in Temporal Pole (right)
**25878	Volume of grey matter in Thalamus (left)
**25879	Volume of grey matter in Thalamus (right)
**25895	Volume of grey matter in V Cerebellum (left)
**25896	Volume of grey matter in V Cerebellum (right)
**25897	Volume of grey matter in VI Cerebellum (left)
**25899	Volume of grey matter in VI Cerebellum (right)
**25898	Volume of grey matter in VI Cerebellum (vermis)
**25909	Volume of grey matter in VIIIa Cerebellum (left)
**25911	Volume of grey matter in VIIIa Cerebellum (right)
**25910	Volume of grey matter in VIIIa Cerebellum (vermis)
**25912	Volume of grey matter in VIIIb Cerebellum (left)
**25914	Volume of grey matter in VIIIb Cerebellum (right)
**25913	Volume of grey matter in VIIIb Cerebellum (vermis)
**25906	Volume of grey matter in VIIb Cerebellum (left)
**25908	Volume of grey matter in VIIb Cerebellum (right)
**25907	Volume of grey matter in VIIb Cerebellum (vermis)
**25890	Volume of grey matter in Ventral Striatum (left)
**25891	Volume of grey matter in Ventral Striatum (right)
**25918	Volume of grey matter in X Cerebellum (left)
**25919	Volume of grey matter in X Cerebellum (vermis)
**25920	Volume of grey matter in X Cerebellum (right)


**SUB-CORTICAL VOLUMES (FIRST)**

**Field ID	Description
**25023	Volume of accumbens (left)
**25024	Volume of accumbens (right)
**25021	Volume of amygdala (left)
**25022	Volume of amygdala (right)
**25013	Volume of caudate (left)
**25014	Volume of caudate (right)
**25019	Volume of hippocampus (left)
**25020	Volume of hippocampus (right)
**25017	Volume of pallidum (left)
**25018	Volume of pallidum (right)
**25015	Volume of putamen (left)
**25016	Volume of putamen (right)
**25011	Volume of thalamus (left)
**25012	Volume of thalamus (right)


**Accumbens, Left**
capture drop Accumbens_Left
gen Accumbens_Left=n_25023_2_0


**Accumbens, Right**
capture drop Accumbens_Right
gen Accumbens_Right=n_25024_2_0


**Amygdala, Left**
capture drop Amygdala_Left
gen Amygdala_Left=n_25021_2_0


**Amygdala, Right**
capture drop Amygdala_Right
gen Amygdala_Right=n_25022_2_0


**Caudate, Left**
capture drop Caudate_Left
gen Caudate_Left=n_25013_2_0

**Caudate, Right**
capture drop Caudate_Right
gen Caudate_Right=n_25014_2_0

**Hippocampus, Left**
capture drop Hippocampus_Left
gen Hippocampus_Left=n_25019_2_0


**Hippocampus, Right**
capture drop Hippocampus_Right
gen Hippocampus_Right=n_25020_2_0

**Pallidum, Left**
capture drop Pallidum_Left
gen Pallidum_Left=n_25017_2_0


**Pallidum, Right**
capture drop Pallidum_Right
gen Pallidum_Right=n_25018_2_0

**Putamen, Left**
capture drop Putamen_Left
gen Putamen_Left=n_25015_2_0


**Putamen, Right**
capture drop Putamen_Right
gen Putamen_Right=n_25016_2_0

**Thalamus, Left**
capture drop Thalamus_Left
gen Thalamus_Left=n_25011_2_0

**Thalamus, Right**
capture drop Thalamus_Right
gen Thalamus_Right=n_25012_2_0

capture drop s_*

save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT5B.smcl",replace
****************************BRAIN DMRI MEASURES*******************************

use n_eid n_250*_2_0 n_251*_2_0  n_252*_2_0  n_253*_2_0  n_254*_2_0   using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin.dta"


save UKB_BRAINDMRI_INSTANCE2, replace
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",clear
sort n_eid
capture drop _merge
save, replace

use UKB_BRAINDMRI_INSTANCE2,clear
merge n_eid using DATES_SMALL
save UKB_BRAINDMRI_INSTANCE2fin, replace




////////////////////////////////////TIME_V0V2, TIME_V0V3 AND TIME_V2V3////////////////////////////////////////////////////////

capture drop TIME_V0V2
gen TIME_V0V2=ts_53_2_0-ts_53_0_0

capture drop TIME_V2V3
gen TIME_V2V3=ts_53_3_0-ts_53_2_0

capture drop TIME_V0V3
gen TIME_V0V3=ts_53_3_0-ts_53_0_0


////////////////////////////////////INSTANCE VARIABLE//////////////////////////////////////////////////

capture drop INSTANCE
gen INSTANCE=2

save, replace



**************************FRACTIONAL ANISOTROPY**********************

capture drop FA_ACR_Left
gen FA_ACR_Left=n_25079_2_0
label var FA_ACR_Left "Mean FA in anterior corona radiata on FA skeleton (left)"

capture drop FA_ACR_Right
gen FA_ACR_Right=n_25078_2_0
label var FA_ACR_Right "Mean FA in anterior corona radiata on FA skeleton (right)"

capture drop FA_ALIC_Left
gen FA_ALIC_Left=n_25073_2_0
label var FA_ALIC_Left "Mean FA in anterior limb of the internal capsule on FA skeleton (left)"


capture drop FA_ALIC_Right
gen FA_ALIC_Right=n_25072_2_0
label var FA_ALIC_Right "Mean FA in anterior limb of the internal capsule on FA skeleton (right)"


capture drop FA_BCC
gen FA_BCC=n_25059_2_0
label var FA_BCC "Mean FA in body of corpus callosum on FA skeleton"

capture drop FA_CP_Left
gen FA_CP_Left=n_25071_2_0
label var FA_CP_Left "Mean FA in body of cerebral peduncle on FA skeleton (left)"

capture drop FA_CP_Right
gen FA_CP_Right=n_25070_2_0
label var FA_CP_Right "Mean FA in body of cerebral peduncle on FA skeleton (right)"


capture drop FA_CCG_Left
gen FA_CCG_Left=n_25091_2_0
label var FA_CCG_Left "Mean FA in body of cigulum cingulate gyrus on FA skeleton (left)"

capture drop FA_CCG_Right
gen FA_CCG_Right=n_25090_2_0
label var FA_CCG_Right "Mean FA in body of cigulum cingulate gyrus on FA skeleton (right)"

capture drop FA_CH_Left
gen FA_CH_Left=n_25093_2_0
label var FA_CH_Left "Mean FA in cigulum hippocampus on FA skeleton (left)"

capture drop FA_CH_Right
gen FA_CH_Right=n_25092_2_0
label var FA_CH_Right "Mean FA in cigulum hippocampus on FA skeleton (right)"

capture drop FA_CT_Left
gen FA_CT_Left=n_25063_2_0
label var FA_CT_Left "Mean FA in corticospinal tract on FA skeleton (left)"

capture drop FA_CT_Right
gen FA_CT_Right=n_25062_2_0
label var FA_CT_Right "Mean FA in corticospinal tract on FA skeleton (right)"

capture drop FA_EC_Left
gen FA_EC_Left=n_25089_2_0
label var FA_EC_Left "Mean FA in external capsule on FA skeleton (left)"

capture drop FA_EC_Right
gen FA_EC_Right=n_25088_2_0
label var FA_EC_Right "Mean FA in external capsule on FA skeleton (right)"

capture drop FA_FCST_Left
gen FA_FCST_Left=n_25095_2_0
label var FA_FCST_Left "Mean FA in fornix cres+stria terminalis on FA skeleton (left)"

capture drop FA_FCST_Right
gen FA_FCST_Right=n_25094_2_0
label var FA_FCST_Right "Mean FA in fornix cres+stria terminalis  on FA skeleton (right)"

capture drop FA_FO
gen FA_FO=n_25061_2_0
label var FA_FO "Mean FA in fornix on FA skeleton (left)"


capture drop FA_GCC
gen FA_GCC=n_25058_2_0
label var FA_GCC "Mean FA in genu of corpus callosum on FA skeleton (left)"

capture drop FA_ICP_Left
gen FA_ICP_Left=n_25067_2_0
label var FA_ICP_Left "Mean FA in inferior cerebellar peduncle on FA skeleton (left)"

capture drop FA_ICP_Right
gen FA_ICP_Right=n_25066_2_0
label var FA_ICP_Right "Mean FA in inferior cerebellar peduncle  on FA skeleton (right)"

capture drop FA_ML_Left
gen FA_ML_Left=n_25065_2_0
label var FA_ML_Left "Mean FA in medial lemniscus on FA skeleton (left)"

capture drop FA_ML_Right
gen FA_ML_Right=n_25064_2_0
label var FA_ML_Right "Mean FA in medial lemniscus  on FA skeleton (right)"

capture drop FA_MCP
gen FA_MCP=n_25056_2_0
label var FA_MCP "Mean FA in middle cerebellar peduncle on FA skeleton (left)"

capture drop FA_PCT
gen FA_PCT=n_25057_2_0
label var FA_PCT "Mean FA in pontine crossing tract on FA skeleton (left)"

capture drop FA_PCR_Left
gen FA_PCR_Left=n_25083_2_0
label var FA_PCR_Left "Mean FA in posterior corona radiata on FA skeleton (left)"

capture drop FA_PCR_Right
gen FA_PCR_Right=n_25082_2_0
label var FA_PCR_Right "Mean FA in posterior corona radiata  on FA skeleton (right)"

capture drop FA_PLIC_Left
gen FA_PLIC_Left=n_25075_2_0
label var FA_PLIC_Left "Mean FA in posterior limb of the internal capsule on FA skeleton (left)"

capture drop FA_PLIC_Right
gen FA_PLIC_Right=n_25074_2_0
label var FA_PLIC_Right "Mean FA in posterior limb of the internal capsule  on FA skeleton (right)"


capture drop FA_PTR_Left
gen FA_PTR_Left=n_25085_2_0
label var FA_PTR_Left "Mean FA in posterior thalamic radiation on FA skeleton (left)"

capture drop FA_PTR_Right
gen FA_PTR_Right=n_25084_2_0
label var FA_PTR_Right "Mean FA in posterior thalamic radiation  on FA skeleton (right)"

capture drop FA_RPIC_Left
gen FA_RPIC_Left=n_25077_2_0
label var FA_RPIC_Left "Mean FA in retrolenticular part of internal capsule on FA skeleton (left)"

capture drop FA_RPIC_Right
gen FA_RPIC_Right=n_25076_2_0
label var FA_RPIC_Right "Mean FA in retrolenticular part of internal capsule  on FA skeleton (right)"

capture drop FA_SS_Left
gen FA_SS_Left=n_25087_2_0
label var FA_SS_Left "Mean FA in sagittal stratum on FA skeleton (left)"

capture drop FA_SS_Right
gen FA_SS_Right=n_25086_2_0
label var FA_SS_Right "Mean FA in sagittal stratum  on FA skeleton (right)"

capture drop FA_SCC
gen FA_SCC=n_25060_2_0
label var FA_SCC "Mean FA in splenium of the corpus callosum"

capture drop FA_SCP_Left
gen FA_SCP_Left=n_25069_2_0
label var FA_SCP_Left "Mean FA in superior cerebellar peduncle on FA skeleton (left)"

capture drop FA_SCP_Right
gen FA_SCP_Right=n_25068_2_0
label var FA_SCP_Right "Mean FA in superior cerebellar peduncle  on FA skeleton (right)"


capture drop FA_SCR_Left
gen FA_SCR_Left=n_25081_2_0
label var FA_SCR_Left "Mean FA in superior corona radiata on FA skeleton (left)"

capture drop FA_SCR_Right
gen FA_SCR_Right=n_25080_2_0
label var FA_SCR_Right "Mean FA in superior corona radiata  on FA skeleton (right)"


capture drop FA_FOF_Left
gen FA_FOF_Left=n_25099_2_0
label var FA_FOF_Left "Mean FA in fronto-occipital fasciculus on FA skeleton (left)"

capture drop FA_FOF_Right
gen FA_FOF_Right=n_25098_2_0
label var FA_FOF_Right "Mean FA in fronto-occipital fasciculus  on FA skeleton (right)"


capture drop FA_SLF_Left
gen FA_SLF_Left=n_25097_2_0
label var FA_SLF_Left "Mean FA in super longitudinal fasciculus on FA skeleton (left)"

capture drop FA_SLF_Right
gen FA_SLF_Right=n_25096_2_0
label var FA_SLF_Right "Mean FA in super longitudinal fasciculus  on FA skeleton (right)"

capture drop FA_TP_Left
gen FA_TP_Left=n_25103_2_0
label var FA_TP_Left "Mean FA in tapetum on FA skeleton (left)"

capture drop FA_TP_Right
gen FA_TP_Right=n_25102_2_0
label var FA_TP_Right "Mean FA in tapetum  on FA skeleton (right)"

capture drop FA_UNC_Left
gen FA_UNC_Left=n_25101_2_0
label var FA_UNC_Left "Mean FA in unciate fasciculus on FA skeleton (left)"

capture drop FA_UNC_Right
gen FA_UNC_Right=n_25100_2_0
label var FA_UNC_Right "Mean FA in unciate fasciculus on FA skeleton (right)"



*************************MEAN DIFFUSIVITIY****************************
capture drop MD_ACR_Left
gen MD_ACR_Left=n_25127_2_0
label var MD_ACR_Left "Mean MD in anterior corona radiata on FA skeleton (left)"

capture drop MD_ACR_Right
gen MD_ACR_Right=n_25126_2_0
label var MD_ACR_Right "Mean MD in anterior corona radiata on FA skeleton (right)"

capture drop MD_ALIC_Left
gen MD_ALIC_Left=n_25121_2_0
label var MD_ALIC_Left "Mean MD in anterior limb of the internal capsule on FA skeleton (left)"


capture drop MD_ALIC_Right
gen MD_ALIC_Right=n_25120_2_0
label var MD_ALIC_Right "Mean MD in anterior limb of the internal capsule on FA skeleton (right)"


capture drop MD_BCC
gen MD_BCC=n_25107_2_0
label var MD_BCC "Mean MD in body of corpus callosum on FA skeleton"

capture drop MD_CP_Left
gen MD_CP_Left=n_25119_2_0
label var MD_CP_Left "Mean MD in body of cerebral peduncle on FA skeleton (left)"

capture drop MD_CP_Right
gen MD_CP_Right=n_25118_2_0
label var MD_CP_Right "Mean MD in body of cerebral peduncle on FA skeleton (right)"


capture drop MD_CCG_Left
gen MD_CCG_Left=n_25139_2_0
label var MD_CCG_Left "Mean MD in body of cigulum cingulate gyrus on FA skeleton (left)"

capture drop MD_CCG_Right
gen MD_CCG_Right=n_25138_2_0
label var MD_CCG_Right "Mean MD in body of cigulum cingulate gyrus on FA skeleton (right)"

capture drop MD_CH_Left
gen MD_CH_Left=n_25141_2_0
label var MD_CH_Left "Mean MD in cigulum hippocampus on FA skeleton (left)"

capture drop MD_CH_Right
gen MD_CH_Right=n_25140_2_0
label var MD_CH_Right "Mean MD in cigulum hippocampus on FA skeleton (right)"

capture drop MD_CT_Left
gen MD_CT_Left=n_25111_2_0
label var MD_CT_Left "Mean MD in corticospinal tract on FA skeleton (left)"

capture drop MD_CT_Right
gen MD_CT_Right=n_25110_2_0
label var MD_CT_Right "Mean MD in corticospinal tract on FA skeleton (right)"

capture drop MD_EC_Left
gen MD_EC_Left=n_25137_2_0
label var MD_EC_Left "Mean MD in external capsule on FA skeleton (left)"

capture drop MD_EC_Right
gen MD_EC_Right=n_25136_2_0
label var MD_EC_Right "Mean MD in external capsule on FA skeleton (right)"

capture drop MD_FCST_Left
gen MD_FCST_Left=n_25143_2_0
label var MD_FCST_Left "Mean MD in fornix cres+stria terminalis on FA skeleton (left)"

capture drop MD_FCST_Right
gen MD_FCST_Right=n_25142_2_0
label var MD_FCST_Right "Mean MD in fornix cres+stria terminalis  on FA skeleton (right)"

capture drop MD_FO
gen MD_FO=n_25109_2_0
label var MD_FO "Mean MD in fornix on FA skeleton (left)"


capture drop MD_GCC
gen MD_GCC=n_25106_2_0
label var MD_GCC "Mean MD in genu of corpus callosum on FA skeleton (left)"

capture drop MD_ICP_Left
gen MD_ICP_Left=n_25115_2_0
label var MD_ICP_Left "Mean MD in inferior cerebellar peduncle on FA skeleton (left)"

capture drop MD_ICP_Right
gen MD_ICP_Right=n_25114_2_0
label var MD_ICP_Right "Mean MD in inferior cerebellar peduncle  on FA skeleton (right)"

capture drop MD_ML_Left
gen MD_ML_Left=n_25113_2_0
label var MD_ML_Left "Mean MD in medial lemniscus on FA skeleton (left)"

capture drop MD_ML_Right
gen MD_ML_Right=n_25112_2_0
label var MD_ML_Right "Mean MD in medial lemniscus  on FA skeleton (right)"

capture drop MD_MCP
gen MD_MCP=n_25104_2_0
label var MD_MCP "Mean MD in middle cerebellar peduncle on FA skeleton (left)"

capture drop MD_PCT
gen MD_PCT=n_25105_2_0
label var MD_PCT "Mean MD in pontine crossing tract on FA skeleton (left)"

capture drop MD_PCR_Left
gen MD_PCR_Left=n_25131_2_0
label var MD_PCR_Left "Mean MD in posterior corona radiata on FA skeleton (left)"

capture drop MD_PCR_Right
gen MD_PCR_Right=n_25130_2_0
label var MD_PCR_Right "Mean MD in posterior corona radiata  on FA skeleton (right)"

capture drop MD_PLIC_Left
gen MD_PLIC_Left=n_25123_2_0
label var MD_PLIC_Left "Mean MD in posterior limb of the internal capsule on FA skeleton (left)"

capture drop MD_PLIC_Right
gen MD_PLIC_Right=n_25122_2_0
label var MD_PLIC_Right "Mean MD in posterior limb of the internal capsule  on FA skeleton (right)"


capture drop MD_PTR_Left
gen MD_PTR_Left=n_25133_2_0
label var MD_PTR_Left "Mean MD in posterior thalamic radiation on FA skeleton (left)"

capture drop MD_PTR_Right
gen MD_PTR_Right=n_25132_2_0
label var MD_PTR_Right "Mean MD in posterior thalamic radiation  on FA skeleton (right)"

capture drop MD_RPIC_Left
gen MD_RPIC_Left=n_25125_2_0
label var MD_RPIC_Left "Mean MD in retrolenticular part of internal capsule on FA skeleton (left)"

capture drop MD_RPIC_Right
gen MD_RPIC_Right=n_25124_2_0
label var MD_RPIC_Right "Mean MD in retrolenticular part of internal capsule  on FA skeleton (right)"

capture drop MD_SS_Left
gen MD_SS_Left=n_25135_2_0
label var MD_SS_Left "Mean MD in sagittal stratum on FA skeleton (left)"

capture drop MD_SS_Right
gen MD_SS_Right=n_25134_2_0
label var MD_SS_Right "Mean MD in sagittal stratum  on FA skeleton (right)"

capture drop MD_SCC
gen MD_SCC=n_25108_2_0
label var MD_SCC "Mean MD in splenium of the corpus callosum"

capture drop MD_SCP_Left
gen MD_SCP_Left=n_25117_2_0
label var MD_SCP_Left "Mean MD in superior cerebellar peduncle on FA skeleton (left)"

capture drop MD_SCP_Right
gen MD_SCP_Right=n_25116_2_0
label var MD_SCP_Right "Mean MD in superior cerebellar peduncle  on FA skeleton (right)"


capture drop MD_SCR_Left
gen MD_SCR_Left=n_25129_2_0
label var MD_SCR_Left "Mean MD in superior corona radiata on FA skeleton (left)"

capture drop MD_SCR_Right
gen MD_SCR_Right=n_25128_2_0
label var MD_SCR_Right "Mean MD in superior corona radiata  on FA skeleton (right)"


capture drop MD_FOF_Left
gen MD_FOF_Left=n_25147_2_0
label var MD_FOF_Left "Mean MD in fronto-occipital fasciculus on FA skeleton (left)"

capture drop MD_FOF_Right
gen MD_FOF_Right=n_25146_2_0
label var MD_FOF_Right "Mean MD in fronto-occipital fasciculus  on FA skeleton (right)"


capture drop MD_SLF_Left
gen MD_SLF_Left=n_25145_2_0
label var MD_SLF_Left "Mean MD in super longitudinal fasciculus on FA skeleton (left)"

capture drop MD_SLF_Right
gen MD_SLF_Right=n_25144_2_0
label var MD_SLF_Right "Mean MD in super longitudinal fasciculus  on FA skeleton (right)"

capture drop MD_TP_Left
gen MD_TP_Left=n_25151_2_0
label var MD_TP_Left "Mean MD in tapetum on FA skeleton (left)"

capture drop MD_TP_Right
gen MD_TP_Right=n_25150_2_0
label var MD_TP_Right "Mean MD in tapetum  on FA skeleton (right)"

capture drop MD_UNC_Left
gen MD_UNC_Left=n_25149_2_0
label var MD_UNC_Left "Mean MD in unciate fasciculus on FA skeleton (left)"

capture drop MD_UNC_Right
gen MD_UNC_Right=n_25148_2_0
label var MD_UNC_Right "Mean MD in unciate fasciculus on FA skeleton (right)"



save, replace


/////////////////NODDI MEASURES/////////////////////////////


************ICVF**************

**25367:Mean ICVF in anterior corona radiata on FA skeleton (left)
capture drop ICVF_ACR_Left
gen ICVF_ACR_Left=n_25367_2_0
label var ICVF_ACR_Left "Mean ICVF in anterior corona radiata on FA skeleton (left)"


**25366:Mean ICVF in anterior corona radiata on FA skeleton (right)
capture drop ICVF_ACR_Right
gen ICVF_ACR_Right=n_25366_2_0
label var ICVF_ACR_Right "Mean ICVF in anterior corona radiata on FA skeleton (right)"

**25361: Mean ICVF in anterior limb of internal capsule on FA skeleton (left)
capture drop ICVF_ALIC_Left
gen ICVF_ALIC_Left=n_25361_2_0
label var ICVF_ALIC_Left "Mean ICVF in anterior limb of the internal capsule on FA skeleton (left)"

**25360: Mean ICVF in anterior limb of internal capsule on FA skeleton (right)
capture drop ICVF_ALIC_Right
gen ICVF_ALIC_Right=n_25360_2_0
label var ICVF_ALIC_Right "Mean ICVF in anterior limb of the internal capsule on FA skeleton (right)"

**25347: Mean ICVF in body of corpus callosum on FA skeleton
capture drop ICVF_BCC
gen ICVF_BCC=n_25347_2_0
label var ICVF_BCC "Mean ICVF in body of corpus callosum on FA skeleton"

**25359: Mean ICVF in cerebral peduncle on FA skeleton (left)
capture drop ICVF_CP_Left
gen ICVF_CP_Left=n_25359_2_0
label var ICVF_CP_Left "Mean ICVF in cerebral peduncle on FA skeleton (left)"


**25358: Mean ICVF in cerebral peduncle on FA skeleton (right)
capture drop ICVF_CP_Right
gen ICVF_CP_Right=n_25358_2_0
label var ICVF_CP_Right "Mean ICVF in cerebral peduncle on FA skeleton (right)"


**25379: Mean ICVF in cingulum cingulate gyrus on FA skeleton (left)
capture drop ICVF_CCG_Left
gen ICVF_CCG_Left=n_25379_2_0
label var ICVF_CCG_Left "Mean ICVF in cingulum cingulate gyrus on FA skeleton (left)"


**25378: Mean ICVF in cingulum cingulate gyrus on FA skeleton (right)
capture drop ICVF_CCG_Right
gen ICVF_CCG_Right=n_25378_2_0
label var ICVF_CCG_Right "Mean ICVF in cingulum cingulate gyrus on FA skeleton (right)"

**25381: Mean ICVF in cingulum hippocampus on FA skeleton (left)
capture drop ICVF_CH_Left
gen ICVF_CH_Left=n_25381_2_0
label var ICVF_CH_Left "Mean ICVF in cingulum hippocampus on FA skeleton (left)"


**25380: Mean ICVF in cingulum hippocampus on FA skeleton (right)
capture drop ICVF_CH_Right
gen ICVF_CH_Right=n_25380_2_0
label var ICVF_CH_Right "Mean ICVF in cingulum hippocampus on FA skeleton (right)"



**25351: Mean ICVF in corticospinal tract on FA skeleton (left)
capture drop ICVF_CT_Left
gen ICVF_CT_Left=n_25351_2_0
label var ICVF_CT_Left "Mean ICVF in corticospinal tract on FA skeleton (left)"

**25350: Mean ICVF in corticospinal tract on FA skeleton (right)
capture drop ICVF_CT_Right
gen ICVF_CT_Right=n_25350_2_0
label var ICVF_CT_Right "Mean ICVF in corticospinal tract on FA skeleton (right)"

**25377: Mean ICVF in external capsule on FA skeleton (left)
capture drop ICVF_EC_Left
gen ICVF_EC_Left=n_25377_2_0
label var ICVF_EC_Left "Mean ICVF in external capsule on FA skeleton (left)"


**25376: Mean ICVF in external capsule on FA skeleton (right)
capture drop ICVF_EC_Right
gen ICVF_EC_Right=n_25376_2_0
label var ICVF_EC_Right "Mean ICVF in external capsule on FA skeleton (right)"


**25383: Mean ICVF in fornix cres+stria terminalis on FA skeleton (left)
capture drop ICVF_FCST_Left
gen ICVF_FCST_Left=n_25383_2_0
label var ICVF_FCST_Left "Mean ICVF in fornix cres+stria terminalis on FA skeleton (left)"


**25382: Mean ICVF in fornix cres+stria terminalis on FA skeleton (right)
capture drop ICVF_FCST_Right
gen ICVF_FCST_Right=n_25382_2_0
label var ICVF_FCST_Right "Mean ICVF in fornix cres+stria terminalis on FA skeleton (right)"


**25349: Mean ICVF in fornix on FA skeleton
capture drop ICVF_FO
gen ICVF_FO=n_25349_2_0
label var ICVF_FO "Mean ICVF in Fornix on FA skeleton"


**25346: Mean ICVF in genu of corpus callosum on FA skeleton
capture drop ICVF_GCC
gen ICVF_GCC=n_25346_2_0
label var ICVF_GCC "Mean ICVF in genu of corpus callosum on FA skeleton"

**25355: Mean ICVF in inferior cerebellar peduncle on FA skeleton (left)
capture drop ICVF_ICP_Left
gen ICVF_ICP_Left=n_25355_2_0
label var ICVF_ICP_Left "Mean ICVF in inferior cerebellar peduncle on FA skeleton (left)"

**25354: Mean ICVF in inferior cerebellar peduncle on FA skeleton (right)
capture drop ICVF_ICP_Right
gen ICVF_ICP_Right=n_25354_2_0
label var ICVF_ICP_Right "Mean ICVF in inferior cerebellar peduncle on FA skeleton (right)"


**25353: Mean ICVF in medial lemniscus on FA skeleton (left)
capture drop ICVF_ML_Left
gen ICVF_ML_Left=n_25353_2_0
label var ICVF_ML_Left "Mean ICVF in medial lemniscus on FA skeleton (left)"

**25352: Mean ICVF in medial lemniscus on FA skeleton (right)
capture drop ICVF_ML_Right
gen ICVF_ML_Right=n_25352_2_0
label var ICVF_ML_Right "Mean ICVF in medial lemniscus on FA skeleton (right)"

**25344: Mean ICVF in middle cerebellar peduncle on FA skeleton
capture drop ICVF_MCP
gen ICVF_MCP=n_25344_2_0
label var ICVF_MCP "Mean ICVF in middle cerebellar peduncle on FA skeleton"

**25345: Mean ICVF in pontine crossing tract on FA skeleton
capture drop ICVF_PCT
gen ICVF_PCT=n_25345_2_0
label var ICVF_PCT "Mean ICVF in pontine crossing tract on FA skeleton"

**25371: Mean ICVF in posterior corona radiata on FA skeleton (left)
capture drop ICVF_PCR_Left
gen ICVF_PCR_Left=n_25371_2_0
label var ICVF_PCR_Left "Mean ICVF in posterior corona radiata on FA skeleton (left)"


**25370: Mean ICVF in posterior corona radiata on FA skeleton (right)
capture drop ICVF_PCR_Right
gen ICVF_PCR_Right=n_25370_2_0
label var ICVF_PCR_Right "Mean ICVF in posterior corona radiata on FA skeleton (right)"

**25363: Mean ICVF in posterior limb of internal capsule on FA skeleton (left)
capture drop ICVF_PLIC_Left
gen ICVF_PLIC_Left=n_25363_2_0
label var ICVF_PLIC_Left "Mean ICVF in posterior limb of internal capsule on FA skeleton (left)"

**25362: Mean ICVF in posterior limb of internal capsule on FA skeleton (right)
capture drop ICVF_PLIC_Right
gen ICVF_PLIC_Right=n_25362_2_0
label var ICVF_PLIC_Right "Mean ICVF in posterior limb of internal capsule on FA skeleton (right)"

**25373: Mean ICVF in posterior thalamic radiation on FA skeleton (left)
capture drop ICVF_PTR_Left
gen ICVF_PTR_Left=n_25373_2_0
label var ICVF_PTR_Left "Mean ICVF in posterior thalamic radiation on FA skeleton (left)"


**25372: Mean ICVF in posterior thalamic radiation on FA skeleton (right)
capture drop ICVF_PTR_Right
gen ICVF_PTR_Right=n_25372_2_0
label var ICVF_PTR_Right "Mean ICVF in posterior thalamic radiation on FA skeleton (right)"



**25365: Mean ICVF in retrolenticular part of internal capsule on FA skeleton (left)
capture drop ICVF_RPIC_Left
gen ICVF_RPIC_Left=n_25365_2_0
label var ICVF_RPIC_Left "Mean ICVF in retrolenticular part of internal capsule on FA skeleton (left)"


**25364: Mean ICVF in retrolenticular part of internal capsule on FA skeleton (right)
capture drop ICVF_RPIC_Right
gen ICVF_RPIC_Right=n_25364_2_0
label var ICVF_RPIC_Right "Mean ICVF in retrolenticular part of internal capsule on FA skeleton (right)"

**25375: Mean ICVF in sagittal stratum on FA skeleton (left)
capture drop ICVF_SS_Left
gen ICVF_SS_Left=n_25375_2_0
label var ICVF_SS_Left "Mean ICVF in sagittal stratum on FA skeleton (left)"

**25374: Mean ICVF in sagittal stratum on FA skeleton (right)
capture drop ICVF_SS_Right
gen ICVF_SS_Right=n_25374_2_0
label var ICVF_SS_Right "Mean ICVF in sagittal stratum on FA skeleton (right)"

**25348: Mean ICVF in splenium of corpus callosum on FA skeleton
capture drop ICVF_SCC
gen ICVF_SCC=n_25348_2_0
label var ICVF_SCC "Mean ICVF in splenium of corpus callosum on FA skeleton"

**25357: Mean ICVF in superior cerebellar peduncle on FA skeleton (left)
capture drop ICVF_SCP_Left
gen ICVF_SCP_Left=n_25357_2_0
label var ICVF_SCP_Left "Mean ICVF in superior cerebellar peduncle on FA skeleton (left)"


**25356: Mean ICVF in superior cerebellar peduncle on FA skeleton (right)
capture drop ICVF_SCP_Right
gen ICVF_SCP_Right=n_25356_2_0
label var ICVF_SCP_Right "Mean ICVF in superior cerebellar peduncle on FA skeleton (right)"

**25369: Mean ICVF in superior corona radiata on FA skeleton (left)
capture drop ICVF_SCR_Left
gen ICVF_SCR_Left=n_25369_2_0
label var ICVF_SCR_Left "Mean ICVF in superior corona radiata on FA skeleton (left)"

**25368: Mean ICVF in superior corona radiata on FA skeleton (right)
capture drop ICVF_SCR_Right
gen ICVF_SCR_Right=n_25368_2_0
label var ICVF_SCR_Right "Mean ICVF in superior corona radiata on FA skeleton (right)"


**25387: Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (left)
capture drop ICVF_FOF_Left
gen ICVF_FOF_Left=n_25387_2_0
label var ICVF_FOF_Left "Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (left)"


**25386: Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (right)
capture drop ICVF_FOF_Right
gen ICVF_FOF_Right=n_25386_2_0
label var ICVF_FOF_Right "Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (right)"


**25385: Mean ICVF in superior longitudinal fasciculus on FA skeleton (left)
capture drop ICVF_SLF_Left
gen ICVF_SLF_Left=n_25385_2_0
label var ICVF_SLF_Left "Mean ICVF in superior longitudinal fasciculus on FA skeleton (left)"


**25384: Mean ICVF in superior longitudinal fasciculus on FA skeleton (right)
capture drop ICVF_SLF_Right
gen ICVF_SLF_Right=n_25384_2_0
label var ICVF_SLF_Right "Mean ICVF in superior longitudinal fasciculus on FA skeleton (right)"


**25391: Mean ICVF in tapetum on FA skeleton (left)
capture drop ICVF_TP_Left
gen ICVF_TP_Left=n_25391_2_0
label var ICVF_TP_Left "Mean ICVF in tapetum on FA skeleton (left)"


**25390: Mean ICVF in tapetum on FA skeleton (right)
capture drop ICVF_TP_Right
gen ICVF_TP_Right=n_25390_2_0
label var ICVF_TP_Right "Mean ICVF in tapetum on FA skeleton (right)"


**25389: Mean ICVF in uncinate fasciculus on FA skeleton (left)
capture drop ICVF_UNC_Left
gen ICVF_UNC_Left=n_25389_2_0
label var ICVF_UNC_Left "Mean ICVF in uncinate fasciculus on FA skeleton (left)"


**25388: Mean ICVF in uncinate fasciculus on FA skeleton (right)
capture drop ICVF_UNC_Right
gen ICVF_UNC_Right=n_25388_2_0
label var ICVF_UNC_Right "Mean ICVF in uncinate fasciculus on FA skeleton (right)"




************ISOVF************
**25463: Mean ISOVF in anterior corona radiata on FA skeleton (left)
capture drop ISOVF_ACR_Left
gen ISOVF_ACR_Left=n_25463_2_0
label var ISOVF_ACR_Left "Mean ISOVF in anterior corona radiata on FA skeleton (left)"

**25462: Mean ISOVF in anterior corona radiata on FA skeleton (right)
capture drop ISOVF_ACR_Right
gen ISOVF_ACR_Right=n_25462_2_0
label var ISOVF_ACR_Right "Mean ISOVF in anterior corona radiata on FA skeleton (right)"


**25457: Mean ISOVF in anterior limb of internal capsule on FA skeleton (left)
capture drop ISOVF_ALIC_Left
gen ISOVF_ALIC_Left=n_25457_2_0
label var ISOVF_ALIC_Left "Mean ISOVF in anterior limb of the internal capsule on FA skeleton (left)"


**25456: Mean ISOVF in anterior limb of internal capsule on FA skeleton (right)
capture drop ISOVF_ALIC_Right
gen ISOVF_ALIC_Right=n_25456_2_0
label var ISOVF_ALIC_Right "Mean ISOVF in anterior limb of the internal capsule on FA skeleton (right)"


**25443: Mean ISOVF in body of corpus callosum on FA skeleton
capture drop ISOVF_BCC
gen ISOVF_BCC=n_25443_2_0
label var ISOVF_BCC "Mean ISOVF in body of corpus callosum on FA skeleton"


**25455: Mean ISOVF in cerebral peduncle on FA skeleton (left)
capture drop ISOVF_CP_Left
gen ISOVF_CP_Left=n_25455_2_0
label var ISOVF_CP_Left "Mean ISOVF in cerebral peduncle on FA skeleton (left)"

**25454: Mean ISOVF in cerebral peduncle on FA skeleton (right)
capture drop ISOVF_CP_Right
gen ISOVF_CP_Right=n_25454_2_0
label var ISOVF_CP_Right "Mean ISOVF in cerebral peduncle on FA skeleton (right)"


**25475: Mean ISOVF in cingulum cingulate gyrus on FA skeleton (left)
capture drop ISOVF_CCG_Left
gen ISOVF_CCG_Left=n_25475_2_0
label var ISOVF_CCG_Left "Mean ISOVF in cingulum cingulate gyrus on FA skeleton (left)"

**25474: Mean ISOVF in cingulum cingulate gyrus on FA skeleton (right)
capture drop ISOVF_CCG_Right
gen ISOVF_CCG_Right=n_25474_2_0
label var ISOVF_CCG_Right "Mean ISOVF in cingulum cingulate gyrus on FA skeleton (right)"


**25477: Mean ISOVF in cingulum hippocampus on FA skeleton (left)
capture drop ISOVF_CH_Left
gen ISOVF_CH_Left=n_25477_2_0
label var ISOVF_CH_Left "Mean ISOVF in cingulum hippocampus on FA skeleton (left)"


**25476: Mean ISOVF in cingulum hippocampus on FA skeleton (right)
capture drop ISOVF_CH_Right
gen ISOVF_CH_Right=n_25476_2_0
label var ISOVF_CH_Right "Mean ISOVF in cingulum hippocampus on FA skeleton (right)"


**25447: Mean ISOVF in corticospinal tract on FA skeleton (left)
capture drop ISOVF_CT_Left
gen ISOVF_CT_Left=n_25447_2_0
label var ISOVF_CT_Left "Mean ISOVF in corticospinal tract on FA skeleton (left)"


**25446: Mean ISOVF in corticospinal tract on FA skeleton (right)
capture drop ISOVF_CT_Right
gen ISOVF_CT_Right=n_25446_2_0
label var ISOVF_CT_Right "Mean ISOVF in corticospinal tract on FA skeleton (right)"

**25473: Mean ISOVF in external capsule on FA skeleton (left)
capture drop ISOVF_EC_Left
gen ISOVF_EC_Left=n_25473_2_0
label var ISOVF_EC_Left "Mean ISOVF in external capsule on FA skeleton (left)"


**25472: Mean ISOVF in external capsule on FA skeleton (right)
capture drop ISOVF_EC_Right
gen ISOVF_EC_Right=n_25472_2_0
label var ISOVF_EC_Right "Mean ISOVF in external capsule on FA skeleton (right)"


**25479: Mean ISOVF in fornix cres+stria terminalis on FA skeleton (left)
capture drop ISOVF_FCST_Left
gen ISOVF_FCST_Left=n_25479_2_0
label var ISOVF_FCST_Left "Mean ISOVF in fornix cres+stria terminalis on FA skeleton (left)"


**25478: Mean ISOVF in fornix cres+stria terminalis on FA skeleton (right)
capture drop ISOVF_FCST_Right
gen ISOVF_FCST_Right=n_25478_2_0
label var ISOVF_FCST_Right "Mean ISOVF in fornix cres+stria terminalis on FA skeleton (right)"



**25445: Mean ISOVF in fornix on FA skeleton
capture drop ISOVF_FO
gen ISOVF_FO=n_25445_2_0
label var ISOVF_FO "Mean ISOVF in Fornix on FA skeleton"



**25442: Mean ISOVF in genu of corpus callosum on FA skeleton
capture drop ISOVF_GCC
gen ISOVF_GCC=n_25442_2_0
label var ISOVF_GCC "Mean ISOVF in genu of corpus callosum on FA skeleton"



**25451: Mean ISOVF in inferior cerebellar peduncle on FA skeleton (left)
capture drop ISOVF_ICP_Left
gen ISOVF_ICP_Left=n_25451_2_0
label var ISOVF_ICP_Left "Mean ISOVF in inferior cerebellar peduncle on FA skeleton (left)"


**25450: Mean ISOVF in inferior cerebellar peduncle on FA skeleton (right)
capture drop ISOVF_ICP_Right
gen ISOVF_ICP_Right=n_25450_2_0
label var ISOVF_ICP_Right "Mean ISOVF in inferior cerebellar peduncle on FA skeleton (right)"


**25449: Mean ISOVF in medial lemniscus on FA skeleton (left)
capture drop ISOVF_ML_Left
gen ISOVF_ML_Left=n_25449_2_0
label var ISOVF_ML_Left "Mean ISOVF in medial lemniscus on FA skeleton (left)"


**25448: Mean ISOVF in medial lemniscus on FA skeleton (right)
capture drop ISOVF_ML_Right
gen ISOVF_ML_Right=n_25448_2_0
label var ISOVF_ML_Right "Mean ISOVF in medial lemniscus on FA skeleton (right)"


**25440: Mean ISOVF in middle cerebellar peduncle on FA skeleton
capture drop ISOVF_MCP
gen ISOVF_MCP=n_25440_2_0
label var ISOVF_MCP "Mean ISOVF in middle cerebellar peduncle on FA skeleton"


**25441: Mean ISOVF in pontine crossing tract on FA skeleton
capture drop ISOVF_PCT
gen ISOVF_PCT=n_25441_2_0
label var ISOVF_PCT "Mean ISOVF in pontine crossing tract on FA skeleton"


**25467: Mean ISOVF in posterior corona radiata on FA skeleton (left)
capture drop ISOVF_PCR_Left
gen ISOVF_PCR_Left=n_25467_2_0
label var ISOVF_PCR_Left "Mean ISOVF in posterior corona radiata on FA skeleton (left)"


**25466: Mean ISOVF in posterior corona radiata on FA skeleton (right)
capture drop ISOVF_PCR_Right
gen ISOVF_PCR_Right=n_25466_2_0
label var ISOVF_PCR_Right "Mean ISOVF in posterior corona radiata on FA skeleton (right)"


**25459: Mean ISOVF in posterior limb of internal capsule on FA skeleton (left)
capture drop ISOVF_PLIC_Left
gen ISOVF_PLIC_Left=n_25459_2_0
label var ISOVF_PLIC_Left "Mean ISOVF in posterior limb of internal capsule on FA skeleton (left)"

**25458: Mean ISOVF in posterior limb of internal capsule on FA skeleton (right)
capture drop ISOVF_PLIC_Right
gen ISOVF_PLIC_Right=n_25458_2_0
label var ISOVF_PLIC_Right "Mean ISOVF in posterior limb of internal capsule on FA skeleton (right)"


**25469: Mean ISOVF in posterior thalamic radiation on FA skeleton (left)
capture drop ISOVF_PTR_Left
gen ISOVF_PTR_Left=n_25469_2_0
label var ISOVF_PTR_Left "Mean ISOVF in posterior thalamic radiation on FA skeleton (left)"

**25468: Mean ISOVF in posterior thalamic radiation on FA skeleton (right)
capture drop ISOVF_PTR_Right
gen ISOVF_PTR_Right=n_25468_2_0
label var ISOVF_PTR_Right "Mean ISOVF in posterior thalamic radiation on FA skeleton (right)"



**25461: Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (left)
capture drop ISOVF_RPIC_Left
gen ISOVF_RPIC_Left=n_25461_2_0
label var ISOVF_RPIC_Left "Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (left)"



**25460: Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (right)
capture drop ISOVF_RPIC_Right
gen ISOVF_RPIC_Right=n_25460_2_0
label var ISOVF_RPIC_Right "Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (right)"


**25471: Mean ISOVF in sagittal stratum on FA skeleton (left)
capture drop ISOVF_SS_Left
gen ISOVF_SS_Left=n_25471_2_0
label var ISOVF_SS_Left "Mean ISOVF in sagittal stratum on FA skeleton (left)"


**25470: Mean ISOVF in sagittal stratum on FA skeleton (right)
capture drop ISOVF_SS_Right
gen ISOVF_SS_Right=n_25470_2_0
label var ISOVF_SS_Right "Mean ISOVF in sagittal stratum on FA skeleton (right)"


**25444: Mean ISOVF in splenium of corpus callosum on FA skeleton
capture drop ISOVF_SCC
gen ISOVF_SCC=n_25444_2_0
label var ISOVF_SCC "Mean ISOVF in splenium of corpus callosum on FA skeleton"


**25453: Mean ISOVF in superior cerebellar peduncle on FA skeleton (left)
capture drop ISOVF_SCP_Left
gen ISOVF_SCP_Left=n_25453_2_0
label var ISOVF_SCP_Left "Mean ISOVF in superior cerebellar peduncle on FA skeleton (left)"



**25452: Mean ISOVF in superior cerebellar peduncle on FA skeleton (right)
capture drop ISOVF_SCP_Right
gen ISOVF_SCP_Right=n_25452_2_0
label var ISOVF_SCP_Right "Mean ISOVF in superior cerebellar peduncle on FA skeleton (right)"



**25465: Mean ISOVF in superior corona radiata on FA skeleton (left)
capture drop ISOVF_SCR_Left
gen ISOVF_SCR_Left=n_25465_2_0
label var ISOVF_SCR_Left "Mean ISOVF in superior corona radiata on FA skeleton (left)"


**25464: Mean ISOVF in superior corona radiata on FA skeleton (right)
capture drop ISOVF_SCR_Right
gen ISOVF_SCR_Right=n_25464_2_0
label var ISOVF_SCR_Right "Mean ISOVF in superior corona radiata on FA skeleton (right)"

**25483: Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (left)
capture drop ISOVF_FOF_Left
gen ISOVF_FOF_Left=n_25483_2_0
label var ISOVF_FOF_Left "Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (left)"


**25482: Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (right)
capture drop ISOVF_FOF_Right
gen ISOVF_FOF_Right=n_25482_2_0
label var ISOVF_FOF_Right "Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (right)"


**25481: Mean ISOVF in superior longitudinal fasciculus on FA skeleton (left)
capture drop ISOVF_SLF_Left
gen ISOVF_SLF_Left=n_25481_2_0
label var ISOVF_SLF_Left "Mean ISOVF in superior longitudinal fasciculus on FA skeleton (left)"

**25480: Mean ISOVF in superior longitudinal fasciculus on FA skeleton (right)
capture drop ISOVF_SLF_Right
gen ISOVF_SLF_Right=n_25480_2_0
label var ISOVF_SLF_Right "Mean ISOVF in superior longitudinal fasciculus on FA skeleton (right)"



**25487: Mean ISOVF in tapetum on FA skeleton (left)
capture drop ISOVF_TP_Left
gen ISOVF_TP_Left=n_25487_2_0
label var ISOVF_TP_Left "Mean ISOVF in tapetum on FA skeleton (left)"


**25486: Mean ISOVF in tapetum on FA skeleton (right)
capture drop ISOVF_TP_Right
gen ISOVF_TP_Right=n_25486_2_0
label var ISOVF_TP_Right "Mean ISOVF in tapetum on FA skeleton (right)"



**25485: Mean ISOVF in uncinate fasciculus on FA skeleton (left)
capture drop ISOVF_UNC_Left
gen ISOVF_UNC_Left=n_25485_2_0
label var ISOVF_UNC_Left "Mean ISOVF in uncinate fasciculus on FA skeleton (left)"



**25484: Mean ISOVF in uncinate fasciculus on FA skeleton (right)
capture drop ISOVF_UNC_Right
gen ISOVF_UNC_Right=n_25484_2_0
label var ISOVF_UNC_Right "Mean ISOVF in uncinate fasciculus on FA skeleton (right)"


***********OD****************
**25415: Mean OD in anterior corona radiata on FA skeleton (left)
capture drop OD_ACR_Left
gen OD_ACR_Left=n_25415_2_0
label var OD_ACR_Left "Mean OD in anterior corona radiata on FA skeleton (left)"


**25414: Mean OD in anterior corona radiata on FA skeleton (right)
capture drop OD_ACR_Right
gen OD_ACR_Right=n_25414_2_0
label var OD_ACR_Right "Mean OD in anterior corona radiata on FA skeleton (right)"



**25409: Mean OD in anterior limb of internal capsule on FA skeleton (left)
capture drop OD_ALIC_Left
gen OD_ALIC_Left=n_25409_2_0
label var OD_ALIC_Left "Mean OD in anterior limb of the internal capsule on FA skeleton (left)"

**25408: Mean OD in anterior limb of internal capsule on FA skeleton (right)
capture drop OD_ALIC_Right
gen OD_ALIC_Right=n_25408_2_0
label var OD_ALIC_Right "Mean OD in anterior limb of the internal capsule on FA skeleton (right)"


**25395: Mean OD in body of corpus callosum on FA skeleton
capture drop OD_BCC
gen OD_BCC=n_25395_2_0
label var OD_BCC "Mean OD in body of corpus callosum on FA skeleton"


**25407: Mean OD in cerebral peduncle on FA skeleton (left)
capture drop OD_CP_Left
gen OD_CP_Left=n_25407_2_0
label var OD_CP_Left "Mean OD in cerebral peduncle on FA skeleton (left)"


**25406: Mean OD in cerebral peduncle on FA skeleton (right)
capture drop OD_CP_Right
gen OD_CP_Right=n_25406_2_0
label var OD_CP_Right "Mean OD in cerebral peduncle on FA skeleton (right)"

**25427: Mean OD in cingulum cingulate gyrus on FA skeleton (left)
capture drop OD_CCG_Left
gen OD_CCG_Left=n_25427_2_0
label var OD_CCG_Left "Mean OD in cingulum cingulate gyrus on FA skeleton (left)"


**25426: Mean OD in cingulum cingulate gyrus on FA skeleton (right)
capture drop OD_CCG_Right
gen OD_CCG_Right=n_25426_2_0
label var OD_CCG_Right "Mean OD in cingulum cingulate gyrus on FA skeleton (right)"


**25429: Mean OD in cingulum hippocampus on FA skeleton (left)
capture drop OD_CH_Left
gen OD_CH_Left=n_25429_2_0
label var OD_CH_Left "Mean OD in cingulum hippocampus on FA skeleton (left)"



**25428: Mean OD in cingulum hippocampus on FA skeleton (right)
capture drop OD_CH_Right
gen OD_CH_Right=n_25428_2_0
label var OD_CH_Right "Mean OD in cingulum hippocampus on FA skeleton (right)"



**25399: Mean OD in corticospinal tract on FA skeleton (left)
capture drop OD_CT_Left
gen OD_CT_Left=n_25399_2_0
label var OD_CT_Left "Mean OD in corticospinal tract on FA skeleton (left)"


**25398: Mean OD in corticospinal tract on FA skeleton (right)
capture drop OD_CT_Right
gen OD_CT_Right=n_25398_2_0
label var OD_CT_Right "Mean OD in corticospinal tract on FA skeleton (right)"


**25425: Mean OD in external capsule on FA skeleton (left)
capture drop OD_EC_Left
gen OD_EC_Left=n_25425_2_0
label var OD_EC_Left "Mean OD in external capsule on FA skeleton (left)"



**25424: Mean OD in external capsule on FA skeleton (right)
capture drop OD_EC_Right
gen OD_EC_Right=n_25424_2_0
label var OD_EC_Right "Mean OD in external capsule on FA skeleton (right)"



**25431: Mean OD in fornix cres+stria terminalis on FA skeleton (left)
capture drop OD_FCST_Left
gen OD_FCST_Left=n_25431_2_0
label var OD_FCST_Left "Mean OD in fornix cres+stria terminalis on FA skeleton (left)"



**25430: Mean OD in fornix cres+stria terminalis on FA skeleton (right)
capture drop OD_FCST_Right
gen OD_FCST_Right=n_25430_2_0
label var OD_FCST_Right "Mean OD in fornix cres+stria terminalis on FA skeleton (right)"


**25397: Mean OD in fornix on FA skeleton
capture drop OD_FO
gen OD_FO=n_25397_2_0
label var OD_FO "Mean OD in Fornix on FA skeleton"


**25394: Mean OD in genu of corpus callosum on FA skeleton
capture drop OD_GCC
gen OD_GCC=n_25394_2_0
label var OD_GCC "Mean OD in genu of corpus callosum on FA skeleton"



**25403: Mean OD in inferior cerebellar peduncle on FA skeleton (left)
capture drop OD_ICP_Left
gen OD_ICP_Left=n_25403_2_0
label var OD_ICP_Left "Mean OD in inferior cerebellar peduncle on FA skeleton (left)"


**25402: Mean OD in inferior cerebellar peduncle on FA skeleton (right)
capture drop OD_ICP_Right
gen OD_ICP_Right=n_25402_2_0
label var OD_ICP_Right "Mean OD in inferior cerebellar peduncle on FA skeleton (right)"



**25401: Mean OD in medial lemniscus on FA skeleton (left)
capture drop OD_ML_Left
gen OD_ML_Left=n_25401_2_0
label var OD_ML_Left "Mean OD in medial lemniscus on FA skeleton (left)"


**25400: Mean OD in medial lemniscus on FA skeleton (right)
capture drop OD_ML_Right
gen OD_ML_Right=n_25400_2_0
label var OD_ML_Right "Mean OD in medial lemniscus on FA skeleton (right)"



**25392: Mean OD in middle cerebellar peduncle on FA skeleton
capture drop OD_MCP
gen OD_MCP=n_25392_2_0
label var OD_MCP "Mean OD in middle cerebellar peduncle on FA skeleton"



**25393: Mean OD in pontine crossing tract on FA skeleton
capture drop OD_PCT
gen OD_PCT=n_25393_2_0
label var OD_PCT "Mean OD in pontine crossing tract on FA skeleton"



**25419: Mean OD in posterior corona radiata on FA skeleton (left)
capture drop OD_PCR_Left
gen OD_PCR_Left=n_25419_2_0
label var OD_PCR_Left "Mean OD in posterior corona radiata on FA skeleton (left)"


**25418: Mean OD in posterior corona radiata on FA skeleton (right)
capture drop OD_PCR_Right
gen OD_PCR_Right=n_25418_2_0
label var OD_PCR_Right "Mean OD in posterior corona radiata on FA skeleton (right)"



**25411: Mean OD in posterior limb of internal capsule on FA skeleton (left)
capture drop OD_PLIC_Left
gen OD_PLIC_Left=n_25411_2_0
label var OD_PLIC_Left "Mean OD in posterior limb of internal capsule on FA skeleton (left)"


**25410: Mean OD in posterior limb of internal capsule on FA skeleton (right)
capture drop OD_PLIC_Right
gen OD_PLIC_Right=n_25410_2_0
label var OD_PLIC_Right "Mean OD in posterior limb of internal capsule on FA skeleton (right)"


**25421: Mean OD in posterior thalamic radiation on FA skeleton (left)
capture drop OD_PTR_Left
gen OD_PTR_Left=n_25421_2_0
label var OD_PTR_Left "Mean OD in posterior thalamic radiation on FA skeleton (left)"

**25420: Mean OD in posterior thalamic radiation on FA skeleton (right)
capture drop OD_PTR_Right
gen OD_PTR_Right=n_25420_2_0
label var OD_PTR_Right "Mean OD in posterior thalamic radiation on FA skeleton (right)"


**25413: Mean OD in retrolenticular part of internal capsule on FA skeleton (left)
capture drop OD_RPIC_Left
gen OD_RPIC_Left=n_25413_2_0
label var OD_RPIC_Left "Mean OD in retrolenticular part of internal capsule on FA skeleton (left)"


**25412: Mean OD in retrolenticular part of internal capsule on FA skeleton (right)
capture drop OD_RPIC_Right
gen OD_RPIC_Right=n_25412_2_0
label var OD_RPIC_Right "Mean OD in retrolenticular part of internal capsule on FA skeleton (right)"


**25423: Mean OD in sagittal stratum on FA skeleton (left)
capture drop OD_SS_Left
gen OD_SS_Left=n_25423_2_0
label var OD_SS_Left "Mean OD in sagittal stratum on FA skeleton (left)"


**25422: Mean OD in sagittal stratum on FA skeleton (right)
capture drop OD_SS_Right
gen OD_SS_Right=n_25422_2_0
label var OD_SS_Right "Mean OD in sagittal stratum on FA skeleton (right)"



**25396: Mean OD in splenium of corpus callosum on FA skeleton
capture drop OD_SCC
gen OD_SCC=n_25396_2_0
label var OD_SCC "Mean OD in splenium of corpus callosum on FA skeleton"


**25405: Mean OD in superior cerebellar peduncle on FA skeleton (left)
capture drop OD_SCP_Left
gen OD_SCP_Left=n_25405_2_0
label var OD_SCP_Left "Mean OD in superior cerebellar peduncle on FA skeleton (left)"


**25404: Mean OD in superior cerebellar peduncle on FA skeleton (right)
capture drop OD_SCP_Right
gen OD_SCP_Right=n_25404_2_0
label var OD_SCP_Right "Mean OD in superior cerebellar peduncle on FA skeleton (right)"


**25417: Mean OD in superior corona radiata on FA skeleton (left)
capture drop OD_SCR_Left
gen OD_SCR_Left=n_25417_2_0
label var OD_SCR_Left "Mean OD in superior corona radiata on FA skeleton (left)"



**25416: Mean OD in superior corona radiata on FA skeleton (right)
capture drop OD_SCR_Right
gen OD_SCR_Right=n_25416_2_0
label var OD_SCR_Right "Mean OD in superior corona radiata on FA skeleton (right)"



**25435: Mean OD in superior fronto-occipital fasciculus on FA skeleton (left)
capture drop OD_FOF_Left
gen OD_FOF_Left=n_25435_2_0
label var OD_FOF_Left "Mean OD in superior fronto-occipital fasciculus on FA skeleton (left)"


**25434: Mean OD in superior fronto-occipital fasciculus on FA skeleton (right)

capture drop OD_FOF_Right
gen OD_FOF_Right=n_25434_2_0
label var OD_FOF_Right "Mean OD in superior fronto-occipital fasciculus on FA skeleton (right)"


**25433: Mean OD in superior longitudinal fasciculus on FA skeleton (left)
capture drop OD_SLF_Left
gen OD_SLF_Left=n_25433_2_0
label var OD_SLF_Left "Mean OD in superior longitudinal fasciculus on FA skeleton (left)"



**25432: Mean OD in superior longitudinal fasciculus on FA skeleton (right)
capture drop OD_SLF_Right
gen OD_SLF_Right=n_25432_2_0
label var OD_SLF_Right "Mean OD in superior longitudinal fasciculus on FA skeleton (right)"



**25439: Mean OD in tapetum on FA skeleton (left)
capture drop OD_TP_Left
gen OD_TP_Left=n_25439_2_0
label var OD_TP_Left "Mean OD in tapetum on FA skeleton (left)"



**25438: Mean OD in tapetum on FA skeleton (right)
capture drop OD_TP_Right
gen OD_TP_Right=n_25438_2_0
label var OD_TP_Right "Mean OD in tapetum on FA skeleton (right)"



**25437: Mean OD in uncinate fasciculus on FA skeleton (left)
capture drop OD_UNC_Left
gen OD_UNC_Left=n_25437_2_0
label var OD_UNC_Left "Mean OD in uncinate fasciculus on FA skeleton (left)"


**25436: Mean OD in uncinate fasciculus on FA skeleton (right)
capture drop OD_UNC_Right
gen OD_UNC_Right=n_25436_2_0
label var OD_UNC_Right "Mean OD in uncinate fasciculus on FA skeleton (right)"

capture drop _s*

save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT5C.smcl",replace
**********************************************INSTANCE 3*****************************************************

****************************STEP 14B: MRI DATA: INSTANCE 3***************************************************************



///////////////////////////////// BRAIN SMRI PHENOTYPES////////////////////////////////////////

use n_eid n_25010_3_0 n_25008_3_0 n_25006_3_0 n_25006_3_0 n_2501*_3_0 n_2502*_3_0 n_257*_3_0 n_258*_3_0 n_259*_3_0  n_26521_3_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin.dta"




save UKB_BRAINSMRI_INSTANCE3, replace
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",clear
sort n_eid
capture drop _merge
save, replace

use UKB_BRAINSMRI_INSTANCE3,clear
merge n_eid using DATES_SMALL
save UKB_BRAINSMRI_INSTANCE3fin, replace


////////////////////////////////////TIME_V0V2, TIME_V0V3 AND TIME_V2V3////////////////////////////////////////////////////////

capture drop TIME_V0V2
gen TIME_V0V2=ts_53_3_0-ts_53_0_0

capture drop TIME_V2V3
gen TIME_V2V3=ts_53_3_0-ts_53_2_0

capture drop TIME_V0V3
gen TIME_V0V3=ts_53_3_0-ts_53_0_0


////////////////////////////////////INSTANCE VARIABLE//////////////////////////////////////////////////

capture drop INSTANCE
gen INSTANCE=3

save, replace


/////////////////////////////////////SMRI VARIABLES/////////////////////////

**Total brain volume: 25010**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25010

capture drop TOTALBRAIN
gen TOTALBRAIN=n_25010_3_0


**ICV: 26521**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=26521

capture drop ICV
gen ICV=n_26521_3_0



**Total WM: 25008**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25008

capture drop WM
gen WM=n_25008_3_0


**Total GM: 25006**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25006

capture drop GM
gen GM=n_25006_3_0



**Total Lesion volume or WMH: 25781**
**https://biobank.ndph.ox.ac.uk/showcase/field.cgi?id=25781

capture drop WMH
gen WMH=n_25781_3_0

capture drop WMHpctICV
gen WMHpctICV=(WMH*100/ICV)

capture drop LnWMHpctICV
gen LnWMHpctICV=ln(WMHpctICV)



**FRONTAL GRAY MATTER, Left**

capture drop FRONTAL_GM_LEFT
gen FRONTAL_GM_LEFT=(n_25830_3_0+n_25862_3_0+n_25846_3_0+n_25782_3_0+n_25792_3_0+n_25790_3_0+n_25832_3_0+n_25788_3_0+n_25794_3_0+n_25786_3_0)


**FRONTAL GRAY MATTER, Right**

capture drop FRONTAL_GM_RIGHT
gen FRONTAL_GM_RIGHT=(n_25831_3_0+n_25863_3_0+n_25847_3_0+n_25783_3_0+n_25793_3_0+n_25791_3_0+n_25833_3_0+n_25789_3_0+n_25795_3_0+n_25787_3_0)


**All small L/R ROIs GRAY MATTER VOLUMES: FAST**

**Field ID	Description
**25888	Volume of grey matter in Amygdala (left)
**25889	Volume of grey matter in Amygdala (right)
**25822	Volume of grey matter in Angular Gyrus (left)
**25823	Volume of grey matter in Angular Gyrus (right)
**25892	Volume of grey matter in Brain-Stem
**25880	Volume of grey matter in Caudate (left)
**25881	Volume of grey matter in Caudate (right)
**25864	Volume of grey matter in Central Opercular Cortex (left)
**25865	Volume of grey matter in Central Opercular Cortex (right)
**25838	Volume of grey matter in Cingulate Gyrus, anterior division (left)
**25839	Volume of grey matter in Cingulate Gyrus, anterior division (right)
**25840	Volume of grey matter in Cingulate Gyrus, posterior division (left)
**25841	Volume of grey matter in Cingulate Gyrus, posterior division (right)
**25900	Volume of grey matter in Crus I Cerebellum (left)
**25902	Volume of grey matter in Crus I Cerebellum (right)
**25901	Volume of grey matter in Crus I Cerebellum (vermis)
**25903	Volume of grey matter in Crus II Cerebellum (left)
**25905	Volume of grey matter in Crus II Cerebellum (right)
**25904	Volume of grey matter in Crus II Cerebellum (vermis)
**25844	Volume of grey matter in Cuneal Cortex (left)
**25845	Volume of grey matter in Cuneal Cortex (right)
**25830	Volume of grey matter in Frontal Medial Cortex (left)
**25831	Volume of grey matter in Frontal Medial Cortex (right)
**25862	Volume of grey matter in Frontal Operculum Cortex (left)
**25863	Volume of grey matter in Frontal Operculum Cortex (right)
**25846	Volume of grey matter in Frontal Orbital Cortex (left)
**25847	Volume of grey matter in Frontal Orbital Cortex (right)
**25782	Volume of grey matter in Frontal Pole (left)
**25783	Volume of grey matter in Frontal Pole (right)
**25870	Volume of grey matter in Heschl's Gyrus (includes H1 and H2) (left)
**25871	Volume of grey matter in Heschl's Gyrus (includes H1 and H2) (right)
**25886	Volume of grey matter in Hippocampus (left)
**25887	Volume of grey matter in Hippocampus (right)
**25893	Volume of grey matter in I-IV Cerebellum (left)
**25894	Volume of grey matter in I-IV Cerebellum (right)
**25915	Volume of grey matter in IX Cerebellum (left)
**25917	Volume of grey matter in IX Cerebellum (right)
**25916	Volume of grey matter in IX Cerebellum (vermis)
**25792	Volume of grey matter in Inferior Frontal Gyrus, pars opercularis (left)
**25793	Volume of grey matter in Inferior Frontal Gyrus, pars opercularis (right)
**25790	Volume of grey matter in Inferior Frontal Gyrus, pars triangularis (left)
**25791	Volume of grey matter in Inferior Frontal Gyrus, pars triangularis (right)
**25808	Volume of grey matter in Inferior Temporal Gyrus, anterior division (left)
**25809	Volume of grey matter in Inferior Temporal Gyrus, anterior division (right)
**25810	Volume of grey matter in Inferior Temporal Gyrus, posterior division (left)
**25811	Volume of grey matter in Inferior Temporal Gyrus, posterior division (right)
**25812	Volume of grey matter in Inferior Temporal Gyrus, temporooccipital part (left)
**25813	Volume of grey matter in Inferior Temporal Gyrus, temporooccipital part (right)
**25784	Volume of grey matter in Insular Cortex (left)
**25785	Volume of grey matter in Insular Cortex (right)
**25828	Volume of grey matter in Intracalcarine Cortex (left)
**25829	Volume of grey matter in Intracalcarine Cortex (right)
**25832	Volume of grey matter in Juxtapositional Lobule Cortex (formerly Supplementary Motor Cortex) (left)
**25833	Volume of grey matter in Juxtapositional Lobule Cortex (formerly Supplementary Motor Cortex) (right)
**25826	Volume of grey matter in Lateral Occipital Cortex, inferior division (left)
**25827	Volume of grey matter in Lateral Occipital Cortex, inferior division (right)
**25824	Volume of grey matter in Lateral Occipital Cortex, superior division (left)
**25825	Volume of grey matter in Lateral Occipital Cortex, superior division (right)
**25852	Volume of grey matter in Lingual Gyrus (left)
**25853	Volume of grey matter in Lingual Gyrus (right)
**25788	Volume of grey matter in Middle Frontal Gyrus (left)
**25789	Volume of grey matter in Middle Frontal Gyrus (right)
**25802	Volume of grey matter in Middle Temporal Gyrus, anterior division (left)
**25803	Volume of grey matter in Middle Temporal Gyrus, anterior division (right)
**25804	Volume of grey matter in Middle Temporal Gyrus, posterior division (left)
**25805	Volume of grey matter in Middle Temporal Gyrus, posterior division (right)
**25806	Volume of grey matter in Middle Temporal Gyrus, temporooccipital part (left)
**25807	Volume of grey matter in Middle Temporal Gyrus, temporooccipital part (right)
**25860	Volume of grey matter in Occipital Fusiform Gyrus (left)
**25861	Volume of grey matter in Occipital Fusiform Gyrus (right)
**25876	Volume of grey matter in Occipital Pole (left)
**25877	Volume of grey matter in Occipital Pole (right)
**25884	Volume of grey matter in Pallidum (left)
**25885	Volume of grey matter in Pallidum (right)
**25836	Volume of grey matter in Paracingulate Gyrus (left)
**25837	Volume of grey matter in Paracingulate Gyrus (right)
**25848	Volume of grey matter in Parahippocampal Gyrus, anterior division (left)
**25849	Volume of grey matter in Parahippocampal Gyrus, anterior division (right)
**25850	Volume of grey matter in Parahippocampal Gyrus, posterior division (left)
**25851	Volume of grey matter in Parahippocampal Gyrus, posterior division (right)
**25866	Volume of grey matter in Parietal Operculum Cortex (left)
**25867	Volume of grey matter in Parietal Operculum Cortex (right)
**25868	Volume of grey matter in Planum Polare (left)
**25869	Volume of grey matter in Planum Polare (right)
**25872	Volume of grey matter in Planum Temporale (left)
**25873	Volume of grey matter in Planum Temporale (right)
**25814	Volume of grey matter in Postcentral Gyrus (left)
**25815	Volume of grey matter in Postcentral Gyrus (right)
**25794	Volume of grey matter in Precentral Gyrus (left)
**25795	Volume of grey matter in Precentral Gyrus (right)
**25842	Volume of grey matter in Precuneous Cortex (left)
**25843	Volume of grey matter in Precuneous Cortex (right)
**25882	Volume of grey matter in Putamen (left)
**25883	Volume of grey matter in Putamen (right)
**25834	Volume of grey matter in Subcallosal Cortex (left)
**25835	Volume of grey matter in Subcallosal Cortex (right)
**25786	Volume of grey matter in Superior Frontal Gyrus (left)
**25787	Volume of grey matter in Superior Frontal Gyrus (right)
**25816	Volume of grey matter in Superior Parietal Lobule (left)
**25817	Volume of grey matter in Superior Parietal Lobule (right)
**25798	Volume of grey matter in Superior Temporal Gyrus, anterior division (left)
**25799	Volume of grey matter in Superior Temporal Gyrus, anterior division (right)
**25800	Volume of grey matter in Superior Temporal Gyrus, posterior division (left)
**25801	Volume of grey matter in Superior Temporal Gyrus, posterior division (right)
**25874	Volume of grey matter in Supracalcarine Cortex (left)
**25875	Volume of grey matter in Supracalcarine Cortex (right)
**25818	Volume of grey matter in Supramarginal Gyrus, anterior division (left)
**25819	Volume of grey matter in Supramarginal Gyrus, anterior division (right)
**25820	Volume of grey matter in Supramarginal Gyrus, posterior division (left)
**25821	Volume of grey matter in Supramarginal Gyrus, posterior division (right)
**25854	Volume of grey matter in Temporal Fusiform Cortex, anterior division (left)
**25855	Volume of grey matter in Temporal Fusiform Cortex, anterior division (right)
**25856	Volume of grey matter in Temporal Fusiform Cortex, posterior division (left)
**25857	Volume of grey matter in Temporal Fusiform Cortex, posterior division (right)
**25858	Volume of grey matter in Temporal Occipital Fusiform Cortex (left)
**25859	Volume of grey matter in Temporal Occipital Fusiform Cortex (right)
**25796	Volume of grey matter in Temporal Pole (left)
**25797	Volume of grey matter in Temporal Pole (right)
**25878	Volume of grey matter in Thalamus (left)
**25879	Volume of grey matter in Thalamus (right)
**25895	Volume of grey matter in V Cerebellum (left)
**25896	Volume of grey matter in V Cerebellum (right)
**25897	Volume of grey matter in VI Cerebellum (left)
**25899	Volume of grey matter in VI Cerebellum (right)
**25898	Volume of grey matter in VI Cerebellum (vermis)
**25909	Volume of grey matter in VIIIa Cerebellum (left)
**25911	Volume of grey matter in VIIIa Cerebellum (right)
**25910	Volume of grey matter in VIIIa Cerebellum (vermis)
**25912	Volume of grey matter in VIIIb Cerebellum (left)
**25914	Volume of grey matter in VIIIb Cerebellum (right)
**25913	Volume of grey matter in VIIIb Cerebellum (vermis)
**25906	Volume of grey matter in VIIb Cerebellum (left)
**25908	Volume of grey matter in VIIb Cerebellum (right)
**25907	Volume of grey matter in VIIb Cerebellum (vermis)
**25890	Volume of grey matter in Ventral Striatum (left)
**25891	Volume of grey matter in Ventral Striatum (right)
**25918	Volume of grey matter in X Cerebellum (left)
**25919	Volume of grey matter in X Cerebellum (vermis)
**25920	Volume of grey matter in X Cerebellum (right)


**SUB-CORTICAL VOLUMES (FIRST)**

**Field ID	Description
**25023	Volume of accumbens (left)
**25024	Volume of accumbens (right)
**25021	Volume of amygdala (left)
**25022	Volume of amygdala (right)
**25013	Volume of caudate (left)
**25014	Volume of caudate (right)
**25019	Volume of hippocampus (left)
**25020	Volume of hippocampus (right)
**25017	Volume of pallidum (left)
**25018	Volume of pallidum (right)
**25015	Volume of putamen (left)
**25016	Volume of putamen (right)
**25011	Volume of thalamus (left)
**25012	Volume of thalamus (right)


**Accumbens, Left**
capture drop Accumbens_Left
gen Accumbens_Left=n_25023_3_0


**Accumbens, Right**
capture drop Accumbens_Right
gen Accumbens_Right=n_25024_3_0


**Amygdala, Left**
capture drop Amygdala_Left
gen Amygdala_Left=n_25021_3_0


**Amygdala, Right**
capture drop Amygdala_Right
gen Amygdala_Right=n_25022_3_0


**Caudate, Left**
capture drop Caudate_Left
gen Caudate_Left=n_25013_3_0

**Caudate, Right**
capture drop Caudate_Right
gen Caudate_Right=n_25014_3_0

**Hippocampus, Left**
capture drop Hippocampus_Left
gen Hippocampus_Left=n_25019_3_0


**Hippocampus, Right**
capture drop Hippocampus_Right
gen Hippocampus_Right=n_25020_3_0

**Pallidum, Left**
capture drop Pallidum_Left
gen Pallidum_Left=n_25017_3_0


**Pallidum, Right**
capture drop Pallidum_Right
gen Pallidum_Right=n_25018_3_0

**Putamen, Left**
capture drop Putamen_Left
gen Putamen_Left=n_25015_3_0


**Putamen, Right**
capture drop Putamen_Right
gen Putamen_Right=n_25016_3_0

**Thalamus, Left**
capture drop Thalamus_Left
gen Thalamus_Left=n_25011_3_0

**Thalamus, Right**
capture drop Thalamus_Right
gen Thalamus_Right=n_25012_3_0


capture drop _s*


save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT5D.smcl",replace
****************************BRAIN DMRI MEASURES*******************************

use n_eid n_250*_3_0 n_251*_3_0  n_252*_3_0  n_253*_3_0  n_254*_3_0  using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin.dta"


save UKB_BRAINDMRI_INSTANCE3, replace
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",clear
sort n_eid
capture drop _merge
save, replace

use UKB_BRAINDMRI_INSTANCE3,clear
merge n_eid using DATES_SMALL
save UKB_BRAINDMRI_INSTANCE3fin, replace


////////////////////////////////////TIME_V0V2, TIME_V0V3 AND TIME_V2V3////////////////////////////////////////////////////////

capture drop TIME_V0V2
gen TIME_V0V2=ts_53_3_0-ts_53_0_0

capture drop TIME_V2V3
gen TIME_V2V3=ts_53_3_0-ts_53_2_0

capture drop TIME_V0V3
gen TIME_V0V3=ts_53_3_0-ts_53_0_0


////////////////////////////////////INSTANCE VARIABLE//////////////////////////////////////////////////

capture drop INSTANCE
gen INSTANCE=3

save, replace



**************************FRACTIONAL ANISOTROPY**********************

capture drop FA_ACR_Left
gen FA_ACR_Left=n_25079_3_0
label var FA_ACR_Left "Mean FA in anterior corona radiata on FA skeleton (left)"

capture drop FA_ACR_Right
gen FA_ACR_Right=n_25078_3_0
label var FA_ACR_Right "Mean FA in anterior corona radiata on FA skeleton (right)"

capture drop FA_ALIC_Left
gen FA_ALIC_Left=n_25073_3_0
label var FA_ALIC_Left "Mean FA in anterior limb of the internal capsule on FA skeleton (left)"


capture drop FA_ALIC_Right
gen FA_ALIC_Right=n_25072_3_0
label var FA_ALIC_Right "Mean FA in anterior limb of the internal capsule on FA skeleton (right)"


capture drop FA_BCC
gen FA_BCC=n_25059_3_0
label var FA_BCC "Mean FA in body of corpus callosum on FA skeleton"

capture drop FA_CP_Left
gen FA_CP_Left=n_25071_3_0
label var FA_CP_Left "Mean FA in body of cerebral peduncle on FA skeleton (left)"

capture drop FA_CP_Right
gen FA_CP_Right=n_25070_3_0
label var FA_CP_Right "Mean FA in body of cerebral peduncle on FA skeleton (right)"


capture drop FA_CCG_Left
gen FA_CCG_Left=n_25091_3_0
label var FA_CCG_Left "Mean FA in body of cigulum cingulate gyrus on FA skeleton (left)"

capture drop FA_CCG_Right
gen FA_CCG_Right=n_25090_3_0
label var FA_CCG_Right "Mean FA in body of cigulum cingulate gyrus on FA skeleton (right)"

capture drop FA_CH_Left
gen FA_CH_Left=n_25093_3_0
label var FA_CH_Left "Mean FA in cigulum hippocampus on FA skeleton (left)"

capture drop FA_CH_Right
gen FA_CH_Right=n_25092_3_0
label var FA_CH_Right "Mean FA in cigulum hippocampus on FA skeleton (right)"

capture drop FA_CT_Left
gen FA_CT_Left=n_25063_3_0
label var FA_CT_Left "Mean FA in corticospinal tract on FA skeleton (left)"

capture drop FA_CT_Right
gen FA_CT_Right=n_25062_3_0
label var FA_CT_Right "Mean FA in corticospinal tract on FA skeleton (right)"

capture drop FA_EC_Left
gen FA_EC_Left=n_25089_3_0
label var FA_EC_Left "Mean FA in external capsule on FA skeleton (left)"

capture drop FA_EC_Right
gen FA_EC_Right=n_25088_3_0
label var FA_EC_Right "Mean FA in external capsule on FA skeleton (right)"

capture drop FA_FCST_Left
gen FA_FCST_Left=n_25095_3_0
label var FA_FCST_Left "Mean FA in fornix cres+stria terminalis on FA skeleton (left)"

capture drop FA_FCST_Right
gen FA_FCST_Right=n_25094_3_0
label var FA_FCST_Right "Mean FA in fornix cres+stria terminalis  on FA skeleton (right)"

capture drop FA_FO
gen FA_FO=n_25061_3_0
label var FA_FO "Mean FA in fornix on FA skeleton (left)"


capture drop FA_GCC
gen FA_GCC=n_25058_3_0
label var FA_GCC "Mean FA in genu of corpus callosum on FA skeleton (left)"

capture drop FA_ICP_Left
gen FA_ICP_Left=n_25067_3_0
label var FA_ICP_Left "Mean FA in inferior cerebellar peduncle on FA skeleton (left)"

capture drop FA_ICP_Right
gen FA_ICP_Right=n_25066_3_0
label var FA_ICP_Right "Mean FA in inferior cerebellar peduncle  on FA skeleton (right)"

capture drop FA_ML_Left
gen FA_ML_Left=n_25065_3_0
label var FA_ML_Left "Mean FA in medial lemniscus on FA skeleton (left)"

capture drop FA_ML_Right
gen FA_ML_Right=n_25064_3_0
label var FA_ML_Right "Mean FA in medial lemniscus  on FA skeleton (right)"

capture drop FA_MCP
gen FA_MCP=n_25056_3_0
label var FA_MCP "Mean FA in middle cerebellar peduncle on FA skeleton (left)"

capture drop FA_PCT
gen FA_PCT=n_25057_3_0
label var FA_PCT "Mean FA in pontine crossing tract on FA skeleton (left)"

capture drop FA_PCR_Left
gen FA_PCR_Left=n_25083_3_0
label var FA_PCR_Left "Mean FA in posterior corona radiata on FA skeleton (left)"

capture drop FA_PCR_Right
gen FA_PCR_Right=n_25082_3_0
label var FA_PCR_Right "Mean FA in posterior corona radiata  on FA skeleton (right)"

capture drop FA_PLIC_Left
gen FA_PLIC_Left=n_25075_3_0
label var FA_PLIC_Left "Mean FA in posterior limb of the internal capsule on FA skeleton (left)"

capture drop FA_PLIC_Right
gen FA_PLIC_Right=n_25074_3_0
label var FA_PLIC_Right "Mean FA in posterior limb of the internal capsule  on FA skeleton (right)"


capture drop FA_PTR_Left
gen FA_PTR_Left=n_25085_3_0
label var FA_PTR_Left "Mean FA in posterior thalamic radiation on FA skeleton (left)"

capture drop FA_PTR_Right
gen FA_PTR_Right=n_25084_3_0
label var FA_PTR_Right "Mean FA in posterior thalamic radiation  on FA skeleton (right)"

capture drop FA_RPIC_Left
gen FA_RPIC_Left=n_25077_3_0
label var FA_RPIC_Left "Mean FA in retrolenticular part of internal capsule on FA skeleton (left)"

capture drop FA_RPIC_Right
gen FA_RPIC_Right=n_25076_3_0
label var FA_RPIC_Right "Mean FA in retrolenticular part of internal capsule  on FA skeleton (right)"

capture drop FA_SS_Left
gen FA_SS_Left=n_25087_3_0
label var FA_SS_Left "Mean FA in sagittal stratum on FA skeleton (left)"

capture drop FA_SS_Right
gen FA_SS_Right=n_25086_3_0
label var FA_SS_Right "Mean FA in sagittal stratum  on FA skeleton (right)"

capture drop FA_SCC
gen FA_SCC=n_25060_3_0
label var FA_SCC "Mean FA in splenium of the corpus callosum"

capture drop FA_SCP_Left
gen FA_SCP_Left=n_25069_3_0
label var FA_SCP_Left "Mean FA in superior cerebellar peduncle on FA skeleton (left)"

capture drop FA_SCP_Right
gen FA_SCP_Right=n_25068_3_0
label var FA_SCP_Right "Mean FA in superior cerebellar peduncle  on FA skeleton (right)"


capture drop FA_SCR_Left
gen FA_SCR_Left=n_25081_3_0
label var FA_SCR_Left "Mean FA in superior corona radiata on FA skeleton (left)"

capture drop FA_SCR_Right
gen FA_SCR_Right=n_25080_3_0
label var FA_SCR_Right "Mean FA in superior corona radiata  on FA skeleton (right)"


capture drop FA_FOF_Left
gen FA_FOF_Left=n_25099_3_0
label var FA_FOF_Left "Mean FA in fronto-occipital fasciculus on FA skeleton (left)"

capture drop FA_FOF_Right
gen FA_FOF_Right=n_25098_3_0
label var FA_FOF_Right "Mean FA in fronto-occipital fasciculus  on FA skeleton (right)"


capture drop FA_SLF_Left
gen FA_SLF_Left=n_25097_3_0
label var FA_SLF_Left "Mean FA in super longitudinal fasciculus on FA skeleton (left)"

capture drop FA_SLF_Right
gen FA_SLF_Right=n_25096_3_0
label var FA_SLF_Right "Mean FA in super longitudinal fasciculus  on FA skeleton (right)"

capture drop FA_TP_Left
gen FA_TP_Left=n_25103_3_0
label var FA_TP_Left "Mean FA in tapetum on FA skeleton (left)"

capture drop FA_TP_Right
gen FA_TP_Right=n_25102_3_0
label var FA_TP_Right "Mean FA in tapetum  on FA skeleton (right)"

capture drop FA_UNC_Left
gen FA_UNC_Left=n_25101_3_0
label var FA_UNC_Left "Mean FA in unciate fasciculus on FA skeleton (left)"

capture drop FA_UNC_Right
gen FA_UNC_Right=n_25100_3_0
label var FA_UNC_Right "Mean FA in unciate fasciculus on FA skeleton (right)"



*************************MEAN DIFFUSIVITIY****************************
capture drop MD_ACR_Left
gen MD_ACR_Left=n_25127_3_0
label var MD_ACR_Left "Mean MD in anterior corona radiata on FA skeleton (left)"

capture drop MD_ACR_Right
gen MD_ACR_Right=n_25126_3_0
label var MD_ACR_Right "Mean MD in anterior corona radiata on FA skeleton (right)"

capture drop MD_ALIC_Left
gen MD_ALIC_Left=n_25121_3_0
label var MD_ALIC_Left "Mean MD in anterior limb of the internal capsule on FA skeleton (left)"


capture drop MD_ALIC_Right
gen MD_ALIC_Right=n_25120_3_0
label var MD_ALIC_Right "Mean MD in anterior limb of the internal capsule on FA skeleton (right)"


capture drop MD_BCC
gen MD_BCC=n_25107_3_0
label var MD_BCC "Mean MD in body of corpus callosum on FA skeleton"

capture drop MD_CP_Left
gen MD_CP_Left=n_25119_3_0
label var MD_CP_Left "Mean MD in body of cerebral peduncle on FA skeleton (left)"

capture drop MD_CP_Right
gen MD_CP_Right=n_25118_3_0
label var MD_CP_Right "Mean MD in body of cerebral peduncle on FA skeleton (right)"


capture drop MD_CCG_Left
gen MD_CCG_Left=n_25139_3_0
label var MD_CCG_Left "Mean MD in body of cigulum cingulate gyrus on FA skeleton (left)"

capture drop MD_CCG_Right
gen MD_CCG_Right=n_25138_3_0
label var MD_CCG_Right "Mean MD in body of cigulum cingulate gyrus on FA skeleton (right)"

capture drop MD_CH_Left
gen MD_CH_Left=n_25141_3_0
label var MD_CH_Left "Mean MD in cigulum hippocampus on FA skeleton (left)"

capture drop MD_CH_Right
gen MD_CH_Right=n_25140_3_0
label var MD_CH_Right "Mean MD in cigulum hippocampus on FA skeleton (right)"

capture drop MD_CT_Left
gen MD_CT_Left=n_25111_3_0
label var MD_CT_Left "Mean MD in corticospinal tract on FA skeleton (left)"

capture drop MD_CT_Right
gen MD_CT_Right=n_25110_3_0
label var MD_CT_Right "Mean MD in corticospinal tract on FA skeleton (right)"

capture drop MD_EC_Left
gen MD_EC_Left=n_25137_3_0
label var MD_EC_Left "Mean MD in external capsule on FA skeleton (left)"

capture drop MD_EC_Right
gen MD_EC_Right=n_25136_3_0
label var MD_EC_Right "Mean MD in external capsule on FA skeleton (right)"

capture drop MD_FCST_Left
gen MD_FCST_Left=n_25143_3_0
label var MD_FCST_Left "Mean MD in fornix cres+stria terminalis on FA skeleton (left)"

capture drop MD_FCST_Right
gen MD_FCST_Right=n_25142_3_0
label var MD_FCST_Right "Mean MD in fornix cres+stria terminalis  on FA skeleton (right)"

capture drop MD_FO
gen MD_FO=n_25109_3_0
label var MD_FO "Mean MD in fornix on FA skeleton (left)"


capture drop MD_GCC
gen MD_GCC=n_25106_3_0
label var MD_GCC "Mean MD in genu of corpus callosum on FA skeleton (left)"

capture drop MD_ICP_Left
gen MD_ICP_Left=n_25115_3_0
label var MD_ICP_Left "Mean MD in inferior cerebellar peduncle on FA skeleton (left)"

capture drop MD_ICP_Right
gen MD_ICP_Right=n_25114_3_0
label var MD_ICP_Right "Mean MD in inferior cerebellar peduncle  on FA skeleton (right)"

capture drop MD_ML_Left
gen MD_ML_Left=n_25113_3_0
label var MD_ML_Left "Mean MD in medial lemniscus on FA skeleton (left)"

capture drop MD_ML_Right
gen MD_ML_Right=n_25112_3_0
label var MD_ML_Right "Mean MD in medial lemniscus  on FA skeleton (right)"

capture drop MD_MCP
gen MD_MCP=n_25104_3_0
label var MD_MCP "Mean MD in middle cerebellar peduncle on FA skeleton (left)"

capture drop MD_PCT
gen MD_PCT=n_25105_3_0
label var MD_PCT "Mean MD in pontine crossing tract on FA skeleton (left)"

capture drop MD_PCR_Left
gen MD_PCR_Left=n_25131_3_0
label var MD_PCR_Left "Mean MD in posterior corona radiata on FA skeleton (left)"

capture drop MD_PCR_Right
gen MD_PCR_Right=n_25130_3_0
label var MD_PCR_Right "Mean MD in posterior corona radiata  on FA skeleton (right)"

capture drop MD_PLIC_Left
gen MD_PLIC_Left=n_25123_3_0
label var MD_PLIC_Left "Mean MD in posterior limb of the internal capsule on FA skeleton (left)"

capture drop MD_PLIC_Right
gen MD_PLIC_Right=n_25122_3_0
label var MD_PLIC_Right "Mean MD in posterior limb of the internal capsule  on FA skeleton (right)"


capture drop MD_PTR_Left
gen MD_PTR_Left=n_25133_3_0
label var MD_PTR_Left "Mean MD in posterior thalamic radiation on FA skeleton (left)"

capture drop MD_PTR_Right
gen MD_PTR_Right=n_25132_3_0
label var MD_PTR_Right "Mean MD in posterior thalamic radiation  on FA skeleton (right)"

capture drop MD_RPIC_Left
gen MD_RPIC_Left=n_25125_3_0
label var MD_RPIC_Left "Mean MD in retrolenticular part of internal capsule on FA skeleton (left)"

capture drop MD_RPIC_Right
gen MD_RPIC_Right=n_25124_3_0
label var MD_RPIC_Right "Mean MD in retrolenticular part of internal capsule  on FA skeleton (right)"

capture drop MD_SS_Left
gen MD_SS_Left=n_25135_3_0
label var MD_SS_Left "Mean MD in sagittal stratum on FA skeleton (left)"

capture drop MD_SS_Right
gen MD_SS_Right=n_25134_3_0
label var MD_SS_Right "Mean MD in sagittal stratum  on FA skeleton (right)"

capture drop MD_SCC
gen MD_SCC=n_25108_3_0
label var MD_SCC "Mean MD in splenium of the corpus callosum"

capture drop MD_SCP_Left
gen MD_SCP_Left=n_25117_3_0
label var MD_SCP_Left "Mean MD in superior cerebellar peduncle on FA skeleton (left)"

capture drop MD_SCP_Right
gen MD_SCP_Right=n_25116_3_0
label var MD_SCP_Right "Mean MD in superior cerebellar peduncle  on FA skeleton (right)"


capture drop MD_SCR_Left
gen MD_SCR_Left=n_25129_3_0
label var MD_SCR_Left "Mean MD in superior corona radiata on FA skeleton (left)"

capture drop MD_SCR_Right
gen MD_SCR_Right=n_25128_3_0
label var MD_SCR_Right "Mean MD in superior corona radiata  on FA skeleton (right)"


capture drop MD_FOF_Left
gen MD_FOF_Left=n_25147_3_0
label var MD_FOF_Left "Mean MD in fronto-occipital fasciculus on FA skeleton (left)"

capture drop MD_FOF_Right
gen MD_FOF_Right=n_25146_3_0
label var MD_FOF_Right "Mean MD in fronto-occipital fasciculus  on FA skeleton (right)"


capture drop MD_SLF_Left
gen MD_SLF_Left=n_25145_3_0
label var MD_SLF_Left "Mean MD in super longitudinal fasciculus on FA skeleton (left)"

capture drop MD_SLF_Right
gen MD_SLF_Right=n_25144_3_0
label var MD_SLF_Right "Mean MD in super longitudinal fasciculus  on FA skeleton (right)"

capture drop MD_TP_Left
gen MD_TP_Left=n_25151_3_0
label var MD_TP_Left "Mean MD in tapetum on FA skeleton (left)"

capture drop MD_TP_Right
gen MD_TP_Right=n_25150_3_0
label var MD_TP_Right "Mean MD in tapetum  on FA skeleton (right)"

capture drop MD_UNC_Left
gen MD_UNC_Left=n_25149_3_0
label var MD_UNC_Left "Mean MD in unciate fasciculus on FA skeleton (left)"

capture drop MD_UNC_Right
gen MD_UNC_Right=n_25148_3_0
label var MD_UNC_Right "Mean MD in unciate fasciculus on FA skeleton (right)"

save, replace


/////////////////NODDI MEASURES/////////////////////////////


************ICVF**************

**25367:Mean ICVF in anterior corona radiata on FA skeleton (left)
capture drop ICVF_ACR_Left
gen ICVF_ACR_Left=n_25367_3_0
label var ICVF_ACR_Left "Mean ICVF in anterior corona radiata on FA skeleton (left)"


**25366:Mean ICVF in anterior corona radiata on FA skeleton (right)
capture drop ICVF_ACR_Right
gen ICVF_ACR_Right=n_25366_3_0
label var ICVF_ACR_Right "Mean ICVF in anterior corona radiata on FA skeleton (right)"

**25361: Mean ICVF in anterior limb of internal capsule on FA skeleton (left)
capture drop ICVF_ALIC_Left
gen ICVF_ALIC_Left=n_25361_3_0
label var ICVF_ALIC_Left "Mean ICVF in anterior limb of the internal capsule on FA skeleton (left)"

**25360: Mean ICVF in anterior limb of internal capsule on FA skeleton (right)
capture drop ICVF_ALIC_Right
gen ICVF_ALIC_Right=n_25360_3_0
label var ICVF_ALIC_Right "Mean ICVF in anterior limb of the internal capsule on FA skeleton (right)"

**25347: Mean ICVF in body of corpus callosum on FA skeleton
capture drop ICVF_BCC
gen ICVF_BCC=n_25347_3_0
label var ICVF_BCC "Mean ICVF in body of corpus callosum on FA skeleton"

**25359: Mean ICVF in cerebral peduncle on FA skeleton (left)
capture drop ICVF_CP_Left
gen ICVF_CP_Left=n_25359_3_0
label var ICVF_CP_Left "Mean ICVF in cerebral peduncle on FA skeleton (left)"


**25358: Mean ICVF in cerebral peduncle on FA skeleton (right)
capture drop ICVF_CP_Right
gen ICVF_CP_Right=n_25358_3_0
label var ICVF_CP_Right "Mean ICVF in cerebral peduncle on FA skeleton (right)"


**25379: Mean ICVF in cingulum cingulate gyrus on FA skeleton (left)
capture drop ICVF_CCG_Left
gen ICVF_CCG_Left=n_25379_3_0
label var ICVF_CCG_Left "Mean ICVF in cingulum cingulate gyrus on FA skeleton (left)"


**25378: Mean ICVF in cingulum cingulate gyrus on FA skeleton (right)
capture drop ICVF_CCG_Right
gen ICVF_CCG_Right=n_25378_3_0
label var ICVF_CCG_Right "Mean ICVF in cingulum cingulate gyrus on FA skeleton (right)"

**25381: Mean ICVF in cingulum hippocampus on FA skeleton (left)
capture drop ICVF_CH_Left
gen ICVF_CH_Left=n_25381_3_0
label var ICVF_CH_Left "Mean ICVF in cingulum hippocampus on FA skeleton (left)"


**25380: Mean ICVF in cingulum hippocampus on FA skeleton (right)
capture drop ICVF_CH_Right
gen ICVF_CH_Right=n_25380_3_0
label var ICVF_CH_Right "Mean ICVF in cingulum hippocampus on FA skeleton (right)"



**25351: Mean ICVF in corticospinal tract on FA skeleton (left)
capture drop ICVF_CT_Left
gen ICVF_CT_Left=n_25351_3_0
label var ICVF_CT_Left "Mean ICVF in corticospinal tract on FA skeleton (left)"

**25350: Mean ICVF in corticospinal tract on FA skeleton (right)
capture drop ICVF_CT_Right
gen ICVF_CT_Right=n_25350_3_0
label var ICVF_CT_Right "Mean ICVF in corticospinal tract on FA skeleton (right)"

**25377: Mean ICVF in external capsule on FA skeleton (left)
capture drop ICVF_EC_Left
gen ICVF_EC_Left=n_25377_3_0
label var ICVF_EC_Left "Mean ICVF in external capsule on FA skeleton (left)"


**25376: Mean ICVF in external capsule on FA skeleton (right)
capture drop ICVF_EC_Right
gen ICVF_EC_Right=n_25376_3_0
label var ICVF_EC_Right "Mean ICVF in external capsule on FA skeleton (right)"


**25383: Mean ICVF in fornix cres+stria terminalis on FA skeleton (left)
capture drop ICVF_FCST_Left
gen ICVF_FCST_Left=n_25383_3_0
label var ICVF_FCST_Left "Mean ICVF in fornix cres+stria terminalis on FA skeleton (left)"


**25382: Mean ICVF in fornix cres+stria terminalis on FA skeleton (right)
capture drop ICVF_FCST_Right
gen ICVF_FCST_Right=n_25382_3_0
label var ICVF_FCST_Right "Mean ICVF in fornix cres+stria terminalis on FA skeleton (right)"


**25349: Mean ICVF in fornix on FA skeleton
capture drop ICVF_FO
gen ICVF_FO=n_25349_3_0
label var ICVF_FO "Mean ICVF in Fornix on FA skeleton"


**25346: Mean ICVF in genu of corpus callosum on FA skeleton
capture drop ICVF_GCC
gen ICVF_GCC=n_25346_3_0
label var ICVF_GCC "Mean ICVF in genu of corpus callosum on FA skeleton"

**25355: Mean ICVF in inferior cerebellar peduncle on FA skeleton (left)
capture drop ICVF_ICP_Left
gen ICVF_ICP_Left=n_25355_3_0
label var ICVF_ICP_Left "Mean ICVF in inferior cerebellar peduncle on FA skeleton (left)"

**25354: Mean ICVF in inferior cerebellar peduncle on FA skeleton (right)
capture drop ICVF_ICP_Right
gen ICVF_ICP_Right=n_25354_3_0
label var ICVF_ICP_Right "Mean ICVF in inferior cerebellar peduncle on FA skeleton (right)"


**25353: Mean ICVF in medial lemniscus on FA skeleton (left)
capture drop ICVF_ML_Left
gen ICVF_ML_Left=n_25353_3_0
label var ICVF_ML_Left "Mean ICVF in medial lemniscus on FA skeleton (left)"

**25352: Mean ICVF in medial lemniscus on FA skeleton (right)
capture drop ICVF_ML_Right
gen ICVF_ML_Right=n_25352_3_0
label var ICVF_ML_Right "Mean ICVF in medial lemniscus on FA skeleton (right)"

**25344: Mean ICVF in middle cerebellar peduncle on FA skeleton
capture drop ICVF_MCP
gen ICVF_MCP=n_25344_3_0
label var ICVF_MCP "Mean ICVF in middle cerebellar peduncle on FA skeleton"

**25345: Mean ICVF in pontine crossing tract on FA skeleton
capture drop ICVF_PCT
gen ICVF_PCT=n_25345_3_0
label var ICVF_PCT "Mean ICVF in pontine crossing tract on FA skeleton"

**25371: Mean ICVF in posterior corona radiata on FA skeleton (left)
capture drop ICVF_PCR_Left
gen ICVF_PCR_Left=n_25371_3_0
label var ICVF_PCR_Left "Mean ICVF in posterior corona radiata on FA skeleton (left)"


**25370: Mean ICVF in posterior corona radiata on FA skeleton (right)
capture drop ICVF_PCR_Right
gen ICVF_PCR_Right=n_25370_3_0
label var ICVF_PCR_Right "Mean ICVF in posterior corona radiata on FA skeleton (right)"

**25363: Mean ICVF in posterior limb of internal capsule on FA skeleton (left)
capture drop ICVF_PLIC_Left
gen ICVF_PLIC_Left=n_25363_3_0
label var ICVF_PLIC_Left "Mean ICVF in posterior limb of internal capsule on FA skeleton (left)"

**25362: Mean ICVF in posterior limb of internal capsule on FA skeleton (right)
capture drop ICVF_PLIC_Right
gen ICVF_PLIC_Right=n_25362_3_0
label var ICVF_PLIC_Right "Mean ICVF in posterior limb of internal capsule on FA skeleton (right)"

**25373: Mean ICVF in posterior thalamic radiation on FA skeleton (left)
capture drop ICVF_PTR_Left
gen ICVF_PTR_Left=n_25373_3_0
label var ICVF_PTR_Left "Mean ICVF in posterior thalamic radiation on FA skeleton (left)"


**25372: Mean ICVF in posterior thalamic radiation on FA skeleton (right)
capture drop ICVF_PTR_Right
gen ICVF_PTR_Right=n_25372_3_0
label var ICVF_PTR_Right "Mean ICVF in posterior thalamic radiation on FA skeleton (right)"



**25365: Mean ICVF in retrolenticular part of internal capsule on FA skeleton (left)
capture drop ICVF_RPIC_Left
gen ICVF_RPIC_Left=n_25365_3_0
label var ICVF_RPIC_Left "Mean ICVF in retrolenticular part of internal capsule on FA skeleton (left)"


**25364: Mean ICVF in retrolenticular part of internal capsule on FA skeleton (right)
capture drop ICVF_RPIC_Right
gen ICVF_RPIC_Right=n_25364_3_0
label var ICVF_RPIC_Right "Mean ICVF in retrolenticular part of internal capsule on FA skeleton (right)"

**25375: Mean ICVF in sagittal stratum on FA skeleton (left)
capture drop ICVF_SS_Left
gen ICVF_SS_Left=n_25375_3_0
label var ICVF_SS_Left "Mean ICVF in sagittal stratum on FA skeleton (left)"

**25374: Mean ICVF in sagittal stratum on FA skeleton (right)
capture drop ICVF_SS_Right
gen ICVF_SS_Right=n_25374_3_0
label var ICVF_SS_Right "Mean ICVF in sagittal stratum on FA skeleton (right)"

**25348: Mean ICVF in splenium of corpus callosum on FA skeleton
capture drop ICVF_SCC
gen ICVF_SCC=n_25348_3_0
label var ICVF_SCC "Mean ICVF in splenium of corpus callosum on FA skeleton"

**25357: Mean ICVF in superior cerebellar peduncle on FA skeleton (left)
capture drop ICVF_SCP_Left
gen ICVF_SCP_Left=n_25357_3_0
label var ICVF_SCP_Left "Mean ICVF in superior cerebellar peduncle on FA skeleton (left)"


**25356: Mean ICVF in superior cerebellar peduncle on FA skeleton (right)
capture drop ICVF_SCP_Right
gen ICVF_SCP_Right=n_25356_3_0
label var ICVF_SCP_Right "Mean ICVF in superior cerebellar peduncle on FA skeleton (right)"

**25369: Mean ICVF in superior corona radiata on FA skeleton (left)
capture drop ICVF_SCR_Left
gen ICVF_SCR_Left=n_25369_3_0
label var ICVF_SCR_Left "Mean ICVF in superior corona radiata on FA skeleton (left)"

**25368: Mean ICVF in superior corona radiata on FA skeleton (right)
capture drop ICVF_SCR_Right
gen ICVF_SCR_Right=n_25368_3_0
label var ICVF_SCR_Right "Mean ICVF in superior corona radiata on FA skeleton (right)"


**25387: Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (left)
capture drop ICVF_FOF_Left
gen ICVF_FOF_Left=n_25387_3_0
label var ICVF_FOF_Left "Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (left)"


**25386: Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (right)
capture drop ICVF_FOF_Right
gen ICVF_FOF_Right=n_25386_3_0
label var ICVF_FOF_Right "Mean ICVF in superior fronto-occipital fasciculus on FA skeleton (right)"


**25385: Mean ICVF in superior longitudinal fasciculus on FA skeleton (left)
capture drop ICVF_SLF_Left
gen ICVF_SLF_Left=n_25385_3_0
label var ICVF_SLF_Left "Mean ICVF in superior longitudinal fasciculus on FA skeleton (left)"


**25384: Mean ICVF in superior longitudinal fasciculus on FA skeleton (right)
capture drop ICVF_SLF_Right
gen ICVF_SLF_Right=n_25384_3_0
label var ICVF_SLF_Right "Mean ICVF in superior longitudinal fasciculus on FA skeleton (right)"


**25391: Mean ICVF in tapetum on FA skeleton (left)
capture drop ICVF_TP_Left
gen ICVF_TP_Left=n_25391_3_0
label var ICVF_TP_Left "Mean ICVF in tapetum on FA skeleton (left)"


**25390: Mean ICVF in tapetum on FA skeleton (right)
capture drop ICVF_TP_Right
gen ICVF_TP_Right=n_25390_3_0
label var ICVF_TP_Right "Mean ICVF in tapetum on FA skeleton (right)"


**25389: Mean ICVF in uncinate fasciculus on FA skeleton (left)
capture drop ICVF_UNC_Left
gen ICVF_UNC_Left=n_25389_3_0
label var ICVF_UNC_Left "Mean ICVF in uncinate fasciculus on FA skeleton (left)"


**25388: Mean ICVF in uncinate fasciculus on FA skeleton (right)
capture drop ICVF_UNC_Right
gen ICVF_UNC_Right=n_25388_3_0
label var ICVF_UNC_Right "Mean ICVF in uncinate fasciculus on FA skeleton (right)"




************ISOVF************
**25463: Mean ISOVF in anterior corona radiata on FA skeleton (left)
capture drop ISOVF_ACR_Left
gen ISOVF_ACR_Left=n_25463_3_0
label var ISOVF_ACR_Left "Mean ISOVF in anterior corona radiata on FA skeleton (left)"

**25462: Mean ISOVF in anterior corona radiata on FA skeleton (right)
capture drop ISOVF_ACR_Right
gen ISOVF_ACR_Right=n_25462_3_0
label var ISOVF_ACR_Right "Mean ISOVF in anterior corona radiata on FA skeleton (right)"


**25457: Mean ISOVF in anterior limb of internal capsule on FA skeleton (left)
capture drop ISOVF_ALIC_Left
gen ISOVF_ALIC_Left=n_25457_3_0
label var ISOVF_ALIC_Left "Mean ISOVF in anterior limb of the internal capsule on FA skeleton (left)"


**25456: Mean ISOVF in anterior limb of internal capsule on FA skeleton (right)
capture drop ISOVF_ALIC_Right
gen ISOVF_ALIC_Right=n_25456_3_0
label var ISOVF_ALIC_Right "Mean ISOVF in anterior limb of the internal capsule on FA skeleton (right)"


**25443: Mean ISOVF in body of corpus callosum on FA skeleton
capture drop ISOVF_BCC
gen ISOVF_BCC=n_25443_3_0
label var ISOVF_BCC "Mean ISOVF in body of corpus callosum on FA skeleton"


**25455: Mean ISOVF in cerebral peduncle on FA skeleton (left)
capture drop ISOVF_CP_Left
gen ISOVF_CP_Left=n_25455_3_0
label var ISOVF_CP_Left "Mean ISOVF in cerebral peduncle on FA skeleton (left)"

**25454: Mean ISOVF in cerebral peduncle on FA skeleton (right)
capture drop ISOVF_CP_Right
gen ISOVF_CP_Right=n_25454_3_0
label var ISOVF_CP_Right "Mean ISOVF in cerebral peduncle on FA skeleton (right)"


**25475: Mean ISOVF in cingulum cingulate gyrus on FA skeleton (left)
capture drop ISOVF_CCG_Left
gen ISOVF_CCG_Left=n_25475_3_0
label var ISOVF_CCG_Left "Mean ISOVF in cingulum cingulate gyrus on FA skeleton (left)"

**25474: Mean ISOVF in cingulum cingulate gyrus on FA skeleton (right)
capture drop ISOVF_CCG_Right
gen ISOVF_CCG_Right=n_25474_3_0
label var ISOVF_CCG_Right "Mean ISOVF in cingulum cingulate gyrus on FA skeleton (right)"


**25477: Mean ISOVF in cingulum hippocampus on FA skeleton (left)
capture drop ISOVF_CH_Left
gen ISOVF_CH_Left=n_25477_3_0
label var ISOVF_CH_Left "Mean ISOVF in cingulum hippocampus on FA skeleton (left)"


**25476: Mean ISOVF in cingulum hippocampus on FA skeleton (right)
capture drop ISOVF_CH_Right
gen ISOVF_CH_Right=n_25476_3_0
label var ISOVF_CH_Right "Mean ISOVF in cingulum hippocampus on FA skeleton (right)"


**25447: Mean ISOVF in corticospinal tract on FA skeleton (left)
capture drop ISOVF_CT_Left
gen ISOVF_CT_Left=n_25447_3_0
label var ISOVF_CT_Left "Mean ISOVF in corticospinal tract on FA skeleton (left)"


**25446: Mean ISOVF in corticospinal tract on FA skeleton (right)
capture drop ISOVF_CT_Right
gen ISOVF_CT_Right=n_25446_3_0
label var ISOVF_CT_Right "Mean ISOVF in corticospinal tract on FA skeleton (right)"

**25473: Mean ISOVF in external capsule on FA skeleton (left)
capture drop ISOVF_EC_Left
gen ISOVF_EC_Left=n_25473_3_0
label var ISOVF_EC_Left "Mean ISOVF in external capsule on FA skeleton (left)"


**25472: Mean ISOVF in external capsule on FA skeleton (right)
capture drop ISOVF_EC_Right
gen ISOVF_EC_Right=n_25472_3_0
label var ISOVF_EC_Right "Mean ISOVF in external capsule on FA skeleton (right)"


**25479: Mean ISOVF in fornix cres+stria terminalis on FA skeleton (left)
capture drop ISOVF_FCST_Left
gen ISOVF_FCST_Left=n_25479_3_0
label var ISOVF_FCST_Left "Mean ISOVF in fornix cres+stria terminalis on FA skeleton (left)"


**25478: Mean ISOVF in fornix cres+stria terminalis on FA skeleton (right)
capture drop ISOVF_FCST_Right
gen ISOVF_FCST_Right=n_25478_3_0
label var ISOVF_FCST_Right "Mean ISOVF in fornix cres+stria terminalis on FA skeleton (right)"



**25445: Mean ISOVF in fornix on FA skeleton
capture drop ISOVF_FO
gen ISOVF_FO=n_25445_3_0
label var ISOVF_FO "Mean ISOVF in Fornix on FA skeleton"



**25442: Mean ISOVF in genu of corpus callosum on FA skeleton
capture drop ISOVF_GCC
gen ISOVF_GCC=n_25442_3_0
label var ISOVF_GCC "Mean ISOVF in genu of corpus callosum on FA skeleton"



**25451: Mean ISOVF in inferior cerebellar peduncle on FA skeleton (left)
capture drop ISOVF_ICP_Left
gen ISOVF_ICP_Left=n_25451_3_0
label var ISOVF_ICP_Left "Mean ISOVF in inferior cerebellar peduncle on FA skeleton (left)"


**25450: Mean ISOVF in inferior cerebellar peduncle on FA skeleton (right)
capture drop ISOVF_ICP_Right
gen ISOVF_ICP_Right=n_25450_3_0
label var ISOVF_ICP_Right "Mean ISOVF in inferior cerebellar peduncle on FA skeleton (right)"


**25449: Mean ISOVF in medial lemniscus on FA skeleton (left)
capture drop ISOVF_ML_Left
gen ISOVF_ML_Left=n_25449_3_0
label var ISOVF_ML_Left "Mean ISOVF in medial lemniscus on FA skeleton (left)"


**25448: Mean ISOVF in medial lemniscus on FA skeleton (right)
capture drop ISOVF_ML_Right
gen ISOVF_ML_Right=n_25448_3_0
label var ISOVF_ML_Right "Mean ISOVF in medial lemniscus on FA skeleton (right)"


**25440: Mean ISOVF in middle cerebellar peduncle on FA skeleton
capture drop ISOVF_MCP
gen ISOVF_MCP=n_25440_3_0
label var ISOVF_MCP "Mean ISOVF in middle cerebellar peduncle on FA skeleton"


**25441: Mean ISOVF in pontine crossing tract on FA skeleton
capture drop ISOVF_PCT
gen ISOVF_PCT=n_25441_3_0
label var ISOVF_PCT "Mean ISOVF in pontine crossing tract on FA skeleton"


**25467: Mean ISOVF in posterior corona radiata on FA skeleton (left)
capture drop ISOVF_PCR_Left
gen ISOVF_PCR_Left=n_25467_3_0
label var ISOVF_PCR_Left "Mean ISOVF in posterior corona radiata on FA skeleton (left)"


**25466: Mean ISOVF in posterior corona radiata on FA skeleton (right)
capture drop ISOVF_PCR_Right
gen ISOVF_PCR_Right=n_25466_3_0
label var ISOVF_PCR_Right "Mean ISOVF in posterior corona radiata on FA skeleton (right)"


**25459: Mean ISOVF in posterior limb of internal capsule on FA skeleton (left)
capture drop ISOVF_PLIC_Left
gen ISOVF_PLIC_Left=n_25459_3_0
label var ISOVF_PLIC_Left "Mean ISOVF in posterior limb of internal capsule on FA skeleton (left)"

**25458: Mean ISOVF in posterior limb of internal capsule on FA skeleton (right)
capture drop ISOVF_PLIC_Right
gen ISOVF_PLIC_Right=n_25458_3_0
label var ISOVF_PLIC_Right "Mean ISOVF in posterior limb of internal capsule on FA skeleton (right)"


**25469: Mean ISOVF in posterior thalamic radiation on FA skeleton (left)
capture drop ISOVF_PTR_Left
gen ISOVF_PTR_Left=n_25469_3_0
label var ISOVF_PTR_Left "Mean ISOVF in posterior thalamic radiation on FA skeleton (left)"

**25468: Mean ISOVF in posterior thalamic radiation on FA skeleton (right)
capture drop ISOVF_PTR_Right
gen ISOVF_PTR_Right=n_25468_3_0
label var ISOVF_PTR_Right "Mean ISOVF in posterior thalamic radiation on FA skeleton (right)"



**25461: Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (left)
capture drop ISOVF_RPIC_Left
gen ISOVF_RPIC_Left=n_25461_3_0
label var ISOVF_RPIC_Left "Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (left)"



**25460: Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (right)
capture drop ISOVF_RPIC_Right
gen ISOVF_RPIC_Right=n_25460_3_0
label var ISOVF_RPIC_Right "Mean ISOVF in retrolenticular part of internal capsule on FA skeleton (right)"


**25471: Mean ISOVF in sagittal stratum on FA skeleton (left)
capture drop ISOVF_SS_Left
gen ISOVF_SS_Left=n_25471_3_0
label var ISOVF_SS_Left "Mean ISOVF in sagittal stratum on FA skeleton (left)"


**25470: Mean ISOVF in sagittal stratum on FA skeleton (right)
capture drop ISOVF_SS_Right
gen ISOVF_SS_Right=n_25470_3_0
label var ISOVF_SS_Right "Mean ISOVF in sagittal stratum on FA skeleton (right)"


**25444: Mean ISOVF in splenium of corpus callosum on FA skeleton
capture drop ISOVF_SCC
gen ISOVF_SCC=n_25444_3_0
label var ISOVF_SCC "Mean ISOVF in splenium of corpus callosum on FA skeleton"


**25453: Mean ISOVF in superior cerebellar peduncle on FA skeleton (left)
capture drop ISOVF_SCP_Left
gen ISOVF_SCP_Left=n_25453_3_0
label var ISOVF_SCP_Left "Mean ISOVF in superior cerebellar peduncle on FA skeleton (left)"



**25452: Mean ISOVF in superior cerebellar peduncle on FA skeleton (right)
capture drop ISOVF_SCP_Right
gen ISOVF_SCP_Right=n_25452_3_0
label var ISOVF_SCP_Right "Mean ISOVF in superior cerebellar peduncle on FA skeleton (right)"



**25465: Mean ISOVF in superior corona radiata on FA skeleton (left)
capture drop ISOVF_SCR_Left
gen ISOVF_SCR_Left=n_25465_3_0
label var ISOVF_SCR_Left "Mean ISOVF in superior corona radiata on FA skeleton (left)"


**25464: Mean ISOVF in superior corona radiata on FA skeleton (right)
capture drop ISOVF_SCR_Right
gen ISOVF_SCR_Right=n_25464_3_0
label var ISOVF_SCR_Right "Mean ISOVF in superior corona radiata on FA skeleton (right)"

**25483: Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (left)
capture drop ISOVF_FOF_Left
gen ISOVF_FOF_Left=n_25483_3_0
label var ISOVF_FOF_Left "Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (left)"


**25482: Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (right)
capture drop ISOVF_FOF_Right
gen ISOVF_FOF_Right=n_25482_3_0
label var ISOVF_FOF_Right "Mean ISOVF in superior fronto-occipital fasciculus on FA skeleton (right)"


**25481: Mean ISOVF in superior longitudinal fasciculus on FA skeleton (left)
capture drop ISOVF_SLF_Left
gen ISOVF_SLF_Left=n_25481_3_0
label var ISOVF_SLF_Left "Mean ISOVF in superior longitudinal fasciculus on FA skeleton (left)"

**25480: Mean ISOVF in superior longitudinal fasciculus on FA skeleton (right)
capture drop ISOVF_SLF_Right
gen ISOVF_SLF_Right=n_25480_3_0
label var ISOVF_SLF_Right "Mean ISOVF in superior longitudinal fasciculus on FA skeleton (right)"



**25487: Mean ISOVF in tapetum on FA skeleton (left)
capture drop ISOVF_TP_Left
gen ISOVF_TP_Left=n_25487_3_0
label var ISOVF_TP_Left "Mean ISOVF in tapetum on FA skeleton (left)"


**25486: Mean ISOVF in tapetum on FA skeleton (right)
capture drop ISOVF_TP_Right
gen ISOVF_TP_Right=n_25486_3_0
label var ISOVF_TP_Right "Mean ISOVF in tapetum on FA skeleton (right)"



**25485: Mean ISOVF in uncinate fasciculus on FA skeleton (left)
capture drop ISOVF_UNC_Left
gen ISOVF_UNC_Left=n_25485_3_0
label var ISOVF_UNC_Left "Mean ISOVF in uncinate fasciculus on FA skeleton (left)"



**25484: Mean ISOVF in uncinate fasciculus on FA skeleton (right)
capture drop ISOVF_UNC_Right
gen ISOVF_UNC_Right=n_25484_3_0
label var ISOVF_UNC_Right "Mean ISOVF in uncinate fasciculus on FA skeleton (right)"


***********OD****************
**25415: Mean OD in anterior corona radiata on FA skeleton (left)
capture drop OD_ACR_Left
gen OD_ACR_Left=n_25415_3_0
label var OD_ACR_Left "Mean OD in anterior corona radiata on FA skeleton (left)"


**25414: Mean OD in anterior corona radiata on FA skeleton (right)
capture drop OD_ACR_Right
gen OD_ACR_Right=n_25414_3_0
label var OD_ACR_Right "Mean OD in anterior corona radiata on FA skeleton (right)"



**25409: Mean OD in anterior limb of internal capsule on FA skeleton (left)
capture drop OD_ALIC_Left
gen OD_ALIC_Left=n_25409_3_0
label var OD_ALIC_Left "Mean OD in anterior limb of the internal capsule on FA skeleton (left)"

**25408: Mean OD in anterior limb of internal capsule on FA skeleton (right)
capture drop OD_ALIC_Right
gen OD_ALIC_Right=n_25408_3_0
label var OD_ALIC_Right "Mean OD in anterior limb of the internal capsule on FA skeleton (right)"


**25395: Mean OD in body of corpus callosum on FA skeleton
capture drop OD_BCC
gen OD_BCC=n_25395_3_0
label var OD_BCC "Mean OD in body of corpus callosum on FA skeleton"


**25407: Mean OD in cerebral peduncle on FA skeleton (left)
capture drop OD_CP_Left
gen OD_CP_Left=n_25407_3_0
label var OD_CP_Left "Mean OD in cerebral peduncle on FA skeleton (left)"


**25406: Mean OD in cerebral peduncle on FA skeleton (right)
capture drop OD_CP_Right
gen OD_CP_Right=n_25406_3_0
label var OD_CP_Right "Mean OD in cerebral peduncle on FA skeleton (right)"

**25427: Mean OD in cingulum cingulate gyrus on FA skeleton (left)
capture drop OD_CCG_Left
gen OD_CCG_Left=n_25427_3_0
label var OD_CCG_Left "Mean OD in cingulum cingulate gyrus on FA skeleton (left)"


**25426: Mean OD in cingulum cingulate gyrus on FA skeleton (right)
capture drop OD_CCG_Right
gen OD_CCG_Right=n_25426_3_0
label var OD_CCG_Right "Mean OD in cingulum cingulate gyrus on FA skeleton (right)"


**25429: Mean OD in cingulum hippocampus on FA skeleton (left)
capture drop OD_CH_Left
gen OD_CH_Left=n_25429_3_0
label var OD_CH_Left "Mean OD in cingulum hippocampus on FA skeleton (left)"



**25428: Mean OD in cingulum hippocampus on FA skeleton (right)
capture drop OD_CH_Right
gen OD_CH_Right=n_25428_3_0
label var OD_CH_Right "Mean OD in cingulum hippocampus on FA skeleton (right)"



**25399: Mean OD in corticospinal tract on FA skeleton (left)
capture drop OD_CT_Left
gen OD_CT_Left=n_25399_3_0
label var OD_CT_Left "Mean OD in corticospinal tract on FA skeleton (left)"


**25398: Mean OD in corticospinal tract on FA skeleton (right)
capture drop OD_CT_Right
gen OD_CT_Right=n_25398_3_0
label var OD_CT_Right "Mean OD in corticospinal tract on FA skeleton (right)"


**25425: Mean OD in external capsule on FA skeleton (left)
capture drop OD_EC_Left
gen OD_EC_Left=n_25425_3_0
label var OD_EC_Left "Mean OD in external capsule on FA skeleton (left)"



**25424: Mean OD in external capsule on FA skeleton (right)
capture drop OD_EC_Right
gen OD_EC_Right=n_25424_3_0
label var OD_EC_Right "Mean OD in external capsule on FA skeleton (right)"



**25431: Mean OD in fornix cres+stria terminalis on FA skeleton (left)
capture drop OD_FCST_Left
gen OD_FCST_Left=n_25431_3_0
label var OD_FCST_Left "Mean OD in fornix cres+stria terminalis on FA skeleton (left)"



**25430: Mean OD in fornix cres+stria terminalis on FA skeleton (right)
capture drop OD_FCST_Right
gen OD_FCST_Right=n_25430_3_0
label var OD_FCST_Right "Mean OD in fornix cres+stria terminalis on FA skeleton (right)"


**25397: Mean OD in fornix on FA skeleton
capture drop OD_FO
gen OD_FO=n_25397_3_0
label var OD_FO "Mean OD in Fornix on FA skeleton"


**25394: Mean OD in genu of corpus callosum on FA skeleton
capture drop OD_GCC
gen OD_GCC=n_25394_3_0
label var OD_GCC "Mean OD in genu of corpus callosum on FA skeleton"



**25403: Mean OD in inferior cerebellar peduncle on FA skeleton (left)
capture drop OD_ICP_Left
gen OD_ICP_Left=n_25403_3_0
label var OD_ICP_Left "Mean OD in inferior cerebellar peduncle on FA skeleton (left)"


**25402: Mean OD in inferior cerebellar peduncle on FA skeleton (right)
capture drop OD_ICP_Right
gen OD_ICP_Right=n_25402_3_0
label var OD_ICP_Right "Mean OD in inferior cerebellar peduncle on FA skeleton (right)"



**25401: Mean OD in medial lemniscus on FA skeleton (left)
capture drop OD_ML_Left
gen OD_ML_Left=n_25401_3_0
label var OD_ML_Left "Mean OD in medial lemniscus on FA skeleton (left)"


**25400: Mean OD in medial lemniscus on FA skeleton (right)
capture drop OD_ML_Right
gen OD_ML_Right=n_25400_3_0
label var OD_ML_Right "Mean OD in medial lemniscus on FA skeleton (right)"



**25392: Mean OD in middle cerebellar peduncle on FA skeleton
capture drop OD_MCP
gen OD_MCP=n_25392_3_0
label var OD_MCP "Mean OD in middle cerebellar peduncle on FA skeleton"



**25393: Mean OD in pontine crossing tract on FA skeleton
capture drop OD_PCT
gen OD_PCT=n_25393_3_0
label var OD_PCT "Mean OD in pontine crossing tract on FA skeleton"



**25419: Mean OD in posterior corona radiata on FA skeleton (left)
capture drop OD_PCR_Left
gen OD_PCR_Left=n_25419_3_0
label var OD_PCR_Left "Mean OD in posterior corona radiata on FA skeleton (left)"


**25418: Mean OD in posterior corona radiata on FA skeleton (right)
capture drop OD_PCR_Right
gen OD_PCR_Right=n_25418_3_0
label var OD_PCR_Right "Mean OD in posterior corona radiata on FA skeleton (right)"



**25411: Mean OD in posterior limb of internal capsule on FA skeleton (left)
capture drop OD_PLIC_Left
gen OD_PLIC_Left=n_25411_3_0
label var OD_PLIC_Left "Mean OD in posterior limb of internal capsule on FA skeleton (left)"


**25410: Mean OD in posterior limb of internal capsule on FA skeleton (right)
capture drop OD_PLIC_Right
gen OD_PLIC_Right=n_25410_3_0
label var OD_PLIC_Right "Mean OD in posterior limb of internal capsule on FA skeleton (right)"


**25421: Mean OD in posterior thalamic radiation on FA skeleton (left)
capture drop OD_PTR_Left
gen OD_PTR_Left=n_25421_3_0
label var OD_PTR_Left "Mean OD in posterior thalamic radiation on FA skeleton (left)"

**25420: Mean OD in posterior thalamic radiation on FA skeleton (right)
capture drop OD_PTR_Right
gen OD_PTR_Right=n_25420_3_0
label var OD_PTR_Right "Mean OD in posterior thalamic radiation on FA skeleton (right)"


**25413: Mean OD in retrolenticular part of internal capsule on FA skeleton (left)
capture drop OD_RPIC_Left
gen OD_RPIC_Left=n_25413_3_0
label var OD_RPIC_Left "Mean OD in retrolenticular part of internal capsule on FA skeleton (left)"


**25412: Mean OD in retrolenticular part of internal capsule on FA skeleton (right)
capture drop OD_RPIC_Right
gen OD_RPIC_Right=n_25412_3_0
label var OD_RPIC_Right "Mean OD in retrolenticular part of internal capsule on FA skeleton (right)"


**25423: Mean OD in sagittal stratum on FA skeleton (left)
capture drop OD_SS_Left
gen OD_SS_Left=n_25423_3_0
label var OD_SS_Left "Mean OD in sagittal stratum on FA skeleton (left)"


**25422: Mean OD in sagittal stratum on FA skeleton (right)
capture drop OD_SS_Right
gen OD_SS_Right=n_25422_3_0
label var OD_SS_Right "Mean OD in sagittal stratum on FA skeleton (right)"



**25396: Mean OD in splenium of corpus callosum on FA skeleton
capture drop OD_SCC
gen OD_SCC=n_25396_3_0
label var OD_SCC "Mean OD in splenium of corpus callosum on FA skeleton"


**25405: Mean OD in superior cerebellar peduncle on FA skeleton (left)
capture drop OD_SCP_Left
gen OD_SCP_Left=n_25405_3_0
label var OD_SCP_Left "Mean OD in superior cerebellar peduncle on FA skeleton (left)"


**25404: Mean OD in superior cerebellar peduncle on FA skeleton (right)
capture drop OD_SCP_Right
gen OD_SCP_Right=n_25404_3_0
label var OD_SCP_Right "Mean OD in superior cerebellar peduncle on FA skeleton (right)"


**25417: Mean OD in superior corona radiata on FA skeleton (left)
capture drop OD_SCR_Left
gen OD_SCR_Left=n_25417_3_0
label var OD_SCR_Left "Mean OD in superior corona radiata on FA skeleton (left)"



**25416: Mean OD in superior corona radiata on FA skeleton (right)
capture drop OD_SCR_Right
gen OD_SCR_Right=n_25416_3_0
label var OD_SCR_Right "Mean OD in superior corona radiata on FA skeleton (right)"



**25435: Mean OD in superior fronto-occipital fasciculus on FA skeleton (left)
capture drop OD_FOF_Left
gen OD_FOF_Left=n_25435_3_0
label var OD_FOF_Left "Mean OD in superior fronto-occipital fasciculus on FA skeleton (left)"


**25434: Mean OD in superior fronto-occipital fasciculus on FA skeleton (right)

capture drop OD_FOF_Right
gen OD_FOF_Right=n_25434_3_0
label var OD_FOF_Right "Mean OD in superior fronto-occipital fasciculus on FA skeleton (right)"


**25433: Mean OD in superior longitudinal fasciculus on FA skeleton (left)
capture drop OD_SLF_Left
gen OD_SLF_Left=n_25433_3_0
label var OD_SLF_Left "Mean OD in superior longitudinal fasciculus on FA skeleton (left)"



**25432: Mean OD in superior longitudinal fasciculus on FA skeleton (right)
capture drop OD_SLF_Right
gen OD_SLF_Right=n_25432_3_0
label var OD_SLF_Right "Mean OD in superior longitudinal fasciculus on FA skeleton (right)"



**25439: Mean OD in tapetum on FA skeleton (left)
capture drop OD_TP_Left
gen OD_TP_Left=n_25439_3_0
label var OD_TP_Left "Mean OD in tapetum on FA skeleton (left)"



**25438: Mean OD in tapetum on FA skeleton (right)
capture drop OD_TP_Right
gen OD_TP_Right=n_25438_3_0
label var OD_TP_Right "Mean OD in tapetum on FA skeleton (right)"



**25437: Mean OD in uncinate fasciculus on FA skeleton (left)
capture drop OD_UNC_Left
gen OD_UNC_Left=n_25437_3_0
label var OD_UNC_Left "Mean OD in uncinate fasciculus on FA skeleton (left)"


**25436: Mean OD in uncinate fasciculus on FA skeleton (right)
capture drop OD_UNC_Right
gen OD_UNC_Right=n_25436_3_0
label var OD_UNC_Right "Mean OD in uncinate fasciculus on FA skeleton (right)"

capture drop s_*

save, replace




capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT6A.smcl",replace

****************************************SERO-INSTENSITIES, SERO-POSITIVITIES, AND INFECTION BURDENS**************************************************************************
clear
use n_eid s_23074_0_0 s_23050_0_0 s_23051_0_0  s_23052_0_0 s_23053_0_0 s_23054_0_0 s_23055_0_0 s_23058_0_0 s_23059_0_0 s_23060_0_0 s_23061_0_0 ///
s_23062_0_0 s_23063_0_0 s_23064_0_0 s_23065_0_0 s_23066_0_0 s_23067_0_0 s_23075_0_0 s_23069_0_0 s_23071_0_0 n_23039_0_0 n_23040_0_0 n_23041_0_0 ///
n_23042_0_0 n_23043_0_0  n_23044_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin.dta"



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_HPYLORIPERSIST", replace


*********************************** H. pylori antigens *****************************

**23039	CagA antigen for Helicobacter pylori	Infectious Disease Antigens  
**23043	Catalase antigen for Helicobacter pylori	Infectious Disease Antigens  
**23042	GroEL antigen for Helicobacter pylori	Infectious Disease Antigens  
**23041	OMP antigen for Helicobacter pylori	Infectious Disease Antigens  
**23044	UreA antigen for Helicobacter pylori	Infectious Disease Antigens  
**23040	VacA antigen for Helicobacter pylori	Infectious Disease Antigens  

capture drop hpyloriCagA
gen hpyloriCagA=.
replace hpyloriCagA=n_23039_0_0


capture drop hpyloriCat
gen hpyloriCat=.
replace hpyloriCat=n_23043_0_0

capture drop hpyloriGroeL
gen hpyloriGroeL=.
replace hpyloriGroeL=n_23042_0_0

capture drop hpyloriOMP
gen hpyloriOMP=.
replace hpyloriOMP=n_23041_0_0

capture drop hpyloriUreA
gen hpyloriUreA=.
replace hpyloriUreA=n_23044_0_0

capture drop hpyloriVacA
gen hpyloriVacA=.
replace hpyloriVacA=n_23040_0_0


capture drop LnhpyloriCagA LnhpyloriCat LnhpyloriGroeL LnhpyloriOMP LnhpyloriUreA LnhpyloriVacA
foreach x of varlist hpyloriCagA hpyloriCat hpyloriGroeL hpyloriOMP hpyloriUreA hpyloriVacA {
gen Ln`x'=ln(`x')
}

save, replace


************************************H. pylori seropositivity, II*******************
capture drop hpylori_seropos2
gen hpylori_seropos2=""
replace hpylori_seropos2=s_23074_0_0

tab hpylori_seropos2
capture drop hpylori_seropos2fin
encode hpylori_seropos2,gen(hpylori_seropos2fin)
tab hpylori_seropos2fin
**1:False, 2:True


******************************Infectious burden***********************************

**HSV-1 seropositivity**

capture drop hsv1_seropos
gen hsv1_seropos=s_23050_0_0

capture drop hsv1_seroposfin
encode hsv1_seropos,gen(hsv1_seroposfin)
tab hsv1_seroposfin
**1:False, 2:True


**HSV-2 seropositivity**	

capture drop hsv2_seropos
gen hsv2_seropos=s_23051_0_0

capture drop hsv2_seroposfin
encode hsv2_seropos,gen(hsv2_seroposfin)
tab hsv2_seroposfin
**1:False, 2:True


**Varicella zoster seropositivity**
capture drop vzv_seropos
gen vzv_seropos=s_23052_0_0

capture drop vzv_seroposfin
encode vzv_seropos,gen(vzv_seroposfin)
tab vzv_seroposfin
**1:False, 2:True


**EBV seropositivity**
capture drop ebv_seropos
gen ebv_seropos=s_23053_0_0

capture drop ebv_seroposfin
encode ebv_seropos,gen(ebv_seroposfin)
tab ebv_seroposfin
**1:False, 2:True

**CMV seropositivity**
capture drop cmv_seropos
gen cmv_seropos=s_23054_0_0

capture drop cmv_seroposfin
encode cmv_seropos,gen(cmv_seroposfin)
tab cmv_seroposfin
**1:False, 2:True

**HHV-6 overall seropositivity for Human Herpesvirus-6**
capture drop hhv6_seropos
gen hhv6_seropos=s_23055_0_0

capture drop hhv6_seroposfin
encode hhv6_seropos,gen(hhv6_seroposfin)
tab hhv6_seroposfin
**1:False, 2:True

**HHV-7 seropositivity for Human Herpesvirus-7**
capture drop hhv7_seropos
gen hhv7_seropos=s_23058_0_0

capture drop hhv7_seroposfin
encode hhv7_seropos,gen(hhv7_seroposfin)
tab hhv7_seroposfin
**1:False, 2:True


**KSHV seropositivity for Kaposi's Sarcoma-Associated HerpesvirusV
capture drop kshv_seropos
gen kshv_seropos=s_23059_0_0

capture drop kshv_seroposfin
encode kshv_seropos,gen(kshv_seroposfin)
tab kshv_seroposfin
**1:False, 2:True



**HBV seropositivity for Hepatitis B Virus
capture drop hbv_seropos
gen hbv_seropos=s_23060_0_0

capture drop hbv_seroposfin
encode hbv_seropos,gen(hbv_seroposfin)
tab hbv_seroposfin
**1:False, 2:True

**HCV seropositivity for Hepatitis C Virus
capture drop hcv_seropos
gen hcv_seropos=s_23061_0_0

capture drop hcv_seroposfin
encode hcv_seropos,gen(hcv_seroposfin)
tab hcv_seroposfin
**1:False, 2:True

**T. gondii seropositivity for Toxoplasma gondii
capture drop TG_seropos
gen TG_seropos=s_23062_0_0

capture drop TG_seroposfin
encode TG_seropos,gen(TG_seroposfin)
tab TG_seroposfin
**1:False, 2:True



**HTLV-1 seropositivity for Human T-Lymphotropic Virus 1
capture drop htlv1_seropos
gen htlv1_seropos=s_23063_0_0

capture drop htlv1_seroposfin
encode htlv1_seropos,gen(htlv1_seroposfin)
tab htlv1_seroposfin
**1:False, 2:True


**HIV-1 seropositivity for Human Immunodeficiency Virus**
capture drop hiv1_seropos
gen hiv1_seropos=s_23064_0_0

capture drop hiv1_seroposfin
encode hiv1_seropos,gen(hiv1_seroposfin)
tab hiv1_seroposfin
**1:False, 2:True



**BKV seropositivity for Human Polyomavirus BKV
capture drop bkv_seropos
gen bkv_seropos=s_23065_0_0

capture drop bkv_seroposfin
encode bkv_seropos,gen(bkv_seroposfin)
tab bkv_seroposfin
**1:False, 2:True



**JCV seropositivity for Human Polyomavirus JCV
capture drop jvc_seropos
gen jvc_seropos=s_23066_0_0

capture drop jvc_seroposfin
encode jvc_seropos,gen(jvc_seroposfin)
tab jvc_seroposfin
**1:False, 2:True



**MCV seropositivity for Merkel Cell Polyomavirus
capture drop mcv_seropos
gen mcv_seropos=s_23067_0_0


capture drop mcv_seroposfin
encode mcv_seropos,gen(mcv_seroposfin)
tab mcv_seroposfin
**1:False, 2:True



**HPV 16 Definition II seropositivity for Human Papillomavirus type-16
capture drop hpv16_seropos
gen hpv16_seropos=s_23075_0_0


capture drop hpv16_seroposfin
encode hpv16_seropos,gen(hpv16_seroposfin)
tab hpv16_seroposfin
**1:False, 2:True



**HPV 18 seropositivity for Human Papillomavirus type-18
capture drop hpv18_seropos
gen hpv18_seropos=s_23069_0_0


capture drop hpv18_seroposfin
encode hpv18_seropos,gen(hpv18_seroposfin)
tab hpv18_seroposfin
**1:False, 2:True



**C. trachomatis Definition II seropositivity for Chlamydia trachomatis
capture drop CT_seropos2
gen CT_seropos2=s_23071_0_0

capture drop CT_seropos2fin
encode CT_seropos2,gen(CT_seropos2fin)
tab CT_seropos2fin
**1:False, 2:True

foreach x of varlist hpylori_seropos2fin CT_seropos2fin hpv18_seroposfin hpv16_seroposfin mcv_seroposfin jvc_seroposfin bkv_seroposfin hiv1_seroposfin htlv1_seroposfin TG_seroposfin hcv_seroposfin hbv_seroposfin kshv_seroposfin hhv7_seroposfin hhv6_seroposfin cmv_seroposfin ebv_seroposfin vzv_seroposfin hsv2_seroposfin hsv1_seroposfin {
	recode `x' (1=0) (2=1)
}

save, replace

//////////INFECTIOUS BURDEN, TOTAL///////

capture drop IB_total
gen IB_total=hpylori_seropos2fin+CT_seropos2fin+hpv18_seroposfin+hpv16_seroposfin+mcv_seroposfin+jvc_seroposfin+bkv_seroposfin+hiv1_seroposfin+htlv1_seroposfin+TG_seroposfin+hcv_seroposfin +hbv_seroposfin+kshv_seroposfin+hhv7_seroposfin+hhv6_seroposfin+cmv_seroposfin+ebv_seroposfin+vzv_seroposfin+hsv2_seroposfin+hsv1_seroposfin

tab IB_total

//////////INFECTIOUS BURDEN, MINUS H. PYLORI/////

capture drop IB_minhpylori
gen IB_minhpylori=CT_seropos2fin+hpv18_seroposfin+hpv16_seroposfin+mcv_seroposfin+jvc_seroposfin+bkv_seroposfin+hiv1_seroposfin+htlv1_seroposfin+TG_seroposfin+hcv_seroposfin ////
+hbv_seroposfin+kshv_seroposfin+hhv7_seroposfin+hhv6_seroposfin+cmv_seroposfin+ebv_seroposfin+vzv_seroposfin+hsv2_seroposfin+hsv1_seroposfin

save, replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT6B.smcl",replace

****************************************INFECTION BURDEN AND HOSPITAL-TREATED INFECTIONS*************************************************************************************
clear
use n_eid ts_* using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_FINAL.dta"
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN.dta",replace

clear

use n_eid s_130*_0_0 s_131*_0_0 s_132*_0_0  using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES.dta"
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCES.dta",replace

capture rename s_*_0_0 s_*







// Step 1: Identify variables with the specific prefix and suffix
ds s_*
local all_vars `r(varlist)'

// Step 2: Loop through variables to check the last digit
foreach var of local all_vars {
    // Extract the number part of the variable name
    // Assuming the variable names are like prefix_12345_suffix
    // Remove the prefix and suffix
    local number_part = substr("`var'", length("s_") + 1, length("`var'") - length("s_"))

    // Extract the last character of the number part
    local last_char = substr("`number_part'", -1, 1)

    // Check if the last character is an odd digit
    if inlist("`last_char'", "1", "3", "5", "7", "9") {
        // Keep the variable (or do nothing)
    }
    else {
        // Drop the variable if the last character is not an odd digit
        drop `var'
    }
}

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfin.dta",replace


capture rename  s_*  n_*_0_0


foreach x of varlist n_*_0_0 {
	replace `x'="20" if `x'=="Death register only"
	replace `x'="21" if `x'=="Death register and other source(s)"
	replace `x'="30" if `x'=="Primary care only"
	replace `x'="31" if `x'=="Primary care and other source(s)"
	replace `x'="40" if `x'=="Hospital admissions data only"
	replace `x'="41" if `x'=="Hospital admissions data and other source(s)"
	replace `x'="50" if `x'=="Self-report only"
	replace `x'="51" if `x'=="Self-report and other source(s)"
	}

sort n_eid 

foreach x of varlist n_* {
	
	destring `x', replace
}



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfin2.dta",replace

**************OLD CODING OF SOURCE OF INFECTION*********
**Coding	Meaning
**20	Death register only
**21	Death register and other source(s)
**30	Primary care only
**31	Primary care and other source(s)
**40	Hospital admissions data only
**41	Hospital admissions data and other source(s)
**50	Self-report only
**51	Self-report and other source(s)

**Select 40 and 41 for hospital treated infections**




*********TOTAL INFECTIOUS BURDEN**************

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN.dta",clear

sort n_eid
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfin2.dta"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfinalized.dta",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfinalized.dta",clear
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfinalized.dta",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",replace
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta",replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfinalized.dta",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL.dta"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfinalized.dta",replace


capture drop ts_13*yn 
foreach var1 of varlist ts_13*_0_0 {
	gen `var1'_yn=1 if `var1'~=. & `var1'< ts_53_0_0
    replace `var1'_yn=0 if `var1'_yn~=1
}


tab1 ts_13*yn 



capture drop ts_13*time 
foreach var2 of varlist ts_13*_0_0 {
	gen `var2'_time=`var2'-ts_53_0_0 if `var2'~=. & `var2'< ts_53_0_0
    replace `var2'_time=. if `var2'>= ts_53_0_0
}

**forval s1 = (0000 0002:0344) (0992 0994:1002) (1424 1426:1462) (1696 1698:1708) 1840 1842 2054 2070 2074 2098 2108 2110   {



**Hospital infections**



capture drop n_13_0_0sum
egen  n_13_0_0sum=rowtotal(ts_13*_0_0_yn) 


capture drop infectionburdenhosp
gen infectionburdenhosp=n_13_0_0sum




**capture drop n_13_0_0hosp
**egen n_13_0_0hosp=anycount(n_130001_0_0 n_130003_0_0 n_130005_0_0 n_130007_0_0 n_130009_0_0 n_130011_0_0 n_130013_0_0 n_130015_0_0 n_130017_0_0 n_130019_0_0 n_130021_0_0 n_130023_0_0 n_130025_0_0 n_130027_0_0 n_130029_0_0 n_130031_0_0 n_130035_0_0 n_130037_0_0 n_130039_0_0),values(40 41) 


capture drop n_13_0_0hosp1
egen n_13_0_0hosp1=anycount(n_130001_0_0 n_130003_0_0 n_130005_0_0 n_130007_0_0 n_130009_0_0 n_130011_0_0 n_130013_0_0 n_130015_0_0 n_130017_0_0 n_130019_0_0 n_130021_0_0 n_130023_0_0 n_130025_0_0 n_130027_0_0 n_130029_0_0 n_130031_0_0 n_130035_0_0 n_130037_0_0 n_130039_0_0 n_130041_0_0 n_130043_0_0 n_130045_0_0 n_130047_0_0 n_130049_0_0 n_130051_0_0 n_130053_0_0 n_130055_0_0 n_130059_0_0 n_130061_0_0 n_130063_0_0 n_130065_0_0 n_130067_0_0 n_130071_0_0 n_130073_0_0 n_130075_0_0 n_130077_0_0 n_130081_0_0 n_130083_0_0 n_130085_0_0 n_130087_0_0 n_130089_0_0 n_130091_0_0 n_130093_0_0 n_130095_0_0 n_130097_0_0 n_130101_0_0 n_130103_0_0 n_130105_0_0 n_130107_0_0 n_130109_0_0 n_130113_0_0 n_130115_0_0 n_130117_0_0 n_130119_0_0 n_130121_0_0 n_130123_0_0 n_130125_0_0 n_130127_0_0 n_130129_0_0 n_130133_0_0 n_130135_0_0 n_130137_0_0 n_130139_0_0 n_130141_0_0 n_130143_0_0 n_130145_0_0 n_130147_0_0 n_130149_0_0 n_130151_0_0 n_130153_0_0 n_130155_0_0 n_130157_0_0 n_130159_0_0 n_130161_0_0 n_130163_0_0 n_130165_0_0 n_130169_0_0 n_130171_0_0 n_130175_0_0 n_130177_0_0 n_130179_0_0 n_130181_0_0 n_130185_0_0 n_130187_0_0 n_130189_0_0 n_130191_0_0 n_130193_0_0 n_130195_0_0 n_130197_0_0 n_130199_0_0 n_130201_0_0 n_130203_0_0 n_130205_0_0 n_130207_0_0 n_130209_0_0 n_130211_0_0 n_130213_0_0 n_130215_0_0 n_130217_0_0 n_130219_0_0 n_130221_0_0 n_130223_0_0 n_130225_0_0 n_130227_0_0 n_130229_0_0 n_130231_0_0 n_130233_0_0 n_130235_0_0 n_130237_0_0 n_130241_0_0 n_130243_0_0 n_130245_0_0 n_130247_0_0 n_130249_0_0 n_130251_0_0 n_130253_0_0 n_130255_0_0 n_130257_0_0 n_130259_0_0 n_130261_0_0 n_130263_0_0 n_130265_0_0 n_130267_0_0 n_130271_0_0 n_130273_0_0 n_130275_0_0 n_130277_0_0 n_130281_0_0 n_130283_0_0 n_130285_0_0 n_130287_0_0 n_130289_0_0 n_130293_0_0 n_130297_0_0 n_130299_0_0 n_130301_0_0 n_130303_0_0 n_130305_0_0 n_130307_0_0 n_130309_0_0 n_130311_0_0 n_130313_0_0 n_130315_0_0 n_130317_0_0 n_130319_0_0 n_130321_0_0 n_130323_0_0 n_130325_0_0 n_130327_0_0 n_130329_0_0 n_130331_0_0 n_130335_0_0 n_130337_0_0 n_130339_0_0 n_130341_0_0 n_130343_0_0), values(40 41)

capture drop n_13_0_0hosp2
egen n_13_0_0hosp2=anycount(n_130993_0_0-n_131003_0_0 n_131427_0_0-n_131463_0_0 n_131699_0_0-n_131709_0_0 n_131841_0_0 n_131843_0_0  n_132055_0_0 n_132071_0_0 n_132075_0_0 n_132099_0_0 n_132111_0_0), values(40 41)



capture drop n_13_0_0hosp
gen n_13_0_0hosp=n_13_0_0hosp1+n_13_0_0hosp2

replace infectionburdenhosp=0 if n_13_0_0hosp==0


capture drop time_baseline
egen time_baseline=rmean(ts_13*time)

su time_baseline if time_baseline>-25550 & infectionburdenhosp~=0

histogram time_baseline if time_baseline>-25550 & infectionburdenhosp~=0

graph save "FIGURES4A.gph", replace


**Non-hospital infections**

capture drop n_13_0_0sum
egen  n_13_0_0sum=rowtotal(ts_13*_0_0_yn) 

capture drop infectionburdennonhosp
gen infectionburdennonhosp=n_13_0_0sum


capture drop n_13_0_0hosp1
egen n_13_0_0hosp1=anycount(n_130001_0_0 n_130003_0_0 n_130005_0_0 n_130007_0_0 n_130009_0_0 n_130011_0_0 n_130013_0_0 n_130015_0_0 n_130017_0_0 n_130019_0_0 n_130021_0_0 n_130023_0_0 n_130025_0_0 n_130027_0_0 n_130029_0_0 n_130031_0_0 n_130035_0_0 n_130037_0_0 n_130039_0_0 n_130041_0_0 n_130043_0_0 n_130045_0_0 n_130047_0_0 n_130049_0_0 n_130051_0_0 n_130053_0_0 n_130055_0_0 n_130059_0_0 n_130061_0_0 n_130063_0_0 n_130065_0_0 n_130067_0_0 n_130071_0_0 n_130073_0_0 n_130075_0_0 n_130077_0_0 n_130081_0_0 n_130083_0_0 n_130085_0_0 n_130087_0_0 n_130089_0_0 n_130091_0_0 n_130093_0_0 n_130095_0_0 n_130097_0_0 n_130101_0_0 n_130103_0_0 n_130105_0_0 n_130107_0_0 n_130109_0_0 n_130113_0_0 n_130115_0_0 n_130117_0_0 n_130119_0_0 n_130121_0_0 n_130123_0_0 n_130125_0_0 n_130127_0_0 n_130129_0_0 n_130133_0_0 n_130135_0_0 n_130137_0_0 n_130139_0_0 n_130141_0_0 n_130143_0_0 n_130145_0_0 n_130147_0_0 n_130149_0_0 n_130151_0_0 n_130153_0_0 n_130155_0_0 n_130157_0_0 n_130159_0_0 n_130161_0_0 n_130163_0_0 n_130165_0_0 n_130169_0_0 n_130171_0_0 n_130175_0_0 n_130177_0_0 n_130179_0_0 n_130181_0_0 n_130185_0_0 n_130187_0_0 n_130189_0_0 n_130191_0_0 n_130193_0_0 n_130195_0_0 n_130197_0_0 n_130199_0_0 n_130201_0_0 n_130203_0_0 n_130205_0_0 n_130207_0_0 n_130209_0_0 n_130211_0_0 n_130213_0_0 n_130215_0_0 n_130217_0_0 n_130219_0_0 n_130221_0_0 n_130223_0_0 n_130225_0_0 n_130227_0_0 n_130229_0_0 n_130231_0_0 n_130233_0_0 n_130235_0_0 n_130237_0_0 n_130241_0_0 n_130243_0_0 n_130245_0_0 n_130247_0_0 n_130249_0_0 n_130251_0_0 n_130253_0_0 n_130255_0_0 n_130257_0_0 n_130259_0_0 n_130261_0_0 n_130263_0_0 n_130265_0_0 n_130267_0_0 n_130271_0_0 n_130273_0_0 n_130275_0_0 n_130277_0_0 n_130281_0_0 n_130283_0_0 n_130285_0_0 n_130287_0_0 n_130289_0_0 n_130293_0_0 n_130297_0_0 n_130299_0_0 n_130301_0_0 n_130303_0_0 n_130305_0_0 n_130307_0_0 n_130309_0_0 n_130311_0_0 n_130313_0_0 n_130315_0_0 n_130317_0_0 n_130319_0_0 n_130321_0_0 n_130323_0_0 n_130325_0_0 n_130327_0_0 n_130329_0_0 n_130331_0_0 n_130335_0_0 n_130337_0_0 n_130339_0_0 n_130341_0_0 n_130343_0_0), values(40 41)

capture drop n_13_0_0hosp2
egen n_13_0_0hosp2=anycount(n_130993_0_0-n_131003_0_0 n_131427_0_0-n_131463_0_0 n_131699_0_0-n_131709_0_0 n_131841_0_0 n_131843_0_0  n_132055_0_0 n_132071_0_0 n_132075_0_0 n_132099_0_0 n_132111_0_0), values(40 41)



capture drop n_13_0_0hosp
gen n_13_0_0hosp=n_13_0_0hosp1+n_13_0_0hosp2


replace infectionburdennonhosp=0 if n_13_0_0hosp~=0


su time_baseline if time_baseline>-25550 & infectionburdennonhosp~=0

histogram time_baseline if time_baseline>-25550 & infectionburdennonhosp~=0

graph save "FIGURES4B.gph", replace



**All infections**

capture drop n_13_0_0sum
egen  n_13_0_0sum=rowtotal(ts_13*_0_0_yn) 

capture drop infectionburden
gen infectionburden=n_13_0_0sum


su time_baseline if time_baseline>-25550 & infectionburden~=0

histogram time_baseline if time_baseline>-25550 & infectionburden~=0

graph save "FIGURES4C.gph", replace


graph combine "FIGURES4A.gph" "FIGURES4B.gph" "FIGURES4C.gph"
graph save "FIGURES4.gph", replace

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\INFECTION_BURDEN_SOURCESfinalized.dta",replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT6C.smcl",replace

******************************************PERIODONTAL DISEASE*****************************************************************************************************************


************DENTAL PROBLEMS DIAGNOSES************************

**131556	Date K02 first reported (dental caries)	Digestive system disorders  
**131557	Source of report of K02 (dental caries)	Digestive system disorders  


**131560	Date K04 first reported (diseases of pulp and periapical tissues)	Digestive system disorders  
**131561	Source of report of K04 (diseases of pulp and periapical tissues)	Digestive system disorders  

**131562	Date K05 first reported (gingivitis and periodontal diseases)	Digestive system disorders  
**131563	Source of report of K05 (gingivitis and periodontal diseases)	Digestive system disorders  

**capture drop tsd_131556_0_0
*gen double tsd_131556_0_0 = date(s_131556_0_0,"DMY")
**format tsd_131556_0_0 %td
**capture drop s_131556_0_0
**label variable tsd_131556_0_0 "Date K02 first reported (dental caries)"

**capture drop tsd_131560_0_0
**gen double tsd_131560_0_0 = date(s_131560_0_0,"DMY")
**format tsd_131560_0_0 %td
**capture drop s_131560_0_0
**label variable tsd_131560_0_0 "Date K04 first reported (diseases of pulp and periapical tissues)"


**capture drop tsd_131562_0_0
**gen double tsd_131562_0_0 = date(s_131562_0_0,"DMY")
**format tsd_131562_0_0 %td
**capture drop s_131562_0_0
**label variable tsd_131562_0_0 "Date K05 first reported (gingivitis and periodontal diseases)"



use n_eid s_6149_0_* using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKBfin"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ORALHEALTH_UKB", replace
sort n_eid
capture drop _merge
save, replace


use n_eid tsd* using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_FINAL"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PERIODONTAL_UKB", replace
sort n_eid
capture drop _merge
save, replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL",replace
sort n_eid
capture drop _merge
save, replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ORALHEALTH_UKB",clear
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\DATES_SMALL"
sort n_eid
capture drop _merge
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PERIODONTAL_UKB"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ORALHEALTH_UKBfin", replace


************SEVERE DENTAL PROBLEMS DIAGNOSES************************

**131562	Date K05 first reported (gingivitis and periodontal diseases)	Digestive system disorders  
**131563	Source of report of K05 (gingivitis and periodontal diseases)	Digestive system disorders  


format tsd_131562_0_0 %td
capture drop s_131562_0_0
label variable tsd_131562_0_0 "Date K05 first reported (gingivitis and periodontal diseases)"



capture drop tsd_13*yn 
foreach var1 of varlist tsd_13*_0_0 {
	gen `var1'_yn=1 if `var1'~=. & `var1'< ts_53_0_0
    replace `var1'_yn=0 if `var1'_yn~=1
}


tab1 tsd_13*yn 



capture drop tsd_13*time 
foreach var2 of varlist tsd_13*_0_0 {
	gen `var2'_time=`var2'-ts_53_0_0 if `var2'~=. & `var2'< ts_53_0_0
    replace `var2'_time=. if `var2'>= ts_53_0_0
}


capture drop nd_13_0_0sum
egen  nd_13_0_0sum=rowtotal(tsd_13*_0_0_yn) 

capture drop dentaldiseases
gen dentaldiseases=nd_13_0_0sum

capture drop time_baseline_d
egen time_baseline_d=rmean(tsd_13*time)

su time_baseline_d if time_baseline_d>-25550 & dentaldiseases~=0

histogram time_baseline_d if time_baseline_d>-25550 & dentaldiseases~=0

graph save "FIGURES5.gph", replace




**************ORAL HEALTH PROBLEMS***************

tab s_6149_0_0

**H7C Do you have any of the following?
**(You can select more than one answer)
**TOGGLE of 8 choices
**1 : Mouth ulcers
**2 : Painful gums
**3 : Bleeding gums
**4 : Loose teeth
**5 : Toothache
**6 : Dentures
**-7 : None of the above
**-3 : Prefer not to answer
**Require ≥1 
**choices
**-7 : is exclusive
**-3 : is exclusive
**Goto H8 Answer this question thinking about the 
**past year.
**                               6149-0.0 |      Freq.     Percent        Cum.
**----------------------------------------+-----------------------------------
**                          Bleeding gums |     39,991        8.04        8.04
**                 Bleeding gums|Dentures |      3,696        0.74        8.78
**              Bleeding gums|Loose teeth |      3,159        0.64        9.42
**     Bleeding gums|Loose teeth|Dentures |      1,131        0.23        9.64
**    Bleeding gums|Loose teeth|Toothache |        457        0.09        9.74
**Bleeding gums|Loose teeth|Toothache|D.. |        120        0.02        9.76
**                Bleeding gums|Toothache |      2,364        0.48       10.24
**       Bleeding gums|Toothache|Dentures |        205        0.04       10.28
**                               Dentures |     63,417       12.75       23.02
**                            Loose teeth |      7,523        1.51       24.54
**                   Loose teeth|Dentures |      3,595        0.72       25.26
**                  Loose teeth|Toothache |        719        0.14       25.40
**         Loose teeth|Toothache|Dentures |        220        0.04       25.45
**                           Mouth ulcers |     26,773        5.38       30.83
**             Mouth ulcers|Bleeding gums |      7,097        1.43       32.26
**    Mouth ulcers|Bleeding gums|Dentures |        558        0.11       32.37
** Mouth ulcers|Bleeding gums|Loose teeth |        380        0.08       32.45
**Mouth ulcers|Bleeding gums|Loose teet.. |        139        0.03       32.47
**Mouth ulcers|Bleeding gums|Loose teet.. |        158        0.03       32.50
**Mouth ulcers|Bleeding gums|Loose teet.. |         48        0.01       32.51
**   Mouth ulcers|Bleeding gums|Toothache |      1,099        0.22       32.74
**Mouth ulcers|Bleeding gums|Toothache|.. |         87        0.02       32.75
**                  Mouth ulcers|Dentures |      5,019        1.01       33.76
**               Mouth ulcers|Loose teeth |        582        0.12       33.88
**      Mouth ulcers|Loose teeth|Dentures |        273        0.05       33.93
**     Mouth ulcers|Loose teeth|Toothache |        164        0.03       33.97
**Mouth ulcers|Loose teeth|Toothache|De.. |         74        0.01       33.98
**              Mouth ulcers|Painful gums |      1,336        0.27       34.25
**Mouth ulcers|Painful gums|Bleeding gums |      1,011        0.20       34.45
**Mouth ulcers|Painful gums|Bleeding gu.. |        135        0.03       34.48
**Mouth ulcers|Painful gums|Bleeding gu.. |        176        0.04       34.52
**Mouth ulcers|Painful gums|Bleeding gu.. |         96        0.02       34.54
**Mouth ulcers|Painful gums|Bleeding gu.. |        283        0.06       34.59
**Mouth ulcers|Painful gums|Bleeding gu.. |        147        0.03       34.62
**Mouth ulcers|Painful gums|Bleeding gu.. |        452        0.09       34.71
**Mouth ulcers|Painful gums|Bleeding gu.. |         49        0.01       34.72
**     Mouth ulcers|Painful gums|Dentures |        511        0.10       34.82
**  Mouth ulcers|Painful gums|Loose teeth |        102        0.02       34.85
**Mouth ulcers|Painful gums|Loose teeth.. |         51        0.01       34.86
**Mouth ulcers|Painful gums|Loose teeth.. |         51        0.01       34.87
**Mouth ulcers|Painful gums|Loose teeth.. |         41        0.01       34.87
**    Mouth ulcers|Painful gums|Toothache |        338        0.07       34.94
**Mouth ulcers|Painful gums|Toothache|D.. |         69        0.01       34.96
**                 Mouth ulcers|Toothache |      2,612        0.53       35.48
**        Mouth ulcers|Toothache|Dentures |        290        0.06       35.54
**                      None of the above |    298,184       59.94       95.48
**                           Painful gums |      4,108        0.83       96.31
**             Painful gums|Bleeding gums |      1,647        0.33       96.64
**    Painful gums|Bleeding gums|Dentures |        230        0.05       96.68
** Painful gums|Bleeding gums|Loose teeth |        445        0.09       96.77
**Painful gums|Bleeding gums|Loose teet.. |        178        0.04       96.81
**Painful gums|Bleeding gums|Loose teet.. |        228        0.05       96.85
**Painful gums|Bleeding gums|Loose teet.. |        105        0.02       96.87
**   Painful gums|Bleeding gums|Toothache |        383        0.08       96.95
**Painful gums|Bleeding gums|Toothache|.. |         54        0.01       96.96
**                  Painful gums|Dentures |      1,165        0.23       97.20
**               Painful gums|Loose teeth |        529        0.11       97.30
**      Painful gums|Loose teeth|Dentures |        268        0.05       97.36
**     Painful gums|Loose teeth|Toothache |        164        0.03       97.39
**Painful gums|Loose teeth|Toothache|De.. |         75        0.02       97.40
**                 Painful gums|Toothache |        700        0.14       97.55
**        Painful gums|Toothache|Dentures |         89        0.02       97.56
**                   Prefer not to answer |      1,779        0.36       97.92
**                              Toothache |      9,315        1.87       99.79
**                     Toothache|Dentures |      1,027        0.21      100.00
**----------------------------------------+-----------------------------------
**                                  Total |    497,471      100.00


capture drop n_6149_0_0
encode s_6149_0_0, gen(n_6149_0_0)

labelbook n_6149_0_0

          

**Bleeding gums**
capture drop n_6149_0_0_bg
gen n_6149_0_0_bg=.
replace n_6149_0_0_bg=1  if n_6149_0_0>=1 & n_6149_0_0<=8
replace n_6149_0_0_bg=1  if n_6149_0_0>=15 & n_6149_0_0<=22  
replace n_6149_0_0_bg=1  if n_6149_0_0>=29 & n_6149_0_0<=36
replace n_6149_0_0_bg=1  if n_6149_0_0>=48 & n_6149_0_0<=55
replace n_6149_0_0_bg=0 if n_6149_0_0_bg~=1 & n_6149_0_0~=. & n_6149_0_0~=63 

tab n_6149_0_0_bg

**Dentures**
capture drop n_6149_0_0_dt
gen n_6149_0_0_dt=.
replace n_6149_0_0_dt=1  if inlist(n_6149_0_0, 2, 9, 11, 16, 18, 23, 25, 27, 30, 32, 36, 37, 39, 41, 45, 49, 51, 53, 55, 56, 58, 60, 62)
replace n_6149_0_0_dt=0 if n_6149_0_0_dt~=1 & n_6149_0_0~=. & n_6149_0_0~=63 

tab n_6149_0_0_dt

**Loose teeth**
capture drop n_6149_0_0_lt
gen n_6149_0_0_lt=.
replace n_6149_0_0_lt=1  if inlist(n_6149_0_0, 2, 9, 11, 16, 18, 23, 25, 27, 30, 32, 36, 37, 39, 41, 45, 49, 51, 53, 55, 56, 58, 60, 62)
replace n_6149_0_0_lt=0 if n_6149_0_0_lt~=1 & n_6149_0_0~=. & n_6149_0_0~=63 

tab n_6149_0_0_lt

**Toothache**

capture drop n_6149_0_0_ta
gen n_6149_0_0_ta=.
replace n_6149_0_0_ta=1  if inlist(n_6149_0_0, 5, 6, 7, 8, 12, 13, 21, 22, 26, 27, 33, 34, 35, 36, 40, 41, 42, 43, 44, 45, 52, 53, 54, 55, 59, 60, 61, 62, 64, 65)
replace n_6149_0_0_ta=0 if n_6149_0_0_ta~=1 & n_6149_0_0~=. & n_6149_0_0~=63 

tab n_6149_0_0_ta

**Mouth ulcers**
capture drop n_6149_0_0_mu
gen n_6149_0_0_mu=.
replace n_6149_0_0_mu=1  if n_6149_0_0>=14 & n_6149_0_0<=45
replace n_6149_0_0_mu=0 if n_6149_0_0_mu~=1 & n_6149_0_0~=. & n_6149_0_0~=63 

tab n_6149_0_0_mu

**Painful gums**
capture drop n_6149_0_0_pg
gen n_6149_0_0_pg=.
replace n_6149_0_0_pg=1  if n_6149_0_0>=47 & n_6149_0_0<=62
replace n_6149_0_0_pg=0 if n_6149_0_0_pg~=1 & n_6149_0_0~=. & n_6149_0_0~=63 

tab n_6149_0_0_pg



**  Definition
**           1   Bleeding gums
**           2   Bleeding gums|Dentures
**           3   Bleeding gums|Loose teeth
**           4   Bleeding gums|Loose teeth|Dentures
**           5   Bleeding gums|Loose teeth|Toothache
**           6   Bleeding gums|Loose teeth|Toothache|Dentures
**           7   Bleeding gums|Toothache
**           8   Bleeding gums|Toothache|Dentures
**           9   Dentures
**          10   Loose teeth
**          11   Loose teeth|Dentures
**          12   Loose teeth|Toothache
**          13   Loose teeth|Toothache|Dentures
**          14   Mouth ulcers
**          15   Mouth ulcers|Bleeding gums
**          16   Mouth ulcers|Bleeding gums|Dentures
**          17   Mouth ulcers|Bleeding gums|Loose teeth
**          18   Mouth ulcers|Bleeding gums|Loose teeth|Dentures
**          19   Mouth ulcers|Bleeding gums|Loose teeth|Toothache
**          20   Mouth ulcers|Bleeding gums|Loose teeth|Toothache|Dentures
**          21   Mouth ulcers|Bleeding gums|Toothache
**          22   Mouth ulcers|Bleeding gums|Toothache|Dentures
**          23   Mouth ulcers|Dentures
**          24   Mouth ulcers|Loose teeth
**          25   Mouth ulcers|Loose teeth|Dentures
**          26   Mouth ulcers|Loose teeth|Toothache
**          27   Mouth ulcers|Loose teeth|Toothache|Dentures
**          28   Mouth ulcers|Painful gums
**          29   Mouth ulcers|Painful gums|Bleeding gums
**          30   Mouth ulcers|Painful gums|Bleeding gums|Dentures
**          31   Mouth ulcers|Painful gums|Bleeding gums|Loose teeth
**          32   Mouth ulcers|Painful gums|Bleeding gums|Loose teeth|Dentures
**          33   Mouth ulcers|Painful gums|Bleeding gums|Loose teeth|Toothache
**          34   Mouth ulcers|Painful gums|Bleeding gums|Loose teeth|Toothache|Dentures
**          35   Mouth ulcers|Painful gums|Bleeding gums|Toothache
**          36   Mouth ulcers|Painful gums|Bleeding gums|Toothache|Dentures
**          37   Mouth ulcers|Painful gums|Dentures
**          38   Mouth ulcers|Painful gums|Loose teeth
**          39   Mouth ulcers|Painful gums|Loose teeth|Dentures
**          40   Mouth ulcers|Painful gums|Loose teeth|Toothache
**          41   Mouth ulcers|Painful gums|Loose teeth|Toothache|Dentures
**          42   Mouth ulcers|Painful gums|Toothache
**          43   Mouth ulcers|Painful gums|Toothache|Dentures
**          44   Mouth ulcers|Toothache
**          45   Mouth ulcers|Toothache|Dentures
**          46   None of the above
**          47   Painful gums
**          48   Painful gums|Bleeding gums
**          49   Painful gums|Bleeding gums|Dentures
**          50   Painful gums|Bleeding gums|Loose teeth
**          51   Painful gums|Bleeding gums|Loose teeth|Dentures
**          52   Painful gums|Bleeding gums|Loose teeth|Toothache
**          53   Painful gums|Bleeding gums|Loose teeth|Toothache|Dentures
**          54   Painful gums|Bleeding gums|Toothache
**          55   Painful gums|Bleeding gums|Toothache|Dentures
**          56   Painful gums|Dentures
**          57   Painful gums|Loose teeth
**          58   Painful gums|Loose teeth|Dentures
**          59   Painful gums|Loose teeth|Toothache
**          60   Painful gums|Loose teeth|Toothache|Dentures
**          61   Painful gums|Toothache
**          62   Painful gums|Toothache|Dentures
**          63   Prefer not to answer
**          64   Toothache
**          65   Toothache|Dentures


**bg dt lt ta mu pg

capture drop oralhealthprob
gen oralhealthprob=n_6149_0_0_bg+n_6149_0_0_dt+n_6149_0_0_lt+n_6149_0_0_ta+n_6149_0_0_mu+n_6149_0_0_pg

su oralhealthprob



**OLD CODE**
**egen oralhealthprob=anycount(n_6149_0_*),values(1,2,3,4,5,6)
**replace oralhealthprob=999 if n_6149_0_1==-3 | n_6149_0_1==-7 | n_6149_0_2==-3 | n_6149_0_2==-7 | n_6149_0_3==-3 | n_6149_0_3==-7 | n_6149_0_4==-3 | n_6149_0_4==-7  | n_6149_0_5==-3 | **n_6149_0_5==-7 
**replace oralhealthprob=0 if oralhealthprob==. 
**replace oralhealthprob=. if oralhealthprob==999

save, replace

capture drop poororalhealth_prob
gen poororalhealth_prob=.
replace poororalhealth_prob=1 if oralhealthprob>=1 & oralhealthprob~=.
replace poororalhealth_prob=0 if poororalhealth_prob~=1 & oralhealthprob~=.

capture drop poororalhealth_dis
gen poororalhealth_dis=.
replace poororalhealth_dis=1 if dentaldiseases>=1 & dentaldiseases!=.
replace poororalhealth_dis=0 if poororalhealth_dis~=1 & dentaldiseases!=.

tab1 poororalhealth_prob poororalhealth_dis

******************Poor oral health from both sources***********************

capture drop poororalhealth
gen poororalhealth=.
replace poororalhealth=1 if oralhealthprob==1 | poororalhealth_dis==1
replace poororalhealth=0 if poororalhealth~=1 & oralhealthprob~=. & poororalhealth_dis~=.

tab poororalhealth

*****************Severe reported poor oral health*******************************
capture drop poororalhealth_probsev
gen poororalhealth_probsev=n_6149_0_0_lt+n_6149_0_0_dt

tab poororalhealth_probsev


********************Severe oral health from both sources*****************************
capture drop poororalhealth_sev
gen poororalhealth_sev=.
replace poororalhealth_sev=1 if poororalhealth_probsev>=1 | poororalhealth_dis==1
replace poororalhealth_sev=0 if poororalhealth_sev~=1


tab poororalhealth_sev

************************Pd as defined by 3 conditions********************************

capture drop poororalhealth_probsev2
gen poororalhealth_probsev2=n_6149_0_0_pg+n_6149_0_0_bg+n_6149_0_0_lt

tab poororalhealth_probsev2




save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\ORALHEALTH_UKB", replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT7A.smcl",replace
**************************************PROTEOMICS:*****************************************************************************************************************************

**FIRST VERSION**

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0",clear
capture rename eid n_eid
capture drop _merge
sort n_eid
save, replace




**SECOND VERSION**

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\OLINK_INSTANCE_ZERO",clear
capture rename eid n_eid
capture drop _merge
sort n_eid
save, replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT7B.smcl",replace

**************************************METABOLOMICS****************************************************************************************************************************

**For the main analysis, we removed metabolite outliers
**defined as values beyond four IQRs from the median. We
**then adjusted natural-log transformed metabolite levels
**for the NMR spectrometer  (Field 23,650) by fitting a linear regression model and scaled the residuals for downstream analysis**
**Source: Qiang et al. Alzheimer's Research & Therapy (2024) 16:16, https://doi.org/10.1186/s13195-023-01379-3



use n_eid n_234*_0_0 n_235*_0_0 n_236*_0_0 s_237*_0_0 s_238*_0_0 s_239*_0_0 using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKB"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB", replace
sort n_eid
capture drop _merge
save, replace 

su n_234*_0_0 n_235*_0_0 n_236*_0_0

tab1 s_237*_0_0 s_238*_0_0 s_239*_0_0


// Define the variables you want to process
local vars n_234*_0_0 n_235*_0_0 n_236*_0_0  // Replace with your actual variable names

foreach var of varlist `vars' {
    // Calculate IQR
    quietly summarize `var', detail
    local p25 = r(p25)
    local p75 = r(p75)
    local iqr = `p75' - `p25'

    // Define the upper and lower bounds for outliers
    local lower_bound = `p25' - 4 * `iqr'
    local upper_bound = `p75' + 4 * `iqr'

    // Generate a new variable excluding outliers
    gen `var'_no_outliers = `var'
    replace `var'_no_outliers = . if `var' < `lower_bound' | `var' > `upper_bound'
}

capture drop ln_n_234*_0_0_no_outliers ln_n_235*_0_0_no_outliers ln_n_236*_0_0_no_outliers
foreach var of varlist n_234*_0_0_no_outliers n_235*_0_0_no_outliers n_236*_0_0_no_outliers {
gen ln_`var'=sqrt(`var')	
	
}

foreach x of varlist ln_n_234*_0_0_no_outliers ln_n_235*_0_0_no_outliers ln_n_236*_0_0_no_outliers {
	
	histogram `x'
}
 
pca ln_n_23400_0_0_no_outliers-ln_n_23648_0_0_no_outliers, factors(15)
scree

rotate
loadingplot, factors(15) 

capture drop METAB*
predict METAB*

capture drop ln_n_23649*
 
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB.dta", replace




keep n_eid ln_* METAB*


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL.dta",replace



use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL.dta",clear
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL.dta",replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABYN.dta",clear
sort n_eid
capture drop _merge
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABYN.dta",replace
 
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL.dta",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABYN.dta"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL_final.dta",replace

tab _merge
capture drop _merge
keep if METABYN==1

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL_final.dta",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_UKB_SMALL_final.dta",clear

export delimited using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA\METABOLOMICS_UNIMPUTED_CSV.csv", replace

****************RUN RSTUDIO ON THE RAP *****************

system("dx download METABOLOMICS_UNIMPUTED_CSV.csv")


# Load the CSV file
df <- read.csv("METABOLOMICS_UNIMPUTED_CSV.csv")

# Remove the ID column and save it separately
id_column <- df$n_eid
df$n_eid <- NULL


# Install and load Hmisc for simple imputation
install.packages("Hmisc")
library(Hmisc)

# Impute missing values (mean for numeric, mode for categorical)
df_imputed <- impute(df, fun = mean)  # For mean imputation on numeric variables


# Install and load the mice package for more advanced imputation
install.packages("mice")
library(mice)

# Perform multiple imputation
imputed_data <- mice(df, m=1, method='mean', maxit=5)

# Complete the dataset with the imputed values
df_imputed <- complete(imputed_data)


# Reinsert the ID column
df_imputed$n_eid <- id_column


# Save the imputed dataframe to a CSV file
write.csv(df_imputed, "imputed_file.csv", row.names = FALSE)


system("dx upload imputed_file.csv")
system("dx upload RScript.R")


****************RENAME imputed_file.csv to METABOLOMICS_IMPUTED_CSV.csv and then change to .dta, name METABOLOMICS_IMPUTED_DTA.dta*********************

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_IMPUTED_DTA.dta",clear

su 


replace ln_n_23561_0_0_no_outliers="" if ln_n_23561_0_0_no_outliers=="NA"
destring ln_n_23561_0_0_no_outliers,replace
su ln_n_23561_0_0_no_outliers
replace ln_n_23561_0_0_no_outliers=.5220276 if  ln_n_23561_0_0_no_outliers==.

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_IMPUTED_FINAL.dta"


***************************************


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT8.smcl",replace

********************************RESIDENTIAL AIR POLLUTION DATA**************************************

clear
use n_eid n_24016_0_0 n_24017_0_0 n_24018_0_0 n_24003_0_0 n_24004_0_0 n_24019_0_0 n_24005_0_0 n_24007_0_0 n_24006_0_0 n_24008_0_0   using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\SMALLERDATASETUKB"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION",clear
 


**AIR POLLUTION REFERENCE: https://pubmed.ncbi.nlm.nih.gov/35149105/
**We used annual averages of air pollution (PM2.5, PM10, PM2.5-10, PM2.5absorbance, NO2, NOX) for 2010 scaled to interquartile ranges (IQR)**
**UKB showcase: https://biobank.ndph.ox.ac.uk/showcase/search.cgi?wot=0&srch=air+pollution&yfirst=2000&ylast=2024
**List of fields:

**Field ID	Description	Category
**24016	Nitrogen dioxide air pollution; 2005	Residential air pollution  
**24017	Nitrogen dioxide air pollution; 2006	Residential air pollution  
**24018	Nitrogen dioxide air pollution; 2007	Residential air pollution  
**24003	Nitrogen dioxide air pollution; 2010	Residential air pollution  
**24004	Nitrogen oxides air pollution; 2010	Residential air pollution  
**24019	Particulate matter air pollution (pm10); 2007	Residential air pollution  
**24005	Particulate matter air pollution (pm10); 2010	Residential air pollution  
**24007	Particulate matter air pollution (pm2.5) absorbance; 2010	Residential air pollution  
**24006	Particulate matter air pollution (pm2.5); 2010	Residential air pollution  
**24008	Particulate matter air pollution 2.5-10um; 2010	Residential air pollution  
**24025	Included in pollution study	Local environment  


**24006	Particulate matter air pollution (pm2.5); 2010	Residential air pollution  
capture drop PM2point5_2010
gen PM2point5_2010=n_24006_0_0
label var PM2point5_2010 "Particulate matter air pollution (pm2.5); 2010	Residential air pollution"
describe PM2point5_2010
su PM2point5_2010
histogram PM2point5_2010

**24005	Particulate matter air pollution (pm10); 2010	Residential air pollution  

capture drop PM10_2010
gen PM10_2010=n_24005_0_0
label var PM10_2010 "Particulate matter air pollution (pm10); 2010	Residential air pollution"
describe PM10_2010
su PM10_2010
histogram PM10_2010

**24008	Particulate matter air pollution 2.5-10um; 2010	Residential air pollution 

capture drop PM2point5_10_2010
gen PM2point5_10_2010=n_24008_0_0
label var PM2point5_10_2010 "Particulate matter air pollution 2.5-10um; 2010	Residential air pollution"
describe PM2point5_10_2010
su PM2point5_10_2010
histogram PM2point5_10_2010

**24007	Particulate matter air pollution (pm2.5) absorbance; 2010	Residential air pollution  
capture drop PM2point5_abs_2010
gen PM2point5_abs_2010=n_24007_0_0
label var PM2point5_abs_2010 "Particulate matter air pollution (pm2.5) absorbance; 2010	Residential air pollution"
describe PM2point5_abs_2010
su PM2point5_abs_2010
histogram PM2point5_abs_2010

**24003	Nitrogen dioxide air pollution; 2010	Residential air pollution  
capture drop NO2_2010
gen NO2_2010=n_24003_0_0
label var NO2_2010 "Nitrogen dioxide air pollution; 2010	Residential air pollution"
describe NO2_2010
su NO2_2010
histogram NO2_2010

**24004	Nitrogen oxides air pollution; 2010	Residential air pollution  

capture drop NOX_2010
gen NOX_2010=n_24004_0_0
label var NOX_2010 "Nitrogen oxides air pollution; 2010	Residential air pollution"
describe NOX_2010
su NOX_2010
histogram NOX_2010

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION",replace


corr NO* PM*

capture drop ln*
foreach x of varlist NO* PM* {
	gen ln`x'=ln(`x')
	
}
 
capture drop sqrt*
foreach x of varlist NO* PM* {
	gen sqrt`x'=sqrt(`x')
	
}

 
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION",replace


corr ln*
corr sqrt*


foreach x of varlist ln*{
	histogram `x'
}


foreach x of varlist sqrt*{
	histogram `x'
}


pca ln*
rotate

pca ln* , factor(2)
scree
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PCA_AIRPOLLUTION_SCREE.gph",replace
rotate
loadingplot
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PCA_AIRPOLLUTION_LOADING.gph",replace
capture drop AIRPOLLUTION*
predict AIRPOLLUTION*
su AIRPOLLUTION*

histogram AIRPOLLUTION1
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PCA_AIRPOLLUTION1_HIST.gph",replace

histogram AIRPOLLUTION2
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\PCA_AIRPOLLUTION2_HIST.gph",replace


corr AIRPOLLUTION1 AIRPOLLUTION2


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION",replace



***********************************************


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT9.smcl",replace

****************************************MERGE WITH THESE DATASETS AS NEEDED***************************************************************************************************

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION.dta",clear
capture drop _merge
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION.dta",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0.dta",clear
capture drop _merge
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0.dta",replace
keep n_eid nefl gfap
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0_GFAPNFL.dta",replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0.dta",clear
capture drop _merge
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0.dta",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_IMPUTED_FINAL.dta", clear
capture drop _merge
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_IMPUTED_FINAL.dta",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION.dta", clear
capture drop _merge
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION.dta",replace


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION.dta",clear
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\proteomic_olink_instance0_GFAPNFL.dta"
capture drop _merge
sort n_eid
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOMICS_IMPUTED_FINAL.dta"
capture drop _merge
sort n_eid 
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\AIRPOLLUTION.dta"
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta", replace



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\OUTPUT\DATA_MANAGEMENT9.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",clear

*****************************PCA FOR METABOLOME***************

pca ln_* 
scree
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOME_PCA_SCREE.gph",replace


pca ln_* ,factor(15)
rotate
loadingplot
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\METABOLOME_PCA_LP.gph",replace
predict METAB*
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta", replace  

capture log close

******************************@@@@RE-RUN FROM HERE@: Use new withdrawal file@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
**********************************************PART SPECIFIC TO PAPER 11*************************************************************************************
capture log close
log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\DATA_MANAGEMENT10.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER10_STATAFIX_RSTUDIO_TRANSLATION\DATA\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta", clear  
capture drop _merge
sort n_eid


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta", replace  

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\withdrawals_final.dta", clear
sort n_eid
save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\withdrawals_final.dta",replace



use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta", clear
capture drop withdrew
merge n_eid using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\withdrawals_final.dta"

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",replace

tab withdrew 
  


//STEP 16: DETERMINE FINAL ANALYTIC SAMPLE SIZE/////
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",clear



**Sample 1, excluding withdrawals**

capture drop sample1
gen sample1=.
replace sample1=1 if baselineage~=. & withdrew==.
replace sample1=0 if sample1~=1

tab sample1

**Sample 2: >=50 y**

capture drop sample2
gen sample2=.
replace sample2=1 if baselineage>=50 & baselineage~=. & sample1==1
replace sample2=0 if sample2~=1 & sample1==1

tab sample2

**Sample 3: exclude those with missing exposures and covariates**

capture drop sample3
gen sample3=.
replace sample3=1 if baselineage>=50 & baselineage~=. & LE8_TOTALSCORE~=. & townsend~=. & householdsize~=. & SES~=. & ethnicity2~=.  & comorbid~=. & srhbr~=. & gfap~=. & nefl~=. & AIRPOLLUTION1~=. & AIRPOLLUTION2~=. &  sample2==1
replace sample3=0 if sample3~=1 & sample2==1

tab sample3



**Sample 4: final sample: exclude prevalent dementia cases and incident dementia cases within a year**

stset Age_dementia, failure(dem_diag==1) enter(baselineage) id(n_eid) scale(1)


capture drop sample4
gen sample4=.
replace sample4=1 if (sample3==1 & _t_dementia~=.) | (sample3==1 & time01_1Ayearsdem>1 & time01_1Ayearsdem~=. & dem_diag==1 & _t_dementia~=.) 
replace sample4=0 if sample4~=1 & sample3==1


tab sample4

**Sample 5: final sample: exclude prevalent PD cases and incident PD cases within a year**

stset Age_PD, failure(PD_diag==1) enter(baselineage) id(n_eid) scale(1)


capture drop sample5
gen sample5=.
replace sample5=1 if (sample4==1 & _t_PD~=.) | (sample4==1 & time01_1AyearsPD>1 & time01_1AyearsPD~=. & PD_diag==1 & _t_PD~=.) 
replace sample5=0 if sample5~=1 & sample4==1


tab sample5



*************************************

capture drop sample_final
gen sample_final=.
replace sample_final=1 if sample4==1 & sample5==1
replace sample_final=0 if sample_final~=1

tab sample_final

stset Age_dementia if sample_final==1, failure(dem_diag==1) enter(baselineage) id(n_eid) scale(1)
stdescribe if sample_final==1

stset Age_PD if sample_final==1, failure(PD_diag==1) enter(baselineage) id(n_eid) scale(1)
stdescribe if sample_final==1

stset Age_death if sample_final==1, failure(died==1) enter(baselineage) id(n_eid) scale(1)
stdescribe if sample_final==1


save, replace


***********************Exclude those without metabolomics data************************

su ln*

capture drop sample_metab
gen sample_metab=1 if ln_n_23648_0_0_no_outlier~=.
replace sample_metab=0 if sample_metab~=1

tab sample_metab

capture drop sample_final2
gen sample_final2=1 if sample_final==1 & sample_metab==1
replace sample_final2=0 if sample_final2~=1

tab sample_final2


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",replace


//STEP 17: stset for dementia and PD incidence and estimate median age and percentiles, plus incidence rates across sex and racial groups//

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",clear

save, replace


**************RACE_ETHN****************************
capture drop RACE_ETHN
gen RACE_ETHN=ethnicity2

save, replace





*************stsum code******************************



**DEMENTIA INCIDENCE**

stset Age_dementia, failure(dem_diag==1) enter(baselineage) id(n_eid) scale(1)


stsum if sample_final==1
stsum if sample_final==1  & RACE_ETHN==0
stsum if sample_final==1  & RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3
stsum if sample_final==1 & sex==1
stsum if sample_final==1 & sex==2

stptime if sample_final==1
stptime if sample_final==1  & RACE_ETHN==0
stptime if sample_final==1  & RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3

stptime if sample_final==1 & sex==1
stptime if sample_final==1 & sex==2

capture drop NoneWhite
gen NoneWhite=.
replace NoneWhite=1 if RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3
replace NoneWhite=0 if RACE_ETHN==0



save, replace

**PARKINSON'S DISEASE**

stset Age_PD, failure(PD_diag==1) enter(baselineage) id(n_eid) scale(1)


stsum if sample_final==1
stsum if sample_final==1  & RACE_ETHN==0
stsum if sample_final==1  & RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3
stsum if sample_final==1 & sex==1
stsum if sample_final==1 & sex==2

stptime if sample_final==1
stptime if sample_final==1  & RACE_ETHN==0
stptime if sample_final==1  & RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3

stptime if sample_final==1 & sex==1
stptime if sample_final==1 & sex==2

**MORTALITY**

stset Age_death, failure(died==1) enter(baselineage) id(n_eid) scale(1)


stsum if sample_final==1
stsum if sample_final==1  & RACE_ETHN==0
stsum if sample_final==1  & RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3
stsum if sample_final==1 & sex==1
stsum if sample_final==1 & sex==2

stptime if sample_final==1
stptime if sample_final==1  & RACE_ETHN==0
stptime if sample_final==1  & RACE_ETHN==1 | RACE_ETHN==2 | RACE_ETHN==3

stptime if sample_final==1 & sex==1
stptime if sample_final==1 & sex==2





//STEP 18: DETERMINE DIFFERENCES IN FINAL ANALYTIC SAMPLE VS. EXCLUDED SAMPLE BY BASIC SOCIO-DEMOGRAPHICS//

logistic sample_final baselineage sex i.RACE_ETHN if baselineage>=50 & baselineage~=.

logistic sample_final2 baselineage sex i.RACE_ETHN if baselineage>=50 & baselineage~=.


save, replace


//STEP 19: CREATE LE8 TOTAL SCORE TERTILES////

***********************LE8 TOTAL SCORE TERTILES*********************

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",clear

capture drop LE8_TOTALSCOREtert
xtile LE8_TOTALSCOREtert=LE8_TOTALSCORE if sample_final==1, nq(3)


save, replace

capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\IMPUTATIONS.smcl",replace


//STEP 20: NO NEED FOR MULTIPLE IMPUTATIONS///


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB.dta",clear

capture drop AGE
gen AGE=baselineage

capture drop SEX
gen SEX=sex

save, replace

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputed.dta", replace

sort n_eid 

save, replace

set matsize 11000


stset Age_dementia, failure(dem_diag==1) enter(baselineage) id(n_eid) scale(1)


keep n_eid AGE baselineage Age SEX RACE_ETHN  AD_PGS educationbr  smoking etsmoke townsend householdincome occupation packyearssmoke alcohol HDI_TOTALSCORE SS_friendsfamily SS_leisuresocial SS_abilityconfide srhbr allostatic METmin vitamind rdw comorbid bmi  LE8* POORCOGN householdsize Age_AD ad_diag Age_dementia dem_diag Age_PD PD_diag Age_death died withdrew sample* time*   _t* _d* time* Age* n_262*_0_0 withdrew medicationnum POLYPH statins  bptreat  gfap nefl ln_* PM* NO* lnPM* lnNO* sqrtPM* lnNO* AIRPOLLUTION1 AIRPOLLUTION2 METAB*

keep if sample_final2==1

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin.dta", replace




use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin.dta",clear

**TERTILE OF AD PGS**
capture drop AD_PGStert
xtile AD_PGStert=AD_PGS if sample_final==1, nq(3)


**TERTILE OF LE8 TOTAL SCORE**********************************************


capture drop LE8_TOTALSCOREtert
xtile LE8_TOTALSCOREtert=LE8_TOTALSCORE if sample_final==1, nq(3)

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin.dta", replace



**SES: educationbr, householdincome, townsend, occupation

capture drop zeducationbr 
egen zeducationbr=std(educationbr) if sample_final==1

capture drop zhouseholdincome 
egen zhouseholdincome=std(householdincome) if sample_final==1

capture drop ztownsend
egen ztownsend=std(townsend) if sample_final==1

capture drop ztownsendinv
gen ztownsendinv=ztownsend*-1


capture drop zoccupation
egen zoccupation=std(occupation) if sample_final==1


capture drop zoccupationinv
gen zoccupationinv=zoccupation*-1

capture drop rowmissSES
egen rowmissSES=rowmiss(zeducationbr zhouseholdincome ztownsendinv zoccupationinv)

tab rowmissSES

capture drop SES
egen SES=rowmean(zeducationbr zhouseholdincome ztownsendinv zoccupationinv) if rowmissSES<=2


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin.dta", replace  


capture drop SESres
reg SES townsend if sample_final==1
predict SESres, resid

histogram SESres if sample_final==1



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin.dta", replace  


**************************************************************STEP 21: MAIN PART OF THE ANALYSIS: *************************
capture log close

capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE1.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear

**Main exposures of interest: LE8* 
**Main outcomes of interest: Dementia, PD and deaths 
**Main covariates: AGE SEX RACE_ETHN (or Non_White) SES
**Main effect modifiers: sex and race


capture drop POLYPH2
gen POLYPH2=.
replace POLYPH2=1 if medicationnum>=5 & medicationnum~=.
replace POLYPH2=0 if POLYPH2~=1 & medicationnum~=. 

save, replace


capture drop zLE8*
foreach x of varlist LE8* {
	egen z`x'=std(`x') if sample_final==1
}



capture drop zLE8_LIFESTYLE 
capture drop zLE8_BIOLOGICAL
egen zLE8_LIFESTYLE=std(LE8_LIFESTYLE) if sample_final==1
egen zLE8_BIOLOGICAL=std(LE8_BIOLOGICAL) if sample_final==1


capture drop zLE8_LIFESTYLEinv
capture drop zLE8_BIOLOGICALinv
gen zLE8_LIFESTYLEinv=zLE8_LIFESTYLE*-1
gen zLE8_BIOLOGICALinv=zLE8_LIFESTYLE*-1



capture drop zLE8_TOTALSCOREinv
gen zLE8_TOTALSCOREinv=zLE8_TOTALSCORE*-1


capture drop AD_PGStert
xtile AD_PGStert=AD_PGS if sample_final==1, nq(3)


capture drop NonWhite
gen NonWhite=.
replace NonWhite=RACE_ETHN
recode NonWhite (0=0) (1=1) (2=1) (3=1)

capture drop LE8_TOTALSCOREtertinv
gen LE8_TOTALSCOREtertinv=.
replace LE8_TOTALSCOREtertinv=1 if LE8_TOTALSCOREtert==3
replace LE8_TOTALSCOREtertinv=2 if LE8_TOTALSCOREtert==2
replace LE8_TOTALSCOREtertinv=3 if LE8_TOTALSCOREtert==1

capture drop ztownsend
egen ztownsend=std(townsend) if sample_final==1


capture drop zAIRPOLLUTION1 
capture drop zAIRPOLLUTION2
foreach x of varlist AIRPOLLUTION1 AIRPOLLUTION2 {
egen z`x'=std(`x')	
	
}


save, replace





******z-scoring of METAB* variables***

capture drop zMETAB*
foreach var of varlist METAB* {
	egen z`var'=std(`var')
}

save, replace


**********TABLE 1: OVERALL, BY SEX AND BY RACE ***************

****OVERALL**

foreach x1 of varlist AGE householdsize townsend ztownsend LE8* zLE8* SES* medicationnum comorbid gfap nefl lnPM* lnNO* zAIRPOLLUTION* zMETAB*   {
	 mean `x1' if sample_final==1
}



foreach x2 of varlist dem_diag PD_diag died SEX RACE_ETHN NonWhite educationbr householdincome occupation  srhbr {
	 prop `x2' if sample_final==1
}


**Among Men**

foreach x1 of varlist AGE householdsize townsend ztownsend LE8* zLE8* SES* medicationnum comorbid gfap nefl lnPM* lnNO* zAIRPOLLUTION* zMETAB* {
	 mean `x1' if sample_final==1 & SEX==1
}



foreach x2 of varlist dem_diag PD_diag died SEX RACE_ETHN NonWhite educationbr householdincome  occupation  srhbr   {
	 prop `x2' if sample_final==1 & SEX==1
}

**Among Women**

foreach x1 of varlist AGE householdsize townsend ztownsend LE8* zLE8* SES* medicationnum comorbid gfap nefl lnPM* lnNO* zAIRPOLLUTION* zMETAB* {
	 mean `x1' if sample_final==1 & SEX==2
}



foreach x2 of varlist dem_diag PD_diag died SEX RACE_ETHN NonWhite educationbr householdincome  occupation  srhbr  {
	 prop `x2' if sample_final==1 & SEX==2
		
}


**Difference by sex**


foreach x1 of varlist AGE householdsize townsend ztownsend ztownsend LE8* zLE8* SES* medicationnum comorbid gfap nefl lnPM* lnNO* zAIRPOLLUTION* zMETAB* {
	 reg `x1' SEX if sample_final==1 
}



foreach x2 of varlist dem_diag PD_diag died  RACE_ETHN NonWhite educationbr householdincome  occupation  srhbr { 
	 mlogit `x2' SEX if sample_final==1
		
}


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin.dta", replace  


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\FIGURE1.smcl",replace



use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear

save, replace

*****************************************ABOVE VS. BELOW MEDIAN NFL AND GFAP**********************************************************

capture drop gfapbr
xtile  gfapbr=gfap if sample_final==1, nq(2)

bysort gfapbr: su gfap if sample_final==1


capture drop neflbr
xtile  neflbr=nefl if sample_final==1, nq(2)

bysort neflbr: su nefl if sample_final==1

save, replace

****************************************KAPLAN-MEIER SURVIVAL CURVES********************************************************************

**********************************NEFL**********************************************


**DEMENTIA**

stset Age_dementia, failure(dem_diag==1) enter(AGE) id(n_eid) scale(1) 


sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion Dementia-Free (95%CI)") title("NEFL vs. dementia") by (neflbr) tmin(65) tmax(85) 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1A.gph", replace
sts test neflbr if sample_final==1 & _t<84
stcox neflbr if sample_final==1 & _t<84

sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion Dementia-Free (95%CI)") title("NEFL vs. all-cause dementia") by (neflbr) tmin(65) tmax(85) risktable
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1A1.gph", replace

sts test neflbr if sample_final==1 & _t<84 
stcox neflbr if sample_final==1 & _t<84


**PD**

stset Age_PD, failure(PD_diag==1) enter(AGE) id(n_eid) scale(1) 



sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion PD-Free (95%CI)") title("NEFL vs. PD") by (neflbr) tmin(65) tmax(85) 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1B.gph", replace
sts test neflbr if sample_final==1 & _t<84
stcox neflbr if sample_final==1 & _t<84

sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion PD-Free (95%CI)") title("NEFL vs. PD") by (neflbr) tmin(65) tmax(85) risktable
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1B1.gph", replace


sts test neflbr if sample_final==1 & _t<84 
stcox neflbr if sample_final==1 & _t<84


**DEATH**

stset Age_death, failure(died==1) enter(AGE) id(n_eid) scale(1) 


sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion survival (95%CI)") title("NEFL vs. All-cause mortality") by (neflbr) tmin(65) tmax(85) 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1C.gph", replace
sts test neflbr if sample_final==1 & _t<84
stcox neflbr if sample_final==1 & _t<84

sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion survival (95%CI)") title("NEFL vs. All-cause mortality") by (neflbr) tmin(65) tmax(85) risktable
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1C1.gph", replace


sts test neflbr if sample_final==1 & _t<84 
stcox neflbr if sample_final==1 & _t<84

graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1A.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1B.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1C.gph"
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1NEFL.gph", replace



**********************************GFAP**********************************************


**DEMENTIA**

stset Age_dementia, failure(dem_diag==1) enter(AGE) id(n_eid) scale(1) 


sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion Dementia-Free (95%CI)") title("GFAP vs. dementia") by (gfapbr) tmin(65) tmax(85) 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1D.gph", replace
sts test gfapbr if sample_final==1 & _t<84
stcox gfapbr if sample_final==1 & _t<84

sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion Dementia-Free (95%CI)") title("GFAP vs. all-cause dementia") by (gfapbr) tmin(65) tmax(85) risktable
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1D1.gph", replace

sts test gfapbr if sample_final==1 & _t<84 
stcox gfapbr if sample_final==1 & _t<84


**PD**

stset Age_PD, failure(PD_diag==1) enter(AGE) id(n_eid) scale(1) 



sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion PD-Free (95%CI)") title("GFAP vs. PD") by (gfapbr) tmin(65) tmax(85) 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1E.gph", replace
sts test gfapbr if sample_final==1 & _t<84
stcox gfapbr if sample_final==1 & _t<84

sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion PD-Free (95%CI)") title("GFAP vs. PD") by (gfapbr) tmin(65) tmax(85) risktable
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1E1.gph", replace


sts test gfapbr if sample_final==1 & _t<84
stcox gfapbr if sample_final==1 & _t<84


**DEATH**

stset Age_death, failure(died==1) enter(AGE) id(n_eid) scale(1) 


sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion survival (95%CI)") title("GFAP vs. All-cause mortality") by (gfapbr) tmin(65) tmax(85) 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1F.gph", replace
sts test gfapbr if sample_final==1 & _t<84
stcox gfapbr if sample_final==1 & _t<84

sts graph if sample_final==1 & _t<84, gwood legend(pos(5)) xlabel(65(5)85) ylabel(0.50(.10)1) xtitle("Age at follow-up (years)") ytitle("Proportion survival (95%CI)") title("GFAP vs. All-cause mortality") by (gfapbr) tmin(65) tmax(85) risktable
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1F1.gph", replace


sts test gfapbr if sample_final==1 & _t<84
stcox gfapbr if sample_final==1 & _t<84

graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1D.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1E.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1F.gph"
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE1GFAP.gph", replace


save, replace


capture log close



*********************ADDITIONAL ANALYSES: TERTILE DESCRIPTION******************************************************

capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TERTILE_DESC.smcl",replace



use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear


capture drop zLE8*
foreach x of varlist LE8* {
	egen z`x'=std(`x') if sample_final==1 
}


save, replace

su zLE8_TOTALSCORE if sample_final==1
histogram zLE8_TOTALSCORE if sample_final==1


capture drop zLE8_TOTALSCOREinv
gen zLE8_TOTALSCOREinv=zLE8_TOTALSCORE*-1 if sample_final==1

save, replace


bysort LE8_TOTALSCOREtert: su LE8_TOTALSCORE if sample_final==1, det
bysort LE8_TOTALSCOREtert: su zLE8_TOTALSCOREinv if sample_final==1, det
su zLE8_TOTALSCOREinv if sample_final==1,det
su LE8* if sample_final==1, det

bysort LE8_TOTALSCOREtert: su LE8* if sample_final==1, det
bysort LE8_TOTALSCOREtert: su zLE8* if sample_final==1, det


capture drop zLE8_LIFESTYLE 
capture drop zLE8_BIOLOGICAL
egen zLE8_LIFESTYLE=std(LE8_LIFESTYLE) if sample_final==1
egen zLE8_BIOLOGICAL=std(LE8_BIOLOGICAL) if sample_final==1


capture drop zLE8_LIFESTYLEinv
capture drop zLE8_BIOLOGICALinv
gen zLE8_LIFESTYLEinv=zLE8_LIFESTYLE*-1
gen zLE8_BIOLOGICALinv=zLE8_LIFESTYLE*-1


bysort AD_PGStert: su AD_PGS if sample_final==1, det

save, replace


capture log close



*****************************************************************************************************************************************************************

clear
clear matrix
clear mata
set maxvar 10000,permanently 


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\PH_ASSUMPTIONS.smcl",replace
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear


****************************NEFL************************

**Dementia**

stset Age_dementia, failure(dem_diag==1) enter(AGE) id(n_eid) scale(1)

stcox neflbr  if sample_final==1, 
estat phtest, rank detail
capture drop scaledsch1dem
predict scaledsch1dem if sample_final==1, scaledsch
lowess scaledsch1dem _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demnfl.gph",replace


**AD**

stset Age_AD, failure(ad_diag==1) enter(AGE) id(n_eid) scale(1)

stcox neflbr  if sample_final==1
estat phtest, rank detail
capture drop scaledsch2AD
predict scaledsch2AD if sample_final==1, scaledsch
lowess scaledsch2AD _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch2ADnfl.gph",replace



**PD**

stset Age_PD, failure(PD_diag==1) enter(AGE) id(n_eid) scale(1)
stcox neflbr  if sample_final==1
estat phtest, rank detail
capture drop scaledsch3PD
predict scaledsch3PD if sample_final==1, scaledsch
lowess scaledsch3PD _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch3PDnfl.gph",replace



**Mortality**

stset Age_death, failure(died==1) enter(AGE) id(n_eid) scale(1)

stcox neflbr  if sample_final==1 
estat phtest, rank detail
capture drop scaledsch4MORT
predict scaledsch4MORT if sample_final==1, scaledsch
lowess scaledsch4MORT _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch4MORTnfl.gph",replace


save, replace


****************************GFAP************************

**Dementia**

stset Age_dementia, failure(dem_diag==1) enter(AGE) id(n_eid) scale(1)

stcox gfapbr  if sample_final==1, 
estat phtest, rank detail
capture drop scaledsch1dem
predict scaledsch1dem if sample_final==1, scaledsch
lowess scaledsch1dem _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demgfap.gph",replace


**AD**

stset Age_AD, failure(ad_diag==1) enter(AGE) id(n_eid) scale(1)

stcox gfapbr  if sample_final==1
estat phtest, rank detail
capture drop scaledsch2AD
predict scaledsch2AD if sample_final==1, scaledsch
lowess scaledsch2AD _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch2ADgfap.gph",replace



**PD**

stset Age_PD, failure(PD_diag==1) enter(AGE) id(n_eid) scale(1)
stcox gfapbr  if sample_final==1
estat phtest, rank detail
capture drop scaledsch3PD
predict scaledsch3PD if sample_final==1, scaledsch
lowess scaledsch3PD _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch3PDgfap.gph",replace



**Mortality**

stset Age_death, failure(died==1) enter(AGE) id(n_eid) scale(1)

stcox gfapbr  if sample_final==1 
estat phtest, rank detail
capture drop scaledsch4MORT
predict scaledsch4MORT if sample_final==1, scaledsch
lowess scaledsch4MORT _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch4MORTgfap.gph",replace


save, replace



capture log close


****************************Install commands for restricted cubic splines and flexible parametric regression models*******************

**search stpm2** install

ssc install rcsgen

capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE2NFL.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear


*******************DEMENTIA*********************************************************

stset Age_dementia, failure(dem_diag==1) enter(AGE) id(n_eid) scale(1)

stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf1nfl.gph",replace


stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf2nfl.gph",replace


stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf3nfl.gph",replace


***********************************************AMONG MEN***************************************



stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf1mnfl.gph",replace



stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "scaledsch1demf2mnfl.gph",replace



stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf3mnfl.gph",replace


************************************************AMONG WOMEN***************************************
stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf1mnfl.gph",replace



stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "scaledsch1demf2mnfl.gph",replace



stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf3mnfl.gph",replace



************************************************INTERACTION BY SEX***************************


stcox c.neflbr##SEX c.zLE8_TOTALSCOREinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det



stcox c.neflbr##SEX c.zLE8_LIFESTYLEinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det


stcox c.neflbr##SEX c.zLE8_BIOLOGICALinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det



*******************PD************************************************************

stset Age_PD, failure(PD_diag==1) enter(AGE) id(n_eid) scale(1)

***************************************************************OVERALL*******************

stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf1nfl.gph",replace


stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf2nfl.gph",replace


stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf3nfl.gph",replace




***********************************************AMONG MEN***************************************



stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf1mnfl.gph",replace



stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf2mnfl.gph",replace



stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf3mnfl.gph",replace



************************************************AMONG WOMEN***************************************


stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf1wnfl.gph",replace



stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf2wnfl.gph",replace



stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf3wnfl.gph",replace



************************************************INTERACTION BY SEX***************************


stcox neflbr##SEX c.zLE8_TOTALSCOREinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det




stcox neflbr##SEX c.zLE8_LIFESTYLEinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det

stcox neflbr##SEX c.zLE8_BIOLOGICALinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det

*******************MORTALTIY************************************************************

stset Age_death, failure(died==1) enter(AGE) id(n_eid) scale(1)


stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf1nfl.gph",replace


stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf2nfl.gph",replace


stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf3nfl.gph",replace



***********************************************AMONG MEN***************************************



stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1MORTB scaledsch1MORTC scaledsch1MORTD scaledsch1MORTE scaledsch1MORTF scaledsch1MORTG
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf1mnfl.gph",replace



stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf2mnfl.gph",replace



stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf3mnfl.gph",replace


************************************************AMONG WOMEN***************************************


stcox neflbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf1wnfl.gph",replace



stcox neflbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf2wnfl.gph",replace



stcox neflbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf3wnfl.gph",replace



************************************************INTERACTION BY SEX***************************


stcox neflbr##SEX c.zLE8_TOTALSCOREinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det



stcox c.neflbr##SEX c.zLE8_LIFESTYLEinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det


stcox c.neflbr##SEX c.zLE8_BIOLOGICALinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det

 
save, replace


capture log close



**search stpm2** install

ssc install rcsgen

capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE2GFAP.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear


*******************DEMENTIA*********************************************************

stset Age_dementia, failure(dem_diag==1) enter(AGE) id(n_eid) scale(1)

stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf1gfap.gph",replace


stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf2gfap.gph",replace


stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf3gfap.gph",replace


***********************************************AMONG MEN***************************************



stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf1mgfap.gph",replace



stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "scaledsch1demf2mgfap.gph",replace



stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf3mgfap.gph",replace


************************************************AMONG WOMEN***************************************
stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf1mgfap.gph",replace



stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "scaledsch1demf2mgfap.gph",replace



stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1demf3mgfap.gph",replace



************************************************INTERACTION BY SEX***************************


stcox c.gfapbr##SEX c.zLE8_TOTALSCOREinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det



stcox c.gfapbr##SEX c.zLE8_LIFESTYLEinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det


stcox c.gfapbr##SEX c.zLE8_BIOLOGICALinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det



*******************PD************************************************************

stset Age_PD, failure(PD_diag==1) enter(AGE) id(n_eid) scale(1)

***************************************************************OVERALL*******************

stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf1gfap.gph",replace


stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf2gfap.gph",replace


stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf3gfap.gph",replace




***********************************************AMONG MEN***************************************



stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf1mgfap.gph",replace



stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf2mgfap.gph",replace



stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf3mgfap.gph",replace



************************************************AMONG WOMEN***************************************


stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf1wgfap.gph",replace



stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf2wgfap.gph",replace



stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1PDf3wgfap.gph",replace



************************************************INTERACTION BY SEX***************************


stcox gfapbr##SEX c.zLE8_TOTALSCOREinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det




stcox gfapbr##SEX c.zLE8_LIFESTYLEinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det

stcox gfapbr##SEX c.zLE8_BIOLOGICALinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det

*******************MORTALTIY************************************************************

stset Age_death, failure(died==1) enter(AGE) id(n_eid) scale(1)


stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf1gfap.gph",replace


stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf2gfap.gph",replace


stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf3gfap.gph",replace



***********************************************AMONG MEN***************************************



stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1MORTB scaledsch1MORTC scaledsch1MORTD scaledsch1MORTE scaledsch1MORTF scaledsch1MORTG
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf1mgfap.gph",replace



stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf2mgfap.gph",replace



stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==1 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf3mgfap.gph",replace


************************************************AMONG WOMEN***************************************


stcox gfapbr zLE8_TOTALSCOREinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf1wgfap.gph",replace



stcox gfapbr zLE8_LIFESTYLEinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf2wgfap.gph",replace



stcox gfapbr zLE8_BIOLOGICALinv AGE SEX NonWhite householdsize SESres ztownsend comorbid i.srhbr  if SEX==2 & sample_final==1
estat phtest, det
capture drop scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM
predict scaledsch1demA scaledsch1demB scaledsch1demC scaledsch1demD scaledsch1demE scaledsch1demF scaledsch1demG scaledsch1demH scaledsch1demI scaledsch1demJ scaledsch1demK scaledsch1demL scaledsch1demM if sample_final==1, scaledsch
lowess scaledsch1demA  _t, mean noweight title("") note("") m(o)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\scaledsch1MORTf3wgfap.gph",replace



************************************************INTERACTION BY SEX***************************


stcox gfapbr##SEX c.zLE8_TOTALSCOREinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det



stcox c.gfapbr##SEX c.zLE8_LIFESTYLEinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det


stcox c.gfapbr##SEX c.zLE8_BIOLOGICALinv AGE  NonWhite householdsize SESres ztownsend comorbid i.srhbr  if sample_final==1
estat phtest, det

 
save, replace

capture log close


capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3A.smcl",replace

*****************************************TABLE 3: MULTISTATE REGRESSION MODELS OVERALL AND BY SEX*******************************


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin",clear

**search and install msset**


msset if sample_final==1,  id(n_eid) states(_d_PD _d_dementia _d_death) times (_t_PD _t_dementia _t_death) covariates(AGE ztownsend)

mat tmat = r(transmatrix)

mat list tmat

msboxes, transmat(tmat) id(n_eid) xvalues(0.2 0.7 0.6 0.5) yvalues(0.7 0.6 1.2 0.2) ///
statenames("Healthy" "PD" "Dementia" "Death" )

graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE2.gph",replace

gen _time = _stop - _start

stset _stop if sample_final==1, enter(_start) failure(_status=1) scale(1)

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE", replace


*********This part takes a long time to run*******
msaj, transmat(tmat) ci
line P_AJ_1* _t, sort connect(stairstep stairstep stairstep)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3A.gph",replace
line P_AJ_2* _t, sort connect(stairstep stairstep stairstep)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3B.gph",replace
line P_AJ_3* _t, sort connect(stairstep stairstep stairstep)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3C.gph",replace
line P_AJ_4* _t, sort connect(stairstep stairstep stairstep)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3D.gph",replace

graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3A.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3B.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3C.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3D.gph"
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE3.gph",replace



**Transition probability from state 2: PD**
cap drop P_AJ*
msaj, transmat(tmat) from(2) ltruncated(50) exit(85) ci
line P_AJ_2* _t, sort connect(stairstep stairstep stairstep)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE4A.gph",replace

**Transition probability from state 3: Dementia**
cap drop P_AJ*
msaj, transmat(tmat) from(3) ltruncated(50) exit(85) ci
line P_AJ_3* _t, sort connect(stairstep stairstep stairstep)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE4B.gph",replace


graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE4A.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE4B.gph" 
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE4.gph",replace

save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace




capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3BNFL.smcl",replace



**********************************************************NEFL********************************************************




use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear

ssc install merlin


capture drop neflbr
xtile  neflbr=nefl if sample_final==1, nq(2)

recode neflbr (1=0) (2=1)

tab1 neflbr 


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace

*************Flexible parametric Merlin models, rcs with 3 d.f. and 1 dftvc***********

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres  ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres  ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3CNEFL.smcl",replace



**********Merlin Weibull models*************************

*****Transition 1: Healthy --> PD********************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
estimate store m1
capture drop s1nefl*
predict s1nefl if sample_final==1 & _trans1==1, surv ci 
capture drop lns1nefl
gen lns1nefl=ln(s1nefl)
capture drop lntime
gen lntime=ln(_t)
line s1nefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s1nefl _t if _t<84, sort) (lpolyci s1nefl_lci _t if _t<84, sort) (lpolyci s1nefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_1nefl.gph",replace

capture drop s1goodnefl*
predict s1goodnefl if sample_final==1 & _trans1==1, at(neflbr 0) surv ci
capture drop lns1goodnefl
gen lns1goodnefl=ln(s1goodnefl)
capture drop lntime
gen lntime=ln(_t)
line s1goodnefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s1goodnefl _t if _t<84, sort) (lpolyci s1goodnefl_lci _t if _t<84, sort) (lpolyci s1goodnefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_2nefl.gph",replace

capture drop s1poornefl*
predict s1poornefl if sample_final==1 & _trans1==1, at(neflbr 1) surv ci 
capture drop lns1poornefl
gen lns1poornefl=ln(s1poornefl)
capture drop lntime
gen lntime=ln(_t)
line s1poornefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s1poornefl _t if _t<84, sort) (lpolyci s1poornefl_lci _t if _t<84, sort) (lpolyci s1poornefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_3nefl.gph",replace

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
capture drop s1diffnefl80*
predict s1diffnefl80 if sample_final==1 & _trans1==1, sdifference at1(neflbr 0 _t 80) at2(neflbr 1 _t 80) ci
line s1diffnefl80* AGE, sort connect(stairstep stairstep stairstep)  
graph twoway (lpolyci s1diffnefl80 _t if _t<80, sort) (lpolyci s1diffnefl80_lci _t if _t<80, sort) (lpolyci s1diffnefl80_uci _t if _t<80, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_4nefl.gph",replace



graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_1nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_2nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_3nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_4nefl.gph", col(1) iscale(0.5)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1nefl.gph",replace


 
save, replace

*****Transition 2: Healthy --> Dementia********************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
estimate store m2
capture drop s2nefl*
predict s2nefl if sample_final==1 & _trans2==1, surv ci 
capture drop lns2nefl
gen lns2nefl=ln(s2nefl)
capture drop lntime
gen lntime=ln(_t)
line s2* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s2nefl _t if _t<84, sort) (lpolyci s2nefl_lci _t if _t<84, sort) (lpolyci s2nefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_1nefl.gph",replace

capture drop s2goodnefl*
predict s2goodnefl if sample_final==1 & _trans2==1, at(neflbr 0) surv ci 
capture drop lns2goodnefl
gen lns2goodnefl=ln(s2goodnefl)
capture drop lntime
gen lntime=ln(_t)
line s2goodnefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s2goodnefl _t if _t<84, sort) (lpolyci s2goodnefl_lci _t if _t<84, sort) (lpolyci s2goodnefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_2nefl.gph",replace

capture drop s2poornefl*
predict s2poornefl if sample_final==1 & _trans2==1, at(neflbr 1) surv ci 
capture drop lns2poornefl
gen lns2poornefl=ln(s2poornefl)
capture drop lntime
gen lntime=ln(_t)
line s2poornefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s2poornefl _t if _t<84, sort) (lpolyci s2poornefl_lci _t if _t<84, sort) (lpolyci s2poornefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_3nefl.gph",replace


stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
capture drop s2diffnefl80*
predict s2diffnefl80 if sample_final==1 & _trans2==1, sdifference at1(neflbr 0 _t 80) at2(neflbr 1 _t 80) ci
line s2diffnefl80* AGE, sort connect(stairstep stairstep stairstep)  
graph twoway (lpolyci s2diffnefl80 _t if _t<80, sort) (lpolyci s2diffnefl80_lci _t if _t<80, sort) (lpolyci s2diffnefl80_uci _t if _t<80, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_4nefl.gph",replace


graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_1nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_2nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_3nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_4nefl.gph", col(1) iscale(0.5)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2nefl.gph",replace

save, replace


*****Transition 3: Healthy --> Died********************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
estimate store m3
capture drop s3nefl*
predict s3nefl if sample_final==1 & _trans3==1, surv ci 
capture drop lns3nefl
gen lns3nefl=ln(s3nefl)
capture drop lntime
gen lntime=ln(_t)
line s3nefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s3nefl _t if _t<84, sort) (lpolyci s3nefl_lci _t if _t<84, sort) (lpolyci s3nefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_1nefl.gph",replace

capture drop s3goodnefl*
predict s3goodnefl if sample_final==1 & _trans3==1, at(neflbr 0) surv ci 
capture drop lns3goodnefl
gen lns3goodnefl=ln(s3goodnefl)
capture drop lntime
gen lntime=ln(_t)
line s3goodnefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s3goodnefl _t if _t<84, sort) (lpolyci s3goodnefl_lci _t if _t<84, sort) (lpolyci s3goodnefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_2nefl.gph",replace

capture drop s3poornefl*
predict s3poornefl if sample_final==1 & _trans3==1, at(neflbr 1) surv ci 
capture drop lns3poornefl
gen lns3poornefl=ln(s3poornefl)
capture drop lntime
gen lntime=ln(_t)
line s3poornefl* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s3poornefl _t if _t<84, sort) (lpolyci s3poornefl_lci _t if _t<84, sort) (lpolyci s3poornefl_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_3nefl.gph",replace


stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
capture drop s3diffnefl80*
predict s3diffnefl80 if sample_final==1 & _trans3==1, sdifference at1(neflbr 0 _t 80) at2(neflbr 1 _t 80) ci
line s3diffnefl80* AGE, sort connect(stairstep stairstep stairstep)  
graph twoway (lpolyci s3diffnefl80 _t if _t<80, sort) (lpolyci s3diffnefl80_lci _t if _t<80, sort) (lpolyci s3diffnefl80_uci _t if _t<80, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_4nefl.gph",replace


graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_1nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_2nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_3nefl.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_4nefl.gph", col(1) iscale(0.5)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3nefl.gph",replace
save, replace


capture log close

**************************************GFAP**********************************************************



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3BGFAP.smcl",replace



**********************************************************GFAP********************************************************


use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear

ssc install merlin


capture drop gfapbr
xtile  gfapbr=gfap if sample_final==1, nq(2)

recode gfapbr (1=0) (2=1)

tab1 gfapbr 


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace

*************Flexible parametric Merlin models, rcs with 3 d.f. and 1 dftvc***********

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres  ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres  ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3CGFAP.smcl",replace



**********Merlin Weibull models*************************

*****Transition 1: Healthy --> PD********************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
estimate store m1
capture drop s1gfap*
predict s1gfap if sample_final==1 & _trans1==1, surv ci 
capture drop lns1gfap
gen lns1gfap=ln(s1gfap)
capture drop lntime
gen lntime=ln(_t)
line s1gfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s1gfap _t if _t<84, sort) (lpolyci s1gfap_lci _t if _t<84, sort) (lpolyci s1gfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_1gfap.gph",replace

capture drop s1goodgfap*
predict s1goodgfap if sample_final==1 & _trans1==1, at(gfapbr 0) surv ci
capture drop lns1goodgfap
gen lns1goodgfap=ln(s1goodgfap)
capture drop lntime
gen lntime=ln(_t)
line s1goodgfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s1goodgfap _t if _t<84, sort) (lpolyci s1goodgfap_lci _t if _t<84, sort) (lpolyci s1goodgfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_2gfap.gph",replace

capture drop s1poorgfap*
predict s1poorgfap if sample_final==1 & _trans1==1, at(gfapbr 1) surv ci 
capture drop lns1poorgfap
gen lns1poorgfap=ln(s1poorgfap)
capture drop lntime
gen lntime=ln(_t)
line s1poorgfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s1poorgfap _t if _t<84, sort) (lpolyci s1poorgfap_lci _t if _t<84, sort) (lpolyci s1poorgfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_3gfap.gph",replace

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
capture drop s1diffgfap80*
predict s1diffgfap80 if sample_final==1 & _trans1==1, sdifference at1(gfapbr 0 _t 80) at2(gfapbr 1 _t 80) ci
line s1diffgfap80* AGE, sort connect(stairstep stairstep stairstep)  
graph twoway (lpolyci s1diffgfap80 _t if _t<80, sort) (lpolyci s1diffgfap80_lci _t if _t<80, sort) (lpolyci s1diffgfap80_uci _t if _t<80, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_4gfap.gph",replace



graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_1gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_2gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_3gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1_4gfap.gph", col(1) iscale(0.5)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_1gfap.gph",replace


 
save, replace

*****Transition 2: Healthy --> Dementia********************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
estimate store m2
capture drop s2gfap*
predict s2gfap if sample_final==1 & _trans2==1, surv ci 
capture drop lns2gfap
gen lns2=ln(s2gfap)
capture drop lntime
gen lntime=ln(_t)
line s2* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s2gfap _t if _t<84, sort) (lpolyci s2gfap_lci _t if _t<84, sort) (lpolyci s2gfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_1gfap.gph",replace

capture drop s2goodgfap*
predict s2goodgfap if sample_final==1 & _trans2==1, at(gfapbr 0) surv ci 
capture drop lns2goodgfap
gen lns2goodgfap=ln(s2goodgfap)
capture drop lntime
gen lntime=ln(_t)
line s2goodgfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s2goodgfap _t if _t<84, sort) (lpolyci s2goodgfap_lci _t if _t<84, sort) (lpolyci s2goodgfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_2gfap.gph",replace

capture drop s2poorgfap*
predict s2poorgfap if sample_final==1 & _trans2==1, at(gfapbr 1) surv ci 
capture drop lns2poorgfap
gen lns2poorgfap=ln(s2poorgfap)
capture drop lntime
gen lntime=ln(_t)
line s2poorgfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s2poorgfap _t if _t<84, sort) (lpolyci s2poorgfap_lci _t if _t<84, sort) (lpolyci s2poorgfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_3gfap.gph",replace


stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
capture drop s2diffgfap80*
predict s2diffgfap80 if sample_final==1 & _trans2==1, sdifference at1(gfapbr 0 _t 80) at2(gfapbr 1 _t 80) ci
line s2diffgfap80* AGE, sort connect(stairstep stairstep stairstep)  
graph twoway (lpolyci s2diffgfap80 _t if _t<80, sort) (lpolyci s2diffgfap80_lci _t if _t<80, sort) (lpolyci s2diffgfap80_uci _t if _t<80, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_4gfap.gph",replace


graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_1gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_2gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_3gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2_4gfap.gph", col(1) iscale(0.5)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_2gfap.gph",replace

save, replace


*****Transition 3: Healthy --> Died********************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
estimate store m3
capture drop s3gfap*
predict s3gfap if sample_final==1 & _trans3==1, surv ci 
capture drop lns3gfap
gen lns3gfap=ln(s3gfap)
capture drop lntime
gen lntime=ln(_t)
line s3gfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s3gfap _t if _t<84, sort) (lpolyci s3gfap_lci _t if _t<84, sort) (lpolyci s3gfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_1gfap.gph",replace

capture drop s3goodgfap*
predict s3goodgfap if sample_final==1 & _trans3==1, at(gfapbr 0) surv ci 
capture drop lns3goodgfap
gen lns3goodgfap=ln(s3goodgfap)
capture drop lntime
gen lntime=ln(_t)
line s3goodgfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s3goodgfap _t if _t<84, sort) (lpolyci s3goodgfap_lci _t if _t<84, sort) (lpolyci s3goodgfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_2gfap.gph",replace

capture drop s3poorgfap*
predict s3poorgfap if sample_final==1 & _trans3==1, at(gfapbr 1) surv ci 
capture drop lns3poorgfap
gen lns3poorgfap=ln(s3poorgfap)
capture drop lntime
gen lntime=ln(_t)
line s3poorgfap* _t if _t<84, sort connect(stairstep stairstep stairstep)
graph twoway (lpolyci s3poorgfap _t if _t<84, sort) (lpolyci s3poorgfap_lci _t if _t<84, sort) (lpolyci s3poorgfap_uci _t if _t<84, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_3gfap.gph",replace


stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
capture drop s3diffgfap80*
predict s3diffgfap80 if sample_final==1 & _trans3==1, sdifference at1(gfapbr 0 _t 80) at2(gfapbr 1 _t 80) ci
line s3diffgfap80* AGE, sort connect(stairstep stairstep stairstep)  
graph twoway (lpolyci s3diffgfap80 _t if _t<80, sort) (lpolyci s3diffgfap80_lci _t if _t<80, sort) (lpolyci s3diffgfap80_uci _t if _t<80, sort)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_4gfap.gph",replace


graph combine "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_1gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_2gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_3gfap.gph" "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3_4gfap.gph", col(1) iscale(0.5)
graph save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\FIGURES_UPDATED\FIGURE_5_3gfap.gph",replace
save, replace





capture log close





capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\SURVDIFF_DESCRIPTIVES.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear


su s1diff* if sample_final==1 & _trans1==1, det
su s2diff* if sample_final==1 & _trans2==1, det
su s3diff* if sample_final==1 & _trans3==1, det


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3DNEFL.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear

*******NEFL*************


********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)


**RP**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 2**
**Weibull**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)


**RP**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog

**Transition 3**
**Weibull**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(weibull)


**RP**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 4**
**Weibull**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans4==1, distribution(weibull)


**RP**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans4==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog



**Transition 5**
**Weibull**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans5==1, distribution(weibull)


**RP**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans5==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 6**
**Weibull**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans6==1, distribution(weibull)


**RP**
stmerlin neflbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans6==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog




********************MODEL 2: FULL MODEL***************************


**Transition 1**

**Weibull**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)


**RP**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 2**
**Weibull**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)


**RP**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog

**Transition 3**
**Weibull**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


**RP**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 4**
**Weibull**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(weibull)


**RP**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 5**
**Weibull**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(weibull)


**RP**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 6**
**Weibull**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(weibull)


**RP**
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog



capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE3DGFAP.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear

*******GFAP*************


********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)


**RP**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 2**
**Weibull**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)


**RP**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog

**Transition 3**
**Weibull**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(weibull)


**RP**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 4**
**Weibull**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans4==1, distribution(weibull)


**RP**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans4==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog



**Transition 5**
**Weibull**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans5==1, distribution(weibull)


**RP**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans5==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 6**
**Weibull**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans6==1, distribution(weibull)


**RP**
stmerlin gfapbr SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans6==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog




********************MODEL 2: FULL MODEL***************************


**Transition 1**

**Weibull**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)


**RP**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 2**
**Weibull**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)


**RP**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog

**Transition 3**
**Weibull**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


**RP**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 4**
**Weibull**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(weibull)


**RP**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 5**
**Weibull**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(weibull)


**RP**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog


**Transition 6**
**Weibull**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(weibull)


**RP**
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog



capture log close


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT\TABLE3ENEFL.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA\finaldata_unimputedfin_MULTISTATE",clear


********************************************NEFL*************************************************

******TRANSITION 1**************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(exponential)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(go)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(pwe) knots(3)
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 



******TRANSITION 2**************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(exponential)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(go)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(pwe) knots(3)
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


 
******TRANSITION 3**************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(exponential)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(go)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(pwe) knots(3)
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 



******TRANSITION 4**************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(weibull)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(exponential)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(go)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(pwe) knots(3)
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


******TRANSITION 5**************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(weibull)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(exponential)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(go)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(pwe) knots(3)
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres  ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


******TRANSITION 6**************

stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(weibull)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(exponential)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(go)
estat ic
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(pwe) knots(3)
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin neflbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT\TABLE3EGFAP.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA\finaldata_unimputedfin_MULTISTATE",clear

***********************************GFAP********************************


******TRANSITION 1**************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(exponential)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(go)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(pwe) knots(3)
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 



******TRANSITION 2**************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(exponential)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(go)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(pwe) knots(3)
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


 
******TRANSITION 3**************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(exponential)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(go)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(pwe) knots(3)
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 



******TRANSITION 4**************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(weibull)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(exponential)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(go)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(pwe) knots(3)
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans4==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


******TRANSITION 5**************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(weibull)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(exponential)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(go)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(pwe) knots(3)
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres  ztownsend comorbid srhbr if sample_final==1 & _trans5==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 


******TRANSITION 6**************

stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(weibull)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(exponential)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(go)
estat ic
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(pwe) knots(3)
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rp) df(3) tvc(AGE) dftvc(1) nolog
estat ic 
stmerlin gfapbr zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans6==1, distribution(rcs) df(3) tvc(AGE) dftvc(1) nolog
estat ic 



********************************************************************************************************************

capture log close



capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\SELECTION.smcl",replace
use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\UKB_PAPER11_NFLGFAPDEMMORTMETAB",clear



capture drop samplefinal_initial
gen samplefinal_initial=.
replace samplefinal_initial=1 if sample_final2==1
replace samplefinal_initial=0 if samplefinal_initial==. & AGE>=50 & withdrew==.

save, replace

logistic samplefinal_initial AGE SEX NonWhite SES householdsize

tab samplefinal_initial SEX, row col chi
tab samplefinal_initial NonWhite, row col chi 
reg samplefinal_initial AGE
reg samplefinal_initial SES
reg samplefinal_initial householdsize

bysort samplefinal_initial: su AGE SES householdsize

save, replace

capture log close



*************TABLE 4************

capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE4ANEFL.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear


**    PM2.5, 2010 (Ln)
**    PM10, 2010 (Ln)
**    PM5/10, 2010 (Ln)
**    PM2.5abs, 2010 (Ln) 
**    NO2, 2010 (Ln)
**PC1
**PC2

capture drop lnPM2point5_2010br      
capture drop lnPM10_2010br
capture drop lnPM2point5_10_2010br
capture drop lnPM2point5_abs_2010br
capture drop lnNO2_2010br
capture drop lnNOX_2010br


foreach x of varlist lnPM2point5_2010 lnPM10_2010 lnPM2point5_10_2010 lnPM2point5_abs_2010 lnNO2_2010 lnNOX_2010  {
	xtile `x'br=`x',nq(2)
}

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	recode `x' 1=0 2=1
}

foreach x of varlist lnPM2point5_2010 lnPM10_2010 lnPM2point5_10_2010 lnPM2point5_abs_2010 lnNO2_2010 lnNOX_2010  {
bysort `x'br: su `x' if sample_final==1 
}



capture drop zAIRPOLLUTION1 
capture drop zAIRPOLLUTION2
foreach x of varlist AIRPOLLUTION1 AIRPOLLUTION2 {
egen z`x'=std(`x')	
	
}




capture drop gfapbr
xtile  gfapbr=gfap if sample_final==1, nq(2)


capture drop neflbr
xtile  neflbr=nefl if sample_final==1, nq(2)

foreach x of varlist neflbr gfapbr  {
	recode `x' 1=0 2=1
}

tab1 neflbr gfapbr lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br

bysort neflbr: su nefl
bysort gfapbr: su gfap

foreach x of varlist lnPM2point5_2010 lnPM10_2010 lnPM2point5_10_2010 lnPM2point5_abs_2010 lnNO2_2010 lnNOX_2010 {
	
	bysort `x'br: su `x' 
}


save, replace

*******NEFL*************


********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**
streg c.neflbr##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.neflbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
}

**Transition 2**
**Weibull**
streg c.neflbr##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.neflbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
}


**Transition 3**
**Weibull**
streg c.neflbr##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.neflbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
}



********************MODEL 2: FULL MODEL***************************



**Transition 1**

**Weibull**
streg c.neflbr##c.zAIRPOLLUTION1 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zAIRPOLLUTION2 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.neflbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
}

**Transition 2**
**Weibull**
streg c.neflbr##c.zAIRPOLLUTION1 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zAIRPOLLUTION2 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.neflbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
}


**Transition 3**
**Weibull**
streg c.neflbr##c.zAIRPOLLUTION1 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zAIRPOLLUTION2 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.neflbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
}



save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace




capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE4BGFAP.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear



*******GFAP*************


********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**
streg c.gfapbr##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.gfapbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
}

**Transition 2**
**Weibull**
streg c.gfapbr##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.gfapbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
}


**Transition 3**
**Weibull**
streg c.gfapbr##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend  if sample_final==1 & _trans3==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.gfapbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
}



********************MODEL 2: FULL MODEL***************************



**Transition 1**

**Weibull**
streg c.gfapbr##c.zAIRPOLLUTION1 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zAIRPOLLUTION2 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.gfapbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
}

**Transition 2**
**Weibull**
streg c.gfapbr##c.zAIRPOLLUTION1 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zAIRPOLLUTION2 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.gfapbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
}


**Transition 3**
**Weibull**
streg c.gfapbr##c.zAIRPOLLUTION1 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zAIRPOLLUTION2 zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
	streg c.gfapbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
}


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace


capture log close



*************TABLE 5**************************************

capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT\TABLE5ANEFL.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear


save, replace


******z-scoring of METAB* variables***

capture drop zMETAB*
foreach var of varlist METAB* {
	egen z`var'=std(`var')
}

save, replace


*******NEFL*************


********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**

capture drop zln_*
foreach x of varlist ln_*{
	egen z`x'=std(`x')
	
}

foreach x of varlist zln_* {
	streg c.neflbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
	
}

streg c.neflbr##c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)







**Transition 2**
**Weibull**
foreach x of varlist zln_* {
	streg c.neflbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
	
}



streg c.neflbr##c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)



**Transition 3**
**Weibull**

foreach x of varlist zln_* {
	streg c.neflbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
	
}


streg c.neflbr##c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)


********************MODEL 2: FULL MODEL***************************

**Transition 1**


foreach x of varlist zln_* {
	streg c.neflbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
	
}


**Weibull**
streg c.neflbr##c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.neflbr##c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)


**Transition 2**


foreach x of varlist zln_* {
	streg c.neflbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
	
}


**Weibull**
streg c.neflbr##c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.neflbr##c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)


**Transition 3**



foreach x of varlist zln_* {
	streg c.neflbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
	
}


**Weibull**
streg c.neflbr##c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.neflbr##c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT\TABLE5BGFAP.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear

*******GFAP*************



********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**

foreach x of varlist zln_* {
	streg c.gfapbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
	
}

streg c.gfapbr##c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)







**Transition 2**
**Weibull**
foreach x of varlist zln_* {
	streg c.gfapbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
	
}



streg c.gfapbr##c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)



**Transition 3**
**Weibull**

foreach x of varlist zln_* {
	streg c.gfapbr##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
	
}


streg c.gfapbr##c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)


********************MODEL 2: FULL MODEL***************************

**Transition 1**


foreach x of varlist zln_* {
	streg c.gfapbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
	
}


**Weibull**
streg c.gfapbr##c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.gfapbr##c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)


**Transition 2**


foreach x of varlist zln_* {
	streg c.gfapbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
	
}


**Weibull**
streg c.gfapbr##c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.gfapbr##c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)


**Transition 3**



foreach x of varlist zln_* {
	streg c.gfapbr##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
	
}



**Weibull**
streg c.gfapbr##c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.gfapbr##c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace


capture log close

**********TABLE 6*******************************************
**************************************************ASSOCIATION OF TRANSITIONS WITH zMETABOLOME PCA scores*******************************************


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE6.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear



********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**Weibull**
foreach x of varlist zln_* {
	streg c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
}

streg c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)


**Transition 2**
**Weibull**
foreach x of varlist zln_* {
	streg c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
}


streg c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)


**Transition 3**
**Weibull**
foreach x of varlist zln_* {
	streg c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
}


streg c.zMETAB1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)




********************MODEL 2: FULL MODEL***************************

**Transition 1**

**Weibull**
foreach x of varlist zln_* {
  streg c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans==1, distribution(weibull)
}


streg c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)


**Transition 2**
**Weibull**
foreach x of varlist zln_* {
	streg c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans==2, distribution(weibull)
}


streg c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)


**Transition 3**
**Weibull**
foreach x of varlist zln_* {
	streg c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans==3,distribution(weibull)
}


streg c.zMETAB1 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15 zLE8_TOTALSCOREinv  SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace


capture log close







**********TABLE 7*******************************************
**************************************************ASSOCIATION OF TRANSITIONS WITH zMETABOLOME PCA scores, INTERACTION BY AIR POLLUTION MEASURES*******************************************


capture log close
capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\TABLE7.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear






********************MODEL 1: REDUCED MODEL***************************


**Transition 1**

**INTERACTION BY zAIRPOLLUTION1**
streg c.zMETAB1##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)


**INTERACTION BY zAIRPOLLUTION2**
streg c.zMETAB1##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)



**INTERACTION BY INDIVIDUAL POLLUTANTS**

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.zMETAB1##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans1==1, distribution(weibull)
	
	
}


**Transition 2**

**INTERACTION BY zAIRPOLLUTION1**
streg c.zMETAB1##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)




**INTERACTION BY zAIRPOLLUTION2**
streg c.zMETAB1##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)


foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.zMETAB1##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans2==1, distribution(weibull)

	
}


**Transition 3**

**INTERACTION BY zAIRPOLLUTION1**
streg c.zMETAB1##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION1 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)


**INTERACTION BY zAIRPOLLUTION2**
streg c.zMETAB1##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION2 SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)


foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.zMETAB1##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15##c.`x' SEX AGE NonWhite householdsize SESres ztownsend if sample_final==1 & _trans3==1, distribution(weibull)
	
	
}



********************MODEL 2: FULL MODEL***************************
**Transition 1**

**INTERACTION BY zAIRPOLLUTION1**
streg c.zMETAB1##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)


**INTERACTION BY zAIRPOLLUTION2**
streg c.zMETAB1##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)



**INTERACTION BY INDIVIDUAL POLLUTANTS**

foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.zMETAB1##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB2##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB3##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB4##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB5##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB6##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB7##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB8##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB9##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB10##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB11##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB12##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB13##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB14##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
streg c.zMETAB15##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans1==1, distribution(weibull)
	
	
}


**Transition 2**

**INTERACTION BY zAIRPOLLUTION1**
streg c.zMETAB1##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)




**INTERACTION BY zAIRPOLLUTION2**
streg c.zMETAB1##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)


foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.zMETAB1##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB2##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB3##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB4##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB5##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB6##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB7##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB8##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB9##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB10##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB11##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB12##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB13##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB14##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)
streg c.zMETAB15##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans2==1, distribution(weibull)

	
}


**Transition 3**

**INTERACTION BY zAIRPOLLUTION1**
streg c.zMETAB1##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION1  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


**INTERACTION BY zAIRPOLLUTION2**
streg c.zMETAB1##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15##c.zAIRPOLLUTION2  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)


foreach x of varlist lnPM2point5_2010br lnPM10_2010br lnPM2point5_10_2010br lnPM2point5_abs_2010br lnNO2_2010br lnNOX_2010br  {
streg c.zMETAB1##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB2##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB3##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB4##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB5##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB6##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB7##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB8##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB9##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB10##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB11##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB12##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB13##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB14##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
streg c.zMETAB15##c.`x'  zLE8_TOTALSCOREinv    SEX AGE NonWhite householdsize SESres ztownsend  comorbid srhbr if sample_final==1 & _trans3==1, distribution(weibull)
	
	
}


save "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",replace



capture log close



capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\HEATMAP_FIGURE2.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear


* Install estout if not already installed
ssc install estout, replace

* Clear any previous estimates
est clear

* Start the loop
foreach x of varlist neflbr gfapbr  { 
    * Loop over zMETAB variables
    foreach metab of numlist 1/15 {
	foreach k of numlist 1/3 {
        * Run the streg command
        streg c.zMETAB`metab'##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans`k'==1, distribution(weibull)
        
        * Store the estimates
        eststo metab`metab'_`x'_`k'
    }
}
}

* Export the results to a dataset
esttab using results_TABLE5.csv, replace se ar2

* Convert the CSV file to a Stata dataset (if needed)
import delimited results_TABLE5.csv, clear
save results_TABLE5.dta, replace




***********************

capture log using "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\OUTPUT_UPDATED\HEATMAP_FIGURE3.smcl",replace

use "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB\DATA_UPDATED\finaldata_unimputedfin_MULTISTATE",clear


* Install estout if not already installed
ssc install estout, replace

* Clear any previous estimates
est clear

capture drop PM1 
capture drop PM2 
capture drop PM3 
capture drop PM4 
capture drop PM5 
capture drop PM6

gen PM1=lnPM2point5_2010br
gen PM2=lnPM10_2010br
gen PM3=lnPM2point5_10_2010br
gen PM4=lnPM2point5_abs_2010br
gen PM5=lnNO2_2010br
gen PM6=lnNOX_2010br 

save, replace

* Start the loop
foreach x of varlist PM1 PM2 PM3 PM4 PM5 PM6  { 
    * Loop over zMETAB variables
    foreach metab of numlist 1/15 {
	foreach k of numlist 1/3 {
        * Run the streg command
        streg c.zMETAB`metab'##c.`x' zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr if sample_final==1 & _trans`k'==1, distribution(weibull)
        
        * Store the estimates
        eststo metab`metab'_`x'_`k'
    }
}
}

* Export the results to a dataset
esttab using results_TABLE7.csv, replace se ar2

* Convert the CSV file to a Stata dataset (if needed)
import delimited results_TABLE7.csv, clear
save results_TABLE7.dta, replace


capture log close


************************************
capture log close

version 18.0
set more off

********************************************************************************
* CONTINUOUS INTERACTION SENSITIVITY ANALYSIS, EXPANDED
* Project: UKB NfL/GFAP, air pollution, metabolome, dementia, PD, mortality
*
* Purpose:
*   Extend the continuous exposure sensitivity analysis to include:
*     1) NfL/GFAP x air pollution
*     2) Metabolomic PCs x NfL/GFAP
*     3) Metabolomic PCs x air pollution
*
* BH multiple testing correction:
*   Benjamini-Hochberg q-values are calculated separately by analysis type:
*     - biomarker_airpollution
*     - metabolome_biomarker
*     - metabolome_airpollution
*
* Main Excel output:
*   SUPPTABLE_CONTINUOUS_ALL_INTERACTIONS.xlsx
*
* Sheets:
*   1) README
*   2) All_continuous_interactions
*   3) Biomarker_airpollution
*   4) Metabolome_biomarker
*   5) Metabolome_airpollution
*   6) Spline_tests
********************************************************************************

*---- USER PATHS: edit only if folder names differ
global ROOT    "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB"
global DATA    "$ROOT\DATA_UPDATED"
global OUT     "$ROOT\OUTPUT_UPDATED"
global FIG     "$ROOT\FIGURES_UPDATED"

capture mkdir "$OUT"
capture mkdir "$FIG"

capture log using "$OUT\CONTINUOUS_ALL_INTERACTIONS_EXPANDED.smcl", replace

********************************************************************************
* 0. Load analytic file and define variables
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE", clear

* Biomarkers: use original continuous NPX/log-scale variables from manuscript.
local biomarkers "nefl gfap"

* Air pollution markers: loge-transformed 2010 measures already created upstream.
local pollutants "lnPM2point5_2010 lnPM10_2010 lnPM2point5_10_2010 lnPM2point5_abs_2010 lnNO2_2010 lnNOX_2010"

* Optional air pollution PCs, if available.
capture confirm variable AIRPOLLUTION1
if !_rc local pollutants "`pollutants' AIRPOLLUTION1"
capture confirm variable AIRPOLLUTION2
if !_rc local pollutants "`pollutants' AIRPOLLUTION2"

* Metabolomic principal components.
* The full manuscript code uses zMETAB1-zMETAB15 for the 15 metabolomic PCs.
local metabolome ""
forvalues i = 1/15 {
    capture confirm variable zMETAB`i'
    if !_rc local metabolome "`metabolome' zMETAB`i'"
    else {
        capture confirm variable METAB`i'
        if !_rc {
            capture drop zMETAB`i'
            quietly egen zMETAB`i' = std(METAB`i') if sample_final==1
            label variable zMETAB`i' "Standardized metabolomic PC`i'"
            local metabolome "`metabolome' zMETAB`i'"
        }
    }
}

* Basic labels.
capture label variable nefl "NfL, continuous"
capture label variable gfap "GFAP, continuous"
capture label variable lnPM2point5_2010     "PM2.5, 2010, loge"
capture label variable lnPM10_2010          "PM10, 2010, loge"
capture label variable lnPM2point5_10_2010  "PM2.5-10, 2010, loge"
capture label variable lnPM2point5_abs_2010 "PM2.5 absorbance, 2010, loge"
capture label variable lnNO2_2010           "NO2, 2010, loge"
capture label variable lnNOX_2010           "NOx, 2010, loge"
capture label variable AIRPOLLUTION1        "Air-pollution PC1"
capture label variable AIRPOLLUTION2        "Air-pollution PC2"

forvalues i = 1/15 {
    capture label variable zMETAB`i' "Standardized metabolomic PC`i'"
}

********************************************************************************
* 1. Standardize continuous biomarkers and air pollutants
********************************************************************************

foreach v of local biomarkers {
    capture confirm variable `v'
    if !_rc {
        capture drop z_`v'
        quietly egen z_`v' = std(`v') if sample_final==1
        local vlab : variable label `v'
        if "`vlab'"=="" local vlab "`v'"
        label variable z_`v' "Standardized `vlab'"
    }
}

foreach v of local pollutants {
    capture confirm variable `v'
    if !_rc {
        capture drop z_`v'
        quietly egen z_`v' = std(`v') if sample_final==1
        local vlab : variable label `v'
        if "`vlab'"=="" local vlab "`v'"
        label variable z_`v' "Standardized `vlab'"
    }
}

save "$DATA\finaldata_unimputedfin_MULTISTATE_continuous_sensitivity_expanded", replace

********************************************************************************
* 2. Helper program for Benjamini-Hochberg q-values
********************************************************************************

capture program drop make_bh_q
program define make_bh_q
    syntax varname, PVAR(name) QVAR(name)

    tempvar obsid rank m rawq

    capture drop `qvar'
    gen long `obsid' = _n

    preserve
        keep `obsid' `varlist' `pvar'
        keep if !missing(`pvar') & !missing(`varlist')

        sort `varlist' `pvar' `obsid'
        by `varlist': gen long `rank' = _n
        by `varlist': gen long `m' = _N
        gen double `rawq' = `pvar' * `m' / `rank'

        * Step-up BH monotonicity.
        gsort `varlist' -`rank'
        gen double `qvar' = .
        by `varlist': replace `qvar' = `rawq' if _n == 1
        by `varlist': replace `qvar' = min(`rawq', `qvar'[_n-1]) if _n > 1
        replace `qvar' = min(`qvar', 1)

        keep `obsid' `qvar'
        tempfile qtmp
        save "`qtmp'", replace
    restore

    merge 1:1 `obsid' using "`qtmp'", nogen
    drop `obsid'
end

********************************************************************************
* 3. Helper program to post continuous interaction estimates
********************************************************************************

capture program drop post_continuous_interaction
program define post_continuous_interaction
    syntax, HANDLE(name) ANALYSISTYPE(string) XVAR(name) ZVAR(name) ///
        TRANSition(integer) MODEL(string) COVARS(string)

    local trlabel = cond(`transition'==1, "Healthy->PD", ///
                    cond(`transition'==2, "Healthy->Dementia", "Healthy->Death"))

    local xlab : variable label `xvar'
    if "`xlab'"=="" local xlab "`xvar'"

    local zlab : variable label `zvar'
    if "`zlab'"=="" local zlab "`zvar'"

    capture noisily streg c.`xvar'##c.`zvar' `covars' ///
        if sample_final==1 & _trans`transition'==1, distribution(weibull) nohr

    if !_rc {
        local intterm c.`xvar'#c.`zvar'

        scalar bint  = _b[`intterm']
        scalar seint = _se[`intterm']
        scalar zstat = bint/seint
        scalar pint  = 2*normal(-abs(zstat))
        scalar hrint = exp(bint)
        scalar lci   = exp(bint - invnormal(0.975)*seint)
        scalar uci   = exp(bint + invnormal(0.975)*seint)

        scalar Nmodel = e(N)
        capture scalar Kmodel = e(k)
        if _rc scalar Kmodel = e(rank)

        scalar AICm = -2*e(ll) + 2*Kmodel
        scalar BICm = -2*e(ll) + ln(e(N))*Kmodel

        capture scalar Emodel = e(N_fail)
        if _rc {
            quietly count if e(sample) & _d==1
            scalar Emodel = r(N)
        }

        post `handle' ///
            ("`analysistype'") ///
            ("`xvar'") ("`xlab'") ///
            ("`zvar'") ("`zlab'") ///
            (`transition') ("`trlabel'") ("`model'") ///
            (Nmodel) (Emodel) ///
            (bint) (seint) (hrint) (lci) (uci) (pint) (AICm) (BICm)
    }
end

********************************************************************************
* 4. Run all continuous interaction models
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE_continuous_sensitivity_expanded", clear

local covars_m1 "SEX AGE NonWhite householdsize SESres ztownsend"
local covars_m2 "zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr"

tempname H
tempfile all_results

postfile `H' ///
    str36 analysis_type ///
    str40 xvar str100 xvar_label ///
    str40 zvar str100 zvar_label ///
    byte transition str24 transition_label ///
    str12 model ///
    double N events ///
    double beta_interaction se_interaction HR_interaction LCI_interaction UCI_interaction ///
    double p_interaction AIC BIC ///
    using "`all_results'", replace

forvalues tr = 1/3 {

    * 4A. Biomarker x air pollution: NfL/GFAP x pollutants.
    foreach b of local biomarkers {
        capture confirm variable z_`b'
        if _rc continue

        foreach p of local pollutants {
            capture confirm variable z_`p'
            if _rc continue

            post_continuous_interaction, handle(`H') ///
                analysistype("biomarker_airpollution") ///
                xvar(z_`b') zvar(z_`p') transition(`tr') model("Model 1") ///
                covars("`covars_m1'")

            post_continuous_interaction, handle(`H') ///
                analysistype("biomarker_airpollution") ///
                xvar(z_`b') zvar(z_`p') transition(`tr') model("Model 2") ///
                covars("`covars_m2'")
        }
    }

    * 4B. Metabolome x biomarker: zMETAB1-zMETAB15 x NfL/GFAP.
    foreach m of local metabolome {
        capture confirm variable `m'
        if _rc continue

        foreach b of local biomarkers {
            capture confirm variable z_`b'
            if _rc continue

            post_continuous_interaction, handle(`H') ///
                analysistype("metabolome_biomarker") ///
                xvar(`m') zvar(z_`b') transition(`tr') model("Model 1") ///
                covars("`covars_m1'")

            post_continuous_interaction, handle(`H') ///
                analysistype("metabolome_biomarker") ///
                xvar(`m') zvar(z_`b') transition(`tr') model("Model 2") ///
                covars("`covars_m2'")
        }
    }

    * 4C. Metabolome x air pollution: zMETAB1-zMETAB15 x pollutants.
    foreach m of local metabolome {
        capture confirm variable `m'
        if _rc continue

        foreach p of local pollutants {
            capture confirm variable z_`p'
            if _rc continue

            post_continuous_interaction, handle(`H') ///
                analysistype("metabolome_airpollution") ///
                xvar(`m') zvar(z_`p') transition(`tr') model("Model 1") ///
                covars("`covars_m1'")

            post_continuous_interaction, handle(`H') ///
                analysistype("metabolome_airpollution") ///
                xvar(`m') zvar(z_`p') transition(`tr') model("Model 2") ///
                covars("`covars_m2'")
        }
    }
}

postclose `H'

use "`all_results'", clear

********************************************************************************
* 5. BH q-values, per type of analysis
********************************************************************************

* Primary q-value requested: BH correction separately by type of analysis and model.
gen str80 bh_family_type_model = analysis_type + "_" + model
make_bh_q bh_family_type_model, pvar(p_interaction) qvar(q_bh_by_analysis_type)

* Optional more granular q-value: separately by type of analysis, model, and transition.
gen str100 bh_family_type_model_transition = analysis_type + "_" + model + "_transition" + string(transition)
make_bh_q bh_family_type_model_transition, pvar(p_interaction) qvar(q_bh_by_analysis_type_transition)

order analysis_type model transition transition_label ///
      xvar xvar_label zvar zvar_label ///
      N events beta_interaction se_interaction HR_interaction LCI_interaction UCI_interaction ///
      p_interaction q_bh_by_analysis_type q_bh_by_analysis_type_transition AIC BIC

format beta_interaction se_interaction %9.4f
format HR_interaction LCI_interaction UCI_interaction %9.3f
format p_interaction q_bh_by_analysis_type q_bh_by_analysis_type_transition %9.4f
format AIC BIC %12.2f

label var analysis_type "Interaction analysis type"
label var xvar "First continuous exposure, standardized"
label var xvar_label "First exposure label"
label var zvar "Second continuous exposure, standardized"
label var zvar_label "Second exposure label"
label var beta_interaction "Coefficient for continuous interaction term"
label var se_interaction "SE for continuous interaction term"
label var HR_interaction "Interaction HR per 1-SD x 1-SD"
label var LCI_interaction "95% CI lower"
label var UCI_interaction "95% CI upper"
label var p_interaction "P-value for interaction"
label var q_bh_by_analysis_type "BH q-value within analysis type and model"
label var q_bh_by_analysis_type_transition "BH q-value within analysis type, model, and transition"

save "$OUT\SUPPTABLE_CONTINUOUS_ALL_INTERACTIONS.dta", replace

********************************************************************************
* 6. Export combined and type-specific sheets
********************************************************************************

local xlsx "$OUT\SUPPTABLE_CONTINUOUS_ALL_INTERACTIONS.xlsx"

* README sheet.
preserve
clear
set obs 12
gen str35 Field = ""
gen str220 Description = ""

replace Field = "Workbook" in 1
replace Description = "Continuous sensitivity analyses for biomarker, air pollution, and metabolomic PC interactions in Weibull transition models." in 1

replace Field = "Analysis types" in 2
replace Description = "1) biomarker_airpollution; 2) metabolome_biomarker; 3) metabolome_airpollution." in 2

replace Field = "Transitions" in 3
replace Description = "Transition 1=Healthy->PD; Transition 2=Healthy->Dementia; Transition 3=Healthy->Death." in 3

replace Field = "Model 1" in 4
replace Description = "Adjusted for sex, age, Non-White race/ethnicity, household size, SES residual z-score, and Townsend deprivation z-score." in 4

replace Field = "Model 2" in 5
replace Description = "Model 1 plus inverse LE8 z-score, comorbidity index, and self-rated health." in 5

replace Field = "Interaction HR" in 6
replace Description = "exp(beta_interaction), interpreted as departure from multiplicativity for one-SD higher values of both continuous exposures." in 6

replace Field = "BH q-value primary" in 7
replace Description = "q_bh_by_analysis_type: Benjamini-Hochberg correction applied separately within each analysis type and model." in 7

replace Field = "BH q-value secondary" in 8
replace Description = "q_bh_by_analysis_type_transition: Benjamini-Hochberg correction applied separately within each analysis type, model, and transition." in 8

replace Field = "Metabolome variables" in 9
replace Description = "zMETAB1-zMETAB15, corresponding to the metabolomic principal components used in the manuscript." in 9

replace Field = "Air pollution variables" in 10
replace Description = "Loge-transformed PM2.5, PM10, PM2.5-10, PM2.5 absorbance, NO2, NOx, and optional air pollution PCs if present." in 10

replace Field = "Spline_tests" in 11
replace Description = "Functional form checks for biomarkers, air pollutants, and metabolomic PCs; these are descriptive sensitivity tests." in 11

replace Field = "Output files" in 12
replace Description = "DTA and XLSX are saved in $OUT." in 12

export excel using "`xlsx'", sheet("README") firstrow(variables) replace
restore

export excel using "`xlsx'", sheet("All_continuous_interactions") firstrow(varlabels) sheetmodify

preserve
    keep if analysis_type=="biomarker_airpollution"
    export excel using "`xlsx'", sheet("Biomarker_airpollution") firstrow(varlabels) sheetmodify
restore

preserve
    keep if analysis_type=="metabolome_biomarker"
    export excel using "`xlsx'", sheet("Metabolome_biomarker") firstrow(varlabels) sheetmodify
restore

preserve
    keep if analysis_type=="metabolome_airpollution"
    export excel using "`xlsx'", sheet("Metabolome_airpollution") firstrow(varlabels) sheetmodify
restore

********************************************************************************
* 7. Restricted cubic spline sensitivity tests for functional form
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE_continuous_sensitivity_expanded", clear

local spline_exposures "z_nefl z_gfap"

foreach p of local pollutants {
    capture confirm variable z_`p'
    if !_rc local spline_exposures "`spline_exposures' z_`p'"
}

foreach m of local metabolome {
    capture confirm variable `m'
    if !_rc local spline_exposures "`spline_exposures' `m'"
}

tempname S
tempfile spline_results

postfile `S' ///
    str40 exposure str100 exposure_label ///
    byte transition str24 transition_label ///
    str12 model ///
    double N events chi2 df p_nonlin AIC_linear BIC_linear AIC_spline BIC_spline ///
    using "`spline_results'", replace

forvalues tr = 1/3 {
    local trlabel = cond(`tr'==1, "Healthy->PD", cond(`tr'==2, "Healthy->Dementia", "Healthy->Death"))

    foreach x of local spline_exposures {
        capture confirm variable `x'
        if _rc continue

        local xlab : variable label `x'
        if "`xlab'"=="" local xlab "`x'"

        foreach model in "Model 1" "Model 2" {

            if "`model'"=="Model 1" local covars "`covars_m1'"
            if "`model'"=="Model 2" local covars "`covars_m2'"

            capture noisily streg c.`x' `covars' ///
                if sample_final==1 & _trans`tr'==1, distribution(weibull) nohr

            if !_rc {
                scalar Nmodel = e(N)
                capture scalar Kmodel = e(k)
                if _rc scalar Kmodel = e(rank)
                scalar AICLIN = -2*e(ll) + 2*Kmodel
                scalar BICLIN = -2*e(ll) + ln(e(N))*Kmodel

                capture scalar Emodel = e(N_fail)
                if _rc {
                    quietly count if e(sample) & _d==1
                    scalar Emodel = r(N)
                }

                capture drop rcs_*
                capture noisily mkspline rcs_ = `x' if sample_final==1 & _trans`tr'==1, cubic nknots(4)

                if !_rc {
                    unab rcsvars : rcs_*
                    local first_rcs : word 1 of `rcsvars'
                    local nonlinear_rcs : list rcsvars - first_rcs

                    capture noisily streg `rcsvars' `covars' ///
                        if sample_final==1 & _trans`tr'==1, distribution(weibull) nohr

                    if !_rc {
                        capture scalar Kmodel = e(k)
                        if _rc scalar Kmodel = e(rank)
                        scalar AICSPL = -2*e(ll) + 2*Kmodel
                        scalar BICSPL = -2*e(ll) + ln(e(N))*Kmodel

                        if "`nonlinear_rcs'" != "" {
                            capture noisily testparm `nonlinear_rcs'
                            if !_rc {
                                post `S' ("`x'") ("`xlab'") (`tr') ("`trlabel'") ("`model'") ///
                                    (Nmodel) (Emodel) (r(chi2)) (r(df)) (r(p)) ///
                                    (AICLIN) (BICLIN) (AICSPL) (BICSPL)
                            }
                        }
                        else {
                            post `S' ("`x'") ("`xlab'") (`tr') ("`trlabel'") ("`model'") ///
                                (Nmodel) (Emodel) (.) (.) (.) ///
                                (AICLIN) (BICLIN) (AICSPL) (BICSPL)
                        }
                    }
                }
            }
        }
    }
}

postclose `S'

use "`spline_results'", clear
format chi2 %9.3f
format p_nonlin %9.4f
format AIC_linear BIC_linear AIC_spline BIC_spline %12.2f

label var chi2 "Wald chi-square for nonlinear spline terms"
label var df "Degrees of freedom for nonlinear spline terms"
label var p_nonlin "P-value for nonlinear spline terms"
label var AIC_linear "AIC, linear exposure"
label var BIC_linear "BIC, linear exposure"
label var AIC_spline "AIC, spline exposure"
label var BIC_spline "BIC, spline exposure"

save "$OUT\SUPPTABLE_CONTINUOUS_SPLINE_FUNCTIONAL_FORM_TESTS_EXPANDED.dta", replace

export excel using "`xlsx'", sheet("Spline_tests") firstrow(varlabels) sheetmodify

********************************************************************************
* 8. Optional margins plots for key continuous PM2.5 interaction models
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE_continuous_sensitivity_expanded", clear

* Biomarker x PM2.5 plots.
foreach b in nefl gfap {
    capture confirm variable z_`b'
    if _rc continue

    forvalues tr = 1/3 {
        local trlabel = cond(`tr'==1, "Healthy to PD", cond(`tr'==2, "Healthy to Dementia", "Healthy to Death"))

        capture noisily streg c.z_`b'##c.z_lnPM2point5_2010 `covars_m2' ///
            if sample_final==1 & _trans`tr'==1, distribution(weibull)

        if !_rc {
            capture noisily margins, at(z_`b'=(-1 0 1) z_lnPM2point5_2010=(-2 -1 0 1 2)) predict(hazard) post
            if !_rc {
                marginsplot, ///
                    title("`b' x PM2.5, `trlabel'") ///
                    ytitle("Predicted hazard") ///
                    xtitle("PM2.5, z-score") ///
                    legend(order(1 "`b'=-1 SD" 2 "`b'=mean" 3 "`b'=+1 SD") pos(6) row(1)) ///
                    name(mp_`b'_pm25_tr`tr', replace)
                graph export "$FIG\CONTINUOUS_`b'_PM25_TRANS`tr'_MARGINSPLOT.tif", replace width(2400)
                graph save "$FIG\CONTINUOUS_`b'_PM25_TRANS`tr'_MARGINSPLOT.gph", replace
            }
        }
    }
}

* Metabolome x PM2.5 plots for PCs that are often highlighted in the manuscript.
foreach m in zMETAB1 zMETAB8 zMETAB10 zMETAB13 {
    capture confirm variable `m'
    if _rc continue

    forvalues tr = 1/3 {
        local trlabel = cond(`tr'==1, "Healthy to PD", cond(`tr'==2, "Healthy to Dementia", "Healthy to Death"))

        capture noisily streg c.`m'##c.z_lnPM2point5_2010 `covars_m2' ///
            if sample_final==1 & _trans`tr'==1, distribution(weibull)

        if !_rc {
            capture noisily margins, at(`m'=(-1 0 1) z_lnPM2point5_2010=(-2 -1 0 1 2)) predict(hazard) post
            if !_rc {
                marginsplot, ///
                    title("`m' x PM2.5, `trlabel'") ///
                    ytitle("Predicted hazard") ///
                    xtitle("PM2.5, z-score") ///
                    legend(order(1 "`m'=-1 SD" 2 "`m'=mean" 3 "`m'=+1 SD") pos(6) row(1)) ///
                    name(mp_`m'_pm25_tr`tr', replace)
                graph export "$FIG\CONTINUOUS_`m'_PM25_TRANS`tr'_MARGINSPLOT.tif", replace width(2400)
                graph save "$FIG\CONTINUOUS_`m'_PM25_TRANS`tr'_MARGINSPLOT.gph", replace
            }
        }
    }
}

capture log close


***********************************************************************************************


************************************
capture log close

version 18.0
set more off

********************************************************************************
* CATEGORICAL MAIN INTERACTION ANALYSIS, CONSOLIDATED SUPPLEMENTARY DATASHEET
* Project: UKB NfL/GFAP, air pollution, metabolome, dementia, PD, mortality
*
* Purpose:
*   Create a consolidated supplementary datasheet for the main categorical
*   interaction findings using the original median-split biomarker and
*   air-pollution variables used in the manuscript.
*
*   Includes:
*     1) Categorical NfL/GFAP x categorical air pollution
*     2) Metabolomic PCs x categorical NfL/GFAP
*     3) Metabolomic PCs x categorical air pollution
*
* Notes:
*   - If binary median-split variables already exist, the code can use them.
*   - If they do not exist, the code creates high-vs-low variables from the
*     median within sample_final==1.
*   - Metabolomic PCs are treated as continuous standardized PC scores, matching
*     Figures 3 and 4 in the manuscript.
*
* BH multiple testing correction:
*   Benjamini-Hochberg q-values are calculated separately by analysis type:
*     - biomarker_airpollution_categorical
*     - metabolome_biomarker_categorical
*     - metabolome_airpollution_categorical
*
* Main Excel output:
*   SUPPDATASHEET_CATEGORICAL_MAIN_INTERACTIONS.xlsx
********************************************************************************

global ROOT    "D:\16GBBACKUPUSB\BACKUP_USB_SEPTEMBER2014\May Baydoun_folder\UK_BIOBANK_PROJECT\UKB_PAPER11_NFLGFAPDEMPDMORT_METAB"
global DATA    "$ROOT\DATA_UPDATED"
global OUT     "$ROOT\OUTPUT_UPDATED"
global FIG     "$ROOT\FIGURES_UPDATED"

capture mkdir "$OUT"
capture mkdir "$FIG"

capture log using "$OUT\CATEGORICAL_MAIN_INTERACTIONS_CONSOLIDATED.smcl", replace

********************************************************************************
* 0. Load analytic file
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE", clear

********************************************************************************
* 1. Define variables and create/use median-split categorical variables
********************************************************************************

local biomarkers_cont "nefl gfap"
local pollutants_cont "lnPM2point5_2010 lnPM10_2010 lnPM2point5_10_2010 lnPM2point5_abs_2010 lnNO2_2010 lnNOX_2010"

capture confirm variable AIRPOLLUTION1
if !_rc local pollutants_cont "`pollutants_cont' AIRPOLLUTION1"
capture confirm variable AIRPOLLUTION2
if !_rc local pollutants_cont "`pollutants_cont' AIRPOLLUTION2"

capture label variable nefl "NfL"
capture label variable gfap "GFAP"
capture label variable lnPM2point5_2010     "PM2.5, 2010, loge"
capture label variable lnPM10_2010          "PM10, 2010, loge"
capture label variable lnPM2point5_10_2010  "PM2.5-10, 2010, loge"
capture label variable lnPM2point5_abs_2010 "PM2.5 absorbance, 2010, loge"
capture label variable lnNO2_2010           "NO2, 2010, loge"
capture label variable lnNOX_2010           "NOx, 2010, loge"
capture label variable AIRPOLLUTION1        "Air-pollution PC1"
capture label variable AIRPOLLUTION2        "Air-pollution PC2"

capture label define highlow 0 "Below/equal median" 1 "Above median", replace

local biomarkers_cat ""
foreach v of local biomarkers_cont {
    capture confirm variable `v'
    if !_rc {
        capture confirm variable cat_`v'
        if _rc {
            quietly summarize `v' if sample_final==1, detail
            scalar med_`v' = r(p50)
            gen byte cat_`v' = (`v' > med_`v') if sample_final==1 & !missing(`v')
            label values cat_`v' highlow
            local vlab : variable label `v'
            if "`vlab'"=="" local vlab "`v'"
            label variable cat_`v' "`vlab', above vs. below/equal median"
        }
        local biomarkers_cat "`biomarkers_cat' cat_`v'"
    }
}

local pollutants_cat ""
foreach v of local pollutants_cont {
    capture confirm variable `v'
    if !_rc {
        capture confirm variable cat_`v'
        if _rc {
            quietly summarize `v' if sample_final==1, detail
            scalar med_`v' = r(p50)
            gen byte cat_`v' = (`v' > med_`v') if sample_final==1 & !missing(`v')
            label values cat_`v' highlow
            local vlab : variable label `v'
            if "`vlab'"=="" local vlab "`v'"
            label variable cat_`v' "`vlab', above vs. below/equal median"
        }
        local pollutants_cat "`pollutants_cat' cat_`v'"
    }
}

local metabolome ""
forvalues i = 1/15 {
    capture confirm variable zMETAB`i'
    if !_rc {
        local metabolome "`metabolome' zMETAB`i'"
        capture label variable zMETAB`i' "Standardized metabolomic PC`i'"
    }
    else {
        capture confirm variable METAB`i'
        if !_rc {
            capture drop zMETAB`i'
            quietly egen zMETAB`i' = std(METAB`i') if sample_final==1
            label variable zMETAB`i' "Standardized metabolomic PC`i'"
            local metabolome "`metabolome' zMETAB`i'"
        }
    }
}

save "$DATA\finaldata_unimputedfin_MULTISTATE_categorical_main_interactions", replace

********************************************************************************
* 2. Helper program for Benjamini-Hochberg q-values
********************************************************************************

capture program drop make_bh_q
program define make_bh_q
    syntax varname, PVAR(name) QVAR(name)

    tempvar obsid rank m rawq

    capture drop `qvar'
    gen long `obsid' = _n

    preserve
        keep `obsid' `varlist' `pvar'
        keep if !missing(`pvar') & !missing(`varlist')

        sort `varlist' `pvar' `obsid'
        by `varlist': gen long `rank' = _n
        by `varlist': gen long `m' = _N
        gen double `rawq' = `pvar' * `m' / `rank'

        gsort `varlist' -`rank'
        gen double `qvar' = .
        by `varlist': replace `qvar' = `rawq' if _n == 1
        by `varlist': replace `qvar' = min(`rawq', `qvar'[_n-1]) if _n > 1
        replace `qvar' = min(`qvar', 1)

        keep `obsid' `qvar'
        tempfile qtmp
        save "`qtmp'", replace
    restore

    merge 1:1 `obsid' using "`qtmp'", nogen
    drop `obsid'
end

********************************************************************************
* 3. Helper program to post categorical/continuous interaction results
********************************************************************************

capture program drop post_interaction_model
program define post_interaction_model
    syntax, HANDLE(name) ANALYSISTYPE(string) XVAR(name) ZVAR(name) ///
        XTYPE(string) ZTYPE(string) TRANSition(integer) MODEL(string) COVARS(string)

    local trlabel = cond(`transition'==1, "Healthy->PD", ///
                    cond(`transition'==2, "Healthy->Dementia", "Healthy->Death"))

    local xlab : variable label `xvar'
    if "`xlab'"=="" local xlab "`xvar'"

    local zlab : variable label `zvar'
    if "`zlab'"=="" local zlab "`zvar'"

    if "`xtype'"=="binary" & "`ztype'"=="binary" {
        local modelterm i.`xvar'##i.`zvar'
        local intterm 1.`xvar'#1.`zvar'
    }
    else if "`xtype'"=="continuous" & "`ztype'"=="binary" {
        local modelterm c.`xvar'##i.`zvar'
        local intterm c.`xvar'#1.`zvar'
    }
    else if "`xtype'"=="binary" & "`ztype'"=="continuous" {
        local modelterm i.`xvar'##c.`zvar'
        local intterm 1.`xvar'#c.`zvar'
    }
    else {
        local modelterm c.`xvar'##c.`zvar'
        local intterm c.`xvar'#c.`zvar'
    }

    capture noisily streg `modelterm' `covars' ///
        if sample_final==1 & _trans`transition'==1, distribution(weibull) nohr

    if !_rc {
        capture scalar bint = _b[`intterm']
        if _rc exit

        scalar seint = _se[`intterm']
        scalar zstat = bint/seint
        scalar pint  = 2*normal(-abs(zstat))
        scalar hrint = exp(bint)
        scalar lci   = exp(bint - invnormal(0.975)*seint)
        scalar uci   = exp(bint + invnormal(0.975)*seint)

        scalar Nmodel = e(N)
        capture scalar Kmodel = e(k)
        if _rc scalar Kmodel = e(rank)
        scalar AICm = -2*e(ll) + 2*Kmodel
        scalar BICm = -2*e(ll) + ln(e(N))*Kmodel

        capture scalar Emodel = e(N_fail)
        if _rc {
            quietly count if e(sample) & _d==1
            scalar Emodel = r(N)
        }

        scalar jointHR  = .
        scalar jointLCI = .
        scalar jointUCI = .
        scalar jointP   = .

        if "`xtype'"=="binary" & "`ztype'"=="binary" {
            capture noisily lincom 1.`xvar' + 1.`zvar' + 1.`xvar'#1.`zvar'
            if !_rc {
                scalar jointHR  = exp(r(estimate))
                scalar jointLCI = exp(r(lb))
                scalar jointUCI = exp(r(ub))
                scalar jointP   = r(p)
            }
        }

        post `handle' ///
            ("`analysistype'") ///
            ("`xvar'") ("`xlab'") ("`xtype'") ///
            ("`zvar'") ("`zlab'") ("`ztype'") ///
            (`transition') ("`trlabel'") ("`model'") ///
            (Nmodel) (Emodel) ///
            (bint) (seint) (hrint) (lci) (uci) (pint) ///
            (jointHR) (jointLCI) (jointUCI) (jointP) ///
            (AICm) (BICm)
    }
end

********************************************************************************
* 4. Run categorical main interaction models
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE_categorical_main_interactions", clear

local covars_m1 "SEX AGE NonWhite householdsize SESres ztownsend"
local covars_m2 "zLE8_TOTALSCOREinv SEX AGE NonWhite householdsize SESres ztownsend comorbid srhbr"

tempname H
tempfile all_results

postfile `H' ///
    str45 analysis_type ///
    str50 xvar str110 xvar_label str12 xvar_type ///
    str50 zvar str110 zvar_label str12 zvar_type ///
    byte transition str24 transition_label ///
    str12 model ///
    double N events ///
    double beta_interaction se_interaction HR_interaction LCI_interaction UCI_interaction p_interaction ///
    double joint_HR joint_LCI joint_UCI joint_p ///
    double AIC BIC ///
    using "`all_results'", replace

forvalues tr = 1/3 {

    foreach b of local biomarkers_cat {
        capture confirm variable `b'
        if _rc continue

        foreach p of local pollutants_cat {
            capture confirm variable `p'
            if _rc continue

            post_interaction_model, handle(`H') ///
                analysistype("biomarker_airpollution_categorical") ///
                xvar(`b') zvar(`p') xtype("binary") ztype("binary") ///
                transition(`tr') model("Model 1") covars("`covars_m1'")

            post_interaction_model, handle(`H') ///
                analysistype("biomarker_airpollution_categorical") ///
                xvar(`b') zvar(`p') xtype("binary") ztype("binary") ///
                transition(`tr') model("Model 2") covars("`covars_m2'")
        }
    }

    foreach m of local metabolome {
        capture confirm variable `m'
        if _rc continue

        foreach b of local biomarkers_cat {
            capture confirm variable `b'
            if _rc continue

            post_interaction_model, handle(`H') ///
                analysistype("metabolome_biomarker_categorical") ///
                xvar(`m') zvar(`b') xtype("continuous") ztype("binary") ///
                transition(`tr') model("Model 1") covars("`covars_m1'")

            post_interaction_model, handle(`H') ///
                analysistype("metabolome_biomarker_categorical") ///
                xvar(`m') zvar(`b') xtype("continuous") ztype("binary") ///
                transition(`tr') model("Model 2") covars("`covars_m2'")
        }
    }

    foreach m of local metabolome {
        capture confirm variable `m'
        if _rc continue

        foreach p of local pollutants_cat {
            capture confirm variable `p'
            if _rc continue

            post_interaction_model, handle(`H') ///
                analysistype("metabolome_airpollution_categorical") ///
                xvar(`m') zvar(`p') xtype("continuous") ztype("binary") ///
                transition(`tr') model("Model 1") covars("`covars_m1'")

            post_interaction_model, handle(`H') ///
                analysistype("metabolome_airpollution_categorical") ///
                xvar(`m') zvar(`p') xtype("continuous") ztype("binary") ///
                transition(`tr') model("Model 2") covars("`covars_m2'")
        }
    }
}

postclose `H'

use "`all_results'", clear

********************************************************************************
* 5. BH q-values, per type of analysis
********************************************************************************

gen str100 bh_family_type_model = analysis_type + "_" + model
make_bh_q bh_family_type_model, pvar(p_interaction) qvar(q_bh_by_analysis_type)

gen str120 bh_family_type_model_transition = analysis_type + "_" + model + "_transition" + string(transition)
make_bh_q bh_family_type_model_transition, pvar(p_interaction) qvar(q_bh_by_analysis_type_transition)

order analysis_type model transition transition_label ///
      xvar xvar_label xvar_type zvar zvar_label zvar_type ///
      N events beta_interaction se_interaction HR_interaction LCI_interaction UCI_interaction ///
      p_interaction q_bh_by_analysis_type q_bh_by_analysis_type_transition ///
      joint_HR joint_LCI joint_UCI joint_p AIC BIC

format beta_interaction se_interaction %9.4f
format HR_interaction LCI_interaction UCI_interaction joint_HR joint_LCI joint_UCI %9.3f
format p_interaction q_bh_by_analysis_type q_bh_by_analysis_type_transition joint_p %9.4f
format AIC BIC %12.2f

label var analysis_type "Interaction analysis type"
label var xvar "First exposure"
label var xvar_label "First exposure label"
label var xvar_type "First exposure type"
label var zvar "Second exposure"
label var zvar_label "Second exposure label"
label var zvar_type "Second exposure type"
label var beta_interaction "Coefficient for interaction term"
label var se_interaction "SE for interaction term"
label var HR_interaction "Interaction HR, departure from multiplicativity"
label var LCI_interaction "95% CI lower"
label var UCI_interaction "95% CI upper"
label var p_interaction "P-value for interaction"
label var q_bh_by_analysis_type "BH q-value within analysis type and model"
label var q_bh_by_analysis_type_transition "BH q-value within analysis type, model, and transition"
label var joint_HR "Joint HR for high/high group, binary-by-binary only"
label var joint_LCI "Joint HR 95% CI lower, binary-by-binary only"
label var joint_UCI "Joint HR 95% CI upper, binary-by-binary only"
label var joint_p "P-value for joint HR, binary-by-binary only"

save "$OUT\SUPPDATASHEET_CATEGORICAL_MAIN_INTERACTIONS.dta", replace

********************************************************************************
* 6. Export consolidated supplementary datasheet
********************************************************************************

local xlsx "$OUT\SUPPDATASHEET_CATEGORICAL_MAIN_INTERACTIONS.xlsx"

preserve
clear
set obs 14
gen str45 Field = ""
gen str240 Description = ""

replace Field = "Workbook" in 1
replace Description = "Consolidated main categorical interaction findings using median-split NfL/GFAP and air-pollution variables, plus metabolomic PC interactions." in 1

replace Field = "Analysis types" in 2
replace Description = "1) biomarker_airpollution_categorical; 2) metabolome_biomarker_categorical; 3) metabolome_airpollution_categorical." in 2

replace Field = "Transitions" in 3
replace Description = "Transition 1=Healthy->PD; Transition 2=Healthy->Dementia; Transition 3=Healthy->Death." in 3

replace Field = "Biomarkers" in 4
replace Description = "NfL and GFAP are modeled as above vs. below/equal median categorical variables." in 4

replace Field = "Air pollution" in 5
replace Description = "PM2.5, PM10, PM2.5-10, PM2.5 absorbance, NO2, NOx, and optional air-pollution PCs are modeled as above vs. below/equal median categorical variables." in 5

replace Field = "Metabolome" in 6
replace Description = "zMETAB1-zMETAB15 are standardized continuous metabolomic principal components." in 6

replace Field = "Model 1" in 7
replace Description = "Adjusted for sex, age, Non-White race/ethnicity, household size, SES residual z-score, and Townsend deprivation z-score." in 7

replace Field = "Model 2" in 8
replace Description = "Model 1 plus inverse LE8 z-score, comorbidity index, and self-rated health." in 8

replace Field = "Interaction HR" in 9
replace Description = "exp(beta_interaction), interpreted as departure from multiplicativity." in 9

replace Field = "Joint HR" in 10
replace Description = "For binary-by-binary biomarker-air pollution models only, joint_HR is exp(beta_biomarker + beta_airpollution + beta_interaction)." in 10

replace Field = "BH q-value primary" in 11
replace Description = "q_bh_by_analysis_type: Benjamini-Hochberg correction applied separately within each analysis type and model." in 11

replace Field = "BH q-value secondary" in 12
replace Description = "q_bh_by_analysis_type_transition: Benjamini-Hochberg correction applied separately within each analysis type, model, and transition." in 12

replace Field = "Primary interpretation" in 13
replace Description = "Use Model 2 for manuscript-consistent fully adjusted models; nominal P-values identify exploratory signals, with BH q-values reported for sensitivity." in 13

replace Field = "Output files" in 14
replace Description = "DTA and XLSX are saved in $OUT." in 14

export excel using "`xlsx'", sheet("README") firstrow(variables) replace
restore

export excel using "`xlsx'", sheet("All_categorical_interactions") firstrow(varlabels) sheetmodify

preserve
    keep if analysis_type=="biomarker_airpollution_categorical"
    export excel using "`xlsx'", sheet("Biomarker_airpollution") firstrow(varlabels) sheetmodify
restore

preserve
    keep if analysis_type=="metabolome_biomarker_categorical"
    export excel using "`xlsx'", sheet("Metabolome_biomarker") firstrow(varlabels) sheetmodify
restore

preserve
    keep if analysis_type=="metabolome_airpollution_categorical"
    export excel using "`xlsx'", sheet("Metabolome_airpollution") firstrow(varlabels) sheetmodify
restore

********************************************************************************
* 7. Key findings sheet
********************************************************************************

preserve
    keep if model=="Model 2"

    gen byte nominal_p05 = (p_interaction < 0.05) if !missing(p_interaction)
    gen byte fdr_q10_type = (q_bh_by_analysis_type < 0.10) if !missing(q_bh_by_analysis_type)
    gen byte fdr_q10_transition = (q_bh_by_analysis_type_transition < 0.10) if !missing(q_bh_by_analysis_type_transition)

    keep if nominal_p05==1 | fdr_q10_type==1 | fdr_q10_transition==1

    sort analysis_type transition p_interaction
    export excel using "`xlsx'", sheet("Key_findings") firstrow(varlabels) sheetmodify
restore

********************************************************************************
* 8. Optional margins plots for selected categorical PM2.5 models
********************************************************************************

use "$DATA\finaldata_unimputedfin_MULTISTATE_categorical_main_interactions", clear

foreach b in cat_nefl cat_gfap {
    capture confirm variable `b'
    if _rc continue

    capture confirm variable cat_lnPM2point5_2010
    if _rc continue

    forvalues tr = 1/3 {
        local trlabel = cond(`tr'==1, "Healthy to PD", cond(`tr'==2, "Healthy to Dementia", "Healthy to Death"))

        capture noisily streg i.`b'##i.cat_lnPM2point5_2010 `covars_m2' ///
            if sample_final==1 & _trans`tr'==1, distribution(weibull)

        if !_rc {
            capture noisily margins `b'#cat_lnPM2point5_2010, predict(hazard) post
            if !_rc {
                marginsplot, ///
                    title("`b' x PM2.5 categorical, `trlabel'") ///
                    ytitle("Predicted hazard") ///
                    xtitle("Median-split exposure groups") ///
                    name(mp_`b'_pm25cat_tr`tr', replace)
                graph export "$FIG\CATEGORICAL_`b'_PM25_TRANS`tr'_MARGINSPLOT.tif", replace width(2400)
                graph save "$FIG\CATEGORICAL_`b'_PM25_TRANS`tr'_MARGINSPLOT.gph", replace
            }
        }
    }
}

capture log close

********************************************************************************

