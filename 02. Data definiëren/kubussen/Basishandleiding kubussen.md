
# Handleiding aanmaak en inlezen kubussen in Swing Studio

Disclaimer: dit is de neerslag van de ervaring van Stad Antwerpen en provincies.incijfers.be, en geen officiële documentatie. Als je een fout ziet of een suggestie voor verbetering hebt, open dan [een Issue](https://github.com/provinciesincijfers/JiveDocumentation/issues)!

## Inhoud


1.	Inleiding

    1.1 Conceptueel kader
    
    1.2 Voor- en nadelen

2.	Aanmaak bestand

    2.1.	Reeds bestaande kubus
    
    2.2.	Nieuwe kubus
   
3.	Importeren kubusbestand

4.	Bewerken dimensies en onderwerp

    4.1.	Onderwerp
    
    4.2.	Dimensies
    
    4.3.	Dimensie-aggregatie
    
5.	Onderbrengen in de themaboom
6.	Wijzigingen in de structuur van je kubus

❕ *Dit is een algemene beginnershandleiding. Neem dit document eerst door om de basics te leren kennen, maar check vooraleer je data begint in te laden ook de [guidelines rond kubussen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/Kubussen%20guidelines.md) die we voor Provincies in Cijfers hebben afgesproken.* 

❕ ***Je kunt best eerst de structuur van je kubus opladen, zodat Swing enkel nog de data in de juiste structuur moet steken*** (zie hoofdstuk 2). *Dit kan op basis van één excelbestand. Zie hiervoor de [map met voorbeelden](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/02.%20Data%20defini%C3%ABren/kubussen/voorbeelden) en deze pagina op het [Swing Support platform](https://support.swing.eu/document/Voorbeelden-van-importbestanden-voor-Swing-5). (als je deze laatste pagina niet kunt zien, contacteer dan de Swing Helpdesk)*
*Je vindt [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/voorbeelden/voorbeeld_metadata_kubus_onderwijs_20171127.xlsx) een voorbeeldbestand van Metadata over kubusdimensies en dimensie-aggregatie.*

## 1.	Inleiding

In Swing bestaat de mogelijkheid gegevens in te lezen in kubusvorm. **Deze vorm laat toe om gegevens in te lezen met verschillende kenmerken, die bij raadpleging onderling gekruist kunnen worden.** Zo kan men bevolkingsgegevens inlezen met de kenmerken nationaliteitsgroep, geslacht en leeftijd. Men kan dan via deze vorm bevolkingsgegevens opvragen van bijvoorbeeld een nationaliteitsgroep naar leeftijdsgroepen.
Deze nota geeft aan hoe je een kubus moet aanmaken en inlezen in de Studio van Swing.

### 1.1 Conceptueel kader
* **Dimensie**: conceptueel bestaande manier om de realiteit in te delen (vb. het concept leeftijd)
* **Dimensieniveau**: de manier waarop dit concept zich uit in de kubus zoals je hem inleest (vb. leeftijdsindeling per 5 jaar)
* **Dimensieniveau item**: één object binnen het dimensieniveau (vb. 0 te.m. 4 jarigen)
* **Dimensieniveau itemcode**: de code waarmee je verwijst naar een dimensieniveau item (vb. "X" verwijst naar "0 te.m. 4 jarigen")
* **Dimensie-aggregatie**: de manier waarop Swing een gedetailleerd dimensieniveau vertaalt naar een algemener dimensiniveau, binnen dezelfde dimensie. Voorbeeld: "0 t.e.m. 4-jarigen" en "5 t.e.m. 9-jarigen" in het dimensieniveau "leeftijden per 5 jaar" kunnen vertaald worden naar "0 t.e.m. 9 jarigen" in het dimensieniveau "leeftijden per 10 jaar", uiteraard enkel indien beide indelingen tot dezelfde dimensie "leeftijd" behoren.

### 1.1 Voor- en nadelen

**Voordelen:**
- de eindgebruiker (of de ondersteuner) heeft veel meer mogelijkheden om ad-hoc vragen toch in Swing te beantwoorden
- je kan heel veel verwerkingen van een bron in één keer opladen
- je kan de ingeladen data voor vanalles hergebruiken binnen swing

**Nadelen:**
- iets complexer voor eindgebruikers om te gebruiken, vooral om percentages te berekenen
- fragiel: als een dimensieniveau lichtjes wijzigt, heb je veel beheer binnen Swing

**Quirks van Swing:**
- geen overzicht van "kubussen die een bepaal dimensieniveau gebruiken"
- geen controle bij inladen op "laat toe om al of niet nieuwe dimensieniveaucodes te maken"
- sommige lege cellen in Excel worden toch als een dimensiecode herkend
- je kan niet kiezen welke dimensieaggregaties mogen toegpast worden op de kubus
- je kan wel items (aggregeer van x naar y, dimensie-items, etc) toevoegen via excel, maar niet wegnemen via excel. Als je dus in je metadata-excel de rij "X aggregeert naar Y" vervangt door "Xa aggregeert naar Y", dan wordt de rij voor X niet verwijderd uit Swing.

## 2.	Aanmaak bestand

Je kunt best twee bestanden aanmaken:
- een met de data
- een met de metadata
- 
### Data

In eerste instantie wordt vanuit het betreffende basisbestand een bestand aangemaakt in een formaat dat Swing Studio kan inlezen.
**Een bestand voor kubussen bestaat uit 5 types velden:**
-	Periode: jaar
-	Gebiedsniveau: buurt (evt. wijk, postzone, district, stad)
-	Gebieden: de buurtcodes (evt. wijkcodes, …) 
-	Onderwerp: dit is de teller of de aantallen
-	Dimensieniveaus: dit zijn de kenmerken (bv nationaliteit, leeftijdsindeling, economische sectoren). Er kunnen meerdere dimensies zijn, dus ook meerdere velden.

Voor zeker ook de [algemene principes data inlezen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/04.%20Data%20inlezen/Algemene%20principes%20data%20inlezen.md).

**Hou bij het design rekening met:**
- je kan **slechts één onderwerp opladen**. Maar je kan wel meerdere identieke kubussen opladen met andere onderwerpen, en die kubussen combineren.
- kies **per dimensie slechts één dimensieniveau**. Als je meerdere leeftijdsindelingen wilt, laadt dan de meest gedetailleerde in, en gebruik aggregaties om er andere uit af te leiden
- **het product van je dimensieniveauitems (2 geslachten * 10 leeftijdscategorieen = 20 combinaties) moet kleiner zijn dan 100.000**. Iedereen moet zichzelf terugvinden in elk dimensieniveau! Als bijvoorbeeld een dimensieniveau niet van toepassing is op een deel van de bevolking, dan moet je een categorie "niet van toepassing" voorzien.

### Metadata
Maak een excel met deze tabbladen:
- Indicator: dit bevat de metadata over het onderwerp zelf. Dit verschijnt in de lijst Indicators en later in de themaboom. [Meer info over definiëren van onderwerpen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Informatie%20over%20de%20belangrijkste%20velden.md).
- Dimensions: hier definieer je de Dimensies die je nodig hebt. Reeds bestaande dimensies hoef je niet op te nemen. Er kan per Dimensions lechts één Dimension Level opgenomen worden!
- Dimension levels: hier definieer je de dimensieniveaus van je data. Dit zijn de effectieve kruisingen in je databestand.
- Een tabblad per dimension level met de dimensie-items: hier omschrijf je de codes die in je databestand kunnen voorkomen.

Lees dit éérst in, best in volgorde zoals hier beschreven.
Een voorbeeld van een dergelijke Excel [vind je hier](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/02.%20Data%20defini%C3%ABren/kubussen/voorbeelden/voorbeeld_metadata_kubus_onderwijs_20171127.xlsx). In de map voorbeelden binnen de huidige map vind je nog enkele voorbeelden.



### 2.1.	Reeds bestaande kubus

Bij aanmaak van een kubus die reeds bestaat, dien je al deze velden op dezelfde manier te benoemen als ervoor. Normaal gezien wordt voor elke kubus een script gemaakt om de gegevens vanuit een basisbestand in het juiste formaat te krijgen en worden de velden automatisch correct benoemd.
 

### 2.2.	Nieuwe kubus

Indien de kubus nog aangemaakt moet worden, onderneem dan volgende stappen:

**Stap 1: Check of de dimensies die je wil gebruiken reeds in de studio zijn aangemaakt**

Bepaalde dimensies kunnen in meerdere kubussen voorkomen, maar moeten in de studio maar een keer worden aangemaakt. Indien je dus in een nieuwe kubus een bepaalde bestaande dimensie wil invoeren (bijvoorbeeld een veelgebruikte leeftijdsindeling), is het belangrijk in je nieuw bestand een variabele aan te maken met dezelfde indeling en dezelfde naam. 
De bestaande dimensies kan je controleren door in Swing Studio te kiezen voor Data > Dimensies. De kolomnaam voor een bestaande dimensie in je bestand moet overeenkomen met de Dimensiecode.
variabele aan te maken met dezelfde indeling en dezelfde naam. 

![afbeelding 1](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image1.jpg)
![afbeelding 2](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image2.jpg)

De indeling van de categorieën (dimensieniveau-items) kan je nakijken door te kiezen voor Data > Dimensieniveaus:

![afbeelding 3](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image3.jpg)

Binnen de tabel die hier opengaat zie je alle dimensies. Je kan de categorieën of items van een bepaalde dimensie bekijken door bij de gekozen dimensie te klikken in het veld “items”. De code of naam van je categorie in je bestand moet overeenkomen met de itemcode.

![afbeelding 4](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image4.jpg)

De code of naam van je categorie in je bestand moet overeenkomen met de itemcode.

![afbeelding 5](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image5.jpg)


**Stap 2: Aanmaak bestand**

Aan de hand van een voorbeeld beschrijven we het formaat van een bestand. **Volgende velden zijn nodig:**
-	Periode: jaar
-	Gebiedsniveau: buurt (evt. wijk, postzone, district, stad)
-	Gebieden: de buurtcodes (evt. wijkcodes, …) 
-	Dimensies: in dit geval zijn dat leeftijdsgroep, geslacht en gezposcube (indeling volgens gezinstype). 
-	Onderwerp: dit is de teller of de aantallen
Elke lijn is een unieke combinatie van jaar, buurt, een categorie van elke dimensie en het aantal eenheden (in dit geval inwoners) dat in deze categorie geteld wordt.
In onderstaand voorbeeld zien we bijvoorbeeld dat er volgens de eerste lijn onder de kolomtitels in 2015 2 inwoners (teller=bevolkingskubus_test) zijn in buurt “A00-“, van leeftijdsgroep 7, van het vrouwelijke geslacht en van gezinscategorie 5. 


![afbeelding 6](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image6.jpg)


Wanneer je het bestand samenstelt, neem volgende **aandachtspunten** in acht: 
-	Voor dimensieniveaus die al in andere kubussen zitten (zie stap 1): de kolomtitel=de dimensieniveaucode en de categorieën=itemcodes
-	Voor nieuwe dimensieniveaus mag de kolomtitel niet overeenstemmen met een van de bestaande dimensieniveaucodes.
-	Het onderwerp (teller) mag niet overeenstemmen met een reeds bestaande onderwerpcode. Dit controleer je door binnen Data > Onderwerpen te kiezen en vervolgens te controleren op het veld onderwerpcode.
-	Er mogen geen lege rijen zijn. Verwijder deze indien nodig. Opgelet: in kubussen op gemeenteniveau [vullen we brekende missings in voor Brussel](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/02.%20Data%20defini%C3%ABren/kubussen/brussel-invullen) als dit volgens [onze afspraken rond missing values](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Missing%20values.md) nodig is.
-	Swing schijnt 1.7 miljoen rijen per bestand te aanvaarden (ervaring 2021-04)

![afbeelding 7](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image7.jpg)
![afbeelding 8](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image8.jpg)



Om een kubusbestand aan te maken op basis van een basisbestand werk je best met een programma dat herhaald kan worden. Hieronder kan je een **voorbeeldsyntax in SPSS** vinden. Een praktijkvoorbeeld voor de kadasterkubus [vind je hier](https://github.com/provinciesincijfers/kadaster-post-processing/blob/master/basisverwerking/03%20kubus%20voor%20swing.sps).

```
*** In eerste instantie wordt het basisbestand opgeladen en worden eventueel nog een aantal variabelen aangemaakt ***
GET
  FILE='../file.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.

value labels gezposcube
1 'kind bij koppel'
3 'kind bij alleenstaande ouder'
4 'single'
5 'partner koppel zonder kind'
6 'partner koppel met kind'
9 'alleenstaande ouder'
10 'gezin zonder familieband of ander type'
11 'collectief huishouden'.


*** Via de functie AGGREGATE wordt het bestand omgevormd tot een bestand in kubusvorm. 
De teller is de som van een de teller in het basisbestand (meestal is dit gewoon een variabele, 
bv. aantal die altijd 1 is), de breakvariabelen zijn jaar, buurt en de dimensievariabelen.

* je kan best data op slechts één gebiedsniveau inladen.
string gebiedsniveau (a5).
compute gebiedsniveau = 'jouw gebiedsniveau'.

DATASET DECLARE agg.
AGGREGATE
  /OUTFILE='agg'
  /BREAK=geolevel geoitem period leeftijd gezposcube
  /kubusonderwerk=N.
DATASET ACTIVATE agg.

SAVE TRANSLATE OUTFILE='kubus.xlsx'
  /TYPE=XLSX
  /VERSION=12
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.
```

## 3.	Importeren kubusbestand

❕ ***In nieuwere Swing versies moet je EERST alle dimensies, dimensieniveaus en dimensieniveau-items aanmaken alvorens je data kunt inlezen.***

Je leest een kubusbestand in via Swing studio.

•	Na het inloggen, kies je voor data > importeren.

•	Vervolgens klik je “bestand kiezen” aan, navigeer naar waar je kubusbestand staat en kies het kubusbestand.

•	Kies vervolgens voor upload.

![afbeelding 9](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image9.jpg)
![afbeelding 10](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image10.jpg)
![afbeelding 11](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image11.jpg)
![afbeelding 12](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image12.jpg)

*	Je krijgt een aantal opties te zien. Kruis optie “automatisch alle start- en eindperioden aanpassen” en “Eerst alle data verwijderen” aan.
* Kies by "data type" voor "data indicator/column".
*	Klik bij de bestandsnaam ook de optie “kolomindeling tonen” open.

![afbeelding 13](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image13.jpg)


•	Je krijgt alle kolomnamen te zien van het kubusbestand met daarnaast het kolomtype (zie ook 2). De meeste van deze kolommen hebben als type automatisch “onderwerp” gekregen. Alleen de tellervariabele (in dit geval vestcube2) is onderwerp. Verander indien nodig jaar (of andere tijdsindeling) in “Perioden”, het gebiedsniveau in “gebiedsniveau”, de gebieden (statsec in dit geval) in “Gebieden” en de andere variabelen in “Dimensie”.

![afbeelding 14](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image14.jpg)

•	Vervolgens kies je links onder voor “importeren”.

![afbeelding 15](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image15.jpg)


## 4.	Bewerken dimensies en onderwerp

Wanneer je een bestaande kubus inleest, hoeft er verder niets te gebeuren. **Bij nieuwe kubussen dienen onderwerp en nieuwe dimensies nog bewerkt te worden.**

### 4.1.	Onderwerp

Via het onderwerp (de teller) worden de metadata van de kubus aangepast en aangemaakt. Kies Data > onderwerpen. Je kan zo een aantal zaken aanpassen, zoals de benaming van de kubus, de bron, de teleenheid van de teller, extra uitleg,…

![afbeelding 16](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image16.jpg)


### 4.2.	Dimensies

Hier kan je onder andere de naam en de uitleg van de dimensie aanpassen.   
•	Kies Data > Dimensies.  
•	Pas vervolgens naam en metadata aan  

![afbeelding 17](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image17.jpg)

### 4.3.	Dimensie-niveaus

Hier kan je de naam van het dimensieniveau aanpassen, en doorklikken naar de Items van dit dimensieniveau.

![afbeelding 18](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image18.jpg)



### 4.3 Dimensie-aggregatie

Als je gedetailleerde informatie oplaadt, dan kan je die binnen Swing laten aggregeren tot eenvoudigere informatie. Bijvoorbeeld zou je nationaliteiten kunnen aggregeren naar landengroepen. Een eindgebruiker kan dan binnen een dimensie kiezen op welk dimensieniveau deze moet weergegeven worden. Je kan dit volledig inlezen via een excel-bestand. Zie de voorbeelden in deze map [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/voorbeelden/vb_aggregatietabellen.xls) en [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/voorbeelden/voorbeeld_aggragtietabellen_20171127.xls).
De volgorde is zo:
- je hebt een Dimensie nodig (vb nationaliteit)
- je hebt twee (of meer) Dimensieniveaus nodig die binnen deze Dimensie een plaats hebben (vb. land, landengroep)
- deze Dimensieniveaus hebben Items nodig (vb Nederland, EU)
- nu kan je een aggregatietabel inlezen (met daarin rijen die aan Swing vertellen "Nederland ligt in de EU")

Er zijn ook **niet-aggregeerbare dimensies** mogelijk. Bijvoorbeeld kan het zijn dat je weet dat je met missing values zit op bepaalde kruisingen. Dat kan je oplossen door ook het totaal in te lezen. Maar dan mag Swing uiteraard NIET de som nemen van het totaal en de beschikbare subtotalen. Bij de Dimension level kan je dit instellen met *Aggregate type* > *no aggregation*. [Hier een voorbeeld van dergelijke kubus](https://provincies.incijfers.be/databank?var=kubus2603_overnachtingen&keepworkspace=true).


## 5.	Onderbrengen in de themaboom

•	Kies Weergave > Themaboom

•	Je krijgt rechts te onderwerpenstructuur zoals deze in stad in cijfers te zien is. Links staan alle onderwerpen die in Swing Studio staan ingelezen.

•	Sleep het onderwerp van de gewenste kubus naar de map binnen de onderwerpenstructuur waar deze thuishoort.

![afbeelding 19](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image19.jpg)


## 6. Wijzigingen in de structuur van je kubus

Aanpassingen in de structuur van je kubus moet je in principe op dezelfde manier behandelen als die van gewone onderwerpen. Je moet in principe dimensieniveau-items die ophouden te bestaan [uitdovend maken](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Levensloop%20onderwerpen.md). In de praktijk is dat echter niet altijd haalbaar, vooral bij grotere wijzigingen. Overleg met de databeheerders om dit goed op te lossen.

Indien een kubus in de Connector zit, heeft elke wijzigingen in de codes van de dimensies tot gevolg dat de automatische update stopt. Als je klaar bent met herwerken, moet je dus een seintje geven opdat ABF de aanpassingen kan doorvoeren in de klant-versies.

*Praktisch*:
- het gebruik van de beta kan hier heel nuttig zijn
- het duurt bijzonder lang om dimensieniveauaggregatie te verwijderen, als je dit pas doet NA dat je dimensieniveauitems hebt verwijderd. Verwijderd dus EERST de aggregatietabellen. 


## 7. Onderwerpen afleiden uit kubussen

Je kunt in sommige omstandigheden databeheer sterk beperken door één kubus in te lezen, en daar een hoop onderwerpen uit af te leiden. [Meer info in een afzonderlijk document](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/Kubussen%20als%20bron%20voor%20onderwerpen.md).

