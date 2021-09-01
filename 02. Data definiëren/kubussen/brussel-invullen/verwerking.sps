* Encoding: UTF-8.
*** VAST GEDEELTE ***.
dataset declare.
DATA LIST FREE /var0.
BEGIN DATA
0
END DATA.
DATASET NAME dataset0 WINDOW=FRONT.

*** VUL AANTAL PERIODEN AAN, bijvoorbeeld 10 jaren wordt per=1 to 10***.
***De XSave werkt enkel indien de map 'C:/temp/kubusbrussel' bestaat***.
    
 LOOP per=1 to 9. 
XSAVE outfile='C:\temp\kubusbrussel\period.sav' /keep all. 
END LOOP. 
EXECUTE. 
GET file 'C:\temp\kubusbrussel\period.sav'. 
DATASET NAME ontdubbeld WINDOW=FRONT.

*** VUL AANTAL GEBIEDEN AAN***.
LOOP geo=1 to 20. 
XSAVE outfile='C:\temp\kubusbrussel\geoitem.sav' /keep all. 
END LOOP. 
EXECUTE. 
GET file 'C:\temp\kubusbrussel\geoitem.sav'. 
DATASET NAME ontdubbeld WINDOW=FRONT.

*** VUL AANTAL ITEMS EERSTE DIMENSIE AAN***.
LOOP dim1=1 to 10. 
XSAVE outfile='C:\temp\kubusbrussel\dim1.sav' /keep all. 
END LOOP. 
EXECUTE. 
GET file 'C:\temp\kubusbrussel\dim1.sav'. 
DATASET NAME ontdubbeld WINDOW=FRONT.

*** VUL AANTAL ITEMS TWEEDE DIMENSIE AAN***.
LOOP dim2=1 to 12. 
XSAVE outfile='C:\temp\kubusbrussel\dim2.sav' /keep all. 
END LOOP. 
EXECUTE. 
GET file 'C:\temp\kubusbrussel\dim2.sav'. 
DATASET NAME ontdubbeld WINDOW=FRONT.

*** KOPIEER EN PAS AAN INDIEN MEER DIMENSIES ***.

*** PAS NIETS AAN***.
compute var0=$casenum.
EXECUTE.

***Zorg ervoor dat de excel in de juiste map staat***.

GET DATA
  /TYPE=XLSX
  /FILE='C:\temp\kubusbrussel\kubusbrussel.xlsx'
  /SHEET=name 'period'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.
DATASET NAME toevoegen WINDOW=FRONT.
compute per=$casenum.
EXECUTE.

dataset activate ontdubbeld.
sort cases per (a).
MATCH FILES /FILE=*
  /TABLE='toevoegen'
  /BY per.
EXECUTE.

GET DATA
  /TYPE=XLSX
  /FILE='C:\temp\kubusbrussel\kubusbrussel.xlsx'
  /SHEET=name 'geoitem'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.
DATASET NAME toevoegen WINDOW=FRONT.
compute geo=$casenum.
EXECUTE.

dataset activate ontdubbeld.
sort cases geo (a).
MATCH FILES /FILE=*
  /TABLE='toevoegen'
  /BY geo.
EXECUTE.

GET DATA
  /TYPE=XLSX
  /FILE='C:\temp\kubusbrussel\kubusbrussel.xlsx'
  /SHEET=name 'dim1'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.
DATASET NAME toevoegen WINDOW=FRONT.
compute dim1=$casenum.
EXECUTE.

dataset activate ontdubbeld.
sort cases dim1 (a).
MATCH FILES /FILE=*
  /TABLE='toevoegen'
  /BY dim1.
EXECUTE.

*** KOPIEER BLOK HIERONDER INDIEN MEER DIMENSIES***.
GET DATA
  /TYPE=XLSX
  /FILE='C:\temp\kubusbrussel\kubusbrussel.xlsx'
  /SHEET=name 'dim2'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.
DATASET NAME toevoegen WINDOW=FRONT.
compute dim2=$casenum.
EXECUTE.

dataset activate ontdubbeld.
sort cases dim2 (a).
MATCH FILES /FILE=*
  /TABLE='toevoegen'
  /BY dim2.
EXECUTE.
*** EINDE TE KOPIËREN BLOK***.

sort cases var0 (a).
* DELETE OOK VAR3, VAR4 etc INDIEN VERLENGD. Al deze variabelen zijn slechts hulpvariabelen.

delete variables per geo dim1 dim2 var0.


* AFWERKING (specifiek per kubus).
string geolevel (a15).
if period < 2019 geolevel="gemeente2018".
if period >=2019 geolevel="gemeente".
EXECUTE.

compute kubus2501_co2_emissie=-99999.
EXECUTE.

SAVE TRANSLATE OUTFILE='C:\temp\kubusbrussel\upload_kubus2501_co2_emissie.xlsx'
  /TYPE=XLS
  /VERSION=12
  /MAP
  /FIELDNAMES VALUE=NAMES
  /CELLS=VALUES
/replace.

delete variables kubus2501_co2_emissie.
compute kubus2501_verbruik=-99999.
EXECUTE.

SAVE TRANSLATE OUTFILE='C:\temp\kubusbrussel\upload_kubus2501_verbruik.xlsx'
  /TYPE=XLS
  /VERSION=12
  /MAP
  /FIELDNAMES VALUE=NAMES
  /CELLS=VALUES
/replace.
* EINDE AFWERKING.
