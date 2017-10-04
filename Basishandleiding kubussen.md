
Inhoud
Handleiding aanmaak en inlezen kubussen in Stad in cijfers studio	1
1.	Inleiding	2
2.	Aanmaak bestand	2
2.1.	Reeds bestaande kubus	2
2.2.	Nieuwe kubus	3
3.	Importeren kubusbestand	12
4.	Bewerken dimensies en onderwerp	16
4.1.	Onderwerp	16
4.2.	Dimensies	18
5.	Onderbrengen in de themaboom	22

 

1.	Inleiding

In Stad in cijfers bestaat de mogelijkheid gegevens in te lezen in kubusvorm. Deze vorm laat toe om gegevens in te lezen met verschillende kenmerken, die bij raadpleging onderling gekruist kunnen worden. Zo kan men bevolkingsgegevens inlezen met de kenmerken nationaliteitsgroep, geslacht en leeftijd. Men kan dan via deze vorm bevolkingsgegevens opvragen van bijvoorbeeld een nationaliteitsgroep naar leeftijdsgroepen.
Deze nota geeft aan hoe je een kubus moet aanmaken en inlezen in de studio van Stad in Cijfers.
2.	Aanmaak bestand

In eerste instantie wordt vanuit het betreffende basisbestand een bestand aangemaakt in een formaat dat Swing Studio kan inlezen.
Een bestand voor kubussen bestaat uit 5 types velden:
-	Periode: jaar
-	Gebiedsniveau: buurt (evt. wijk, postzone, district, stad)
-	Gebieden: de buurtcodes (evt. wijkcodes, …) 
-	Onderwerp: dit is de teller of de aantallen
-	Dimensies: dit zijn de kenmerken (bv nationaliteit, leeftijdsindeling, economische sectoren). Er kunnen meerdere dimensies zijn, dus ook meerdere velden.

2.1.	Reeds bestaande kubus

Bij aanmaak van een kubus die reeds bestaat, dien je al deze velden op dezelfde manier te benoemen als ervoor. Normaal gezien wordt voor elke kubus een syntax gemaakt om de gegevens vanuit een basisbestand in het juiste formaat te krijgen en worden de velden automatisch correct benoemd.
 

2.2.	Nieuwe kubus

Indien de kubus nog aangemaakt moet worden, onderneem dan volgende stappen:
Stap 1: Check of de dimensies die de wil gebruiken reeds in de studio zijn aangemaakt
Bepaalde dimensies kunnen in meerdere kubussen voorkomen, maar moeten in de studio maar een keer worden aangemaakt. Indien je dus in een nieuwe kubus een bepaalde bestaande dimensie wil invoeren (bijvoorbeeld een veelgebruikte leeftijdsindeling), is het belangrijk in je nieuw bestand een variabele aan te maken met dezelfde indeling en dezelfde naam. 
De bestaande dimensies kan je controleren door in Swing Studio te kiezen voor Data  Dimensies. De kolomnaam voor een bestaande dimensie in je bestand moet overeenkomen met de Dimensiecode.
variabele aan te maken met dezelfde indeling en dezelfde naam. 

![afbeelding 1](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image1.jpg)
![afbeelding 2](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image2.jpg)

De indeling van de categorieën (dimensie-items) kan je nakijken door te kiezen voor Data  Dimensieniveaus:

![afbeelding 3](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image3.jpg)

Binnen de tabel die hier opengaat zie je alle dimensies. Je kan de categorieën of items van een bepaalde dimensie bekijken door bij de gekozen dimensie te klikken in het veld “items”. De code of naam van je categorie in je bestand moet overeenkomen met de itemcode.

![afbeelding 4](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image4.jpg)

De code of naam van je categorie in je bestand moet overeenkomen met de itemcode.

![afbeelding 5](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image5.jpg)


Stap 2: Aanmaak bestand
Aan de hand van een voorbeeld beschrijven we het formaat van een bestand. Volgende velden zijn nodig:
-	Periode: jaar
-	Gebiedsniveau: buurt (evt. wijk, postzone, district, stad)
-	Gebieden: de buurtcodes (evt. wijkcodes, …) 
-	Dimensies: in dit geval zijn dat leeftijdsgroep, geslacht en gezposcube (indeling volgens gezinstype). 
-	Onderwerp: dit is de teller of de aantallen
Elke lijn is een unieke combinatie van jaar, buurt, een categorie van elke dimensie en het aantal eenheden (in dit geval inwoners) dat in deze categorie geteld wordt.
In onderstaand voorbeeld zien we bijvoorbeeld dat er volgens de eerste lijn onder de kolomtitels in 2015 2 inwoners (teller=bevolkingskubus_test) zijn in buurt “A00-“, van leeftijdsgroep 7, van het vrouwelijke geslacht en van gezinscategorie 5. 


![afbeelding 6](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image6.jpg)


Wanneer je het bestand samenstelt, neem volgende aandachtspunten in acht: 
-	Voor dimensies die al in andere kubussen zitten (zie stap 1): de kolomtitel=de dimensiecode en de categorieën=itemcodes
-	Voor nieuwe dimensies mag de kolomtitel niet overeenstemmen met een van de bestaande dimensiecodes.
-	Het onderwerp (teller) mag niet overeenstemmen met een reeds bestaande onderwerpcode. Dit controleer je door binnen Data  Onderwerpen te kiezen en vervolgens te controleren op het veld onderwerpcode.
-	Er mogen geen lege cellen zijn. Indien bepaalde gegevens niet bekend zijn, voorzie een code voor ontbrekende waarden.

![afbeelding 7](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image7.jpg)
![afbeelding 8](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image8.jpg)



Om een kubusbestand aan te maken op basis van een basisbestand werk je best met een SPSS-syntax die kan herhaald worden. Hieronder kan je een voorbeeldsyntax vinden

´*** In eerste instantie wordt het basisbestand opgeladen en worden eventueel nog een aantal variabelen aangemaakt ***
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


*** Via de functie AGGREGATE wordt het bestand omgevormd tot een bestand in kubusvorm. De teller is de som van een de teller in het basisbestand (meestal is dit gewoon een variabele, bv. aantal die altijd 1 is), de breakvariabelen zijn jaar, buurt en de dimensievariabelen.

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


3.	Importeren kubusbestand

Je leest een kubusbestand in via Swing studio: https://stadincijfers.antwerpen.be/Admin/studio
•	Na het inloggen, kies je voor data  importeren
•	Vervolgens klik je “bestand kiezen” aan, navigeer naar waar je kubusbestand staat en kies het kubusbestand
•	Kies vervolgens voor upload

![afbeelding 9](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image9.jpg)
![afbeelding 10](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image10.jpg)
![afbeelding 11](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image11.jpg)
![afbeelding 12](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image12.jpg)

•	Je krijgt een aantal opties te zien. Kruis optie “automatisch alle start- en eindperioden aanpassen” en “Eerst alle data verwijderen” aan
•	Klik bij de bestandsnaam ook de optie “kolomindeling tonen” open

![afbeelding 13](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image13.jpg)


•	Je krijgt alle kolomnamen te zien van het kubusbestand met daarnaast het kolomtype (zie ook 2). De meeste van deze kolommen hebben als type automatisch “onderwerp” gekregen. Alleen de tellervariabele (in dit geval vestcube2) is onderwerp. Verander indien nodig jaar (of andere tijdsindeling) in “Perioden”, het gebiedsniveau in “gebiedsniveau”, de gebieden (statsec in dit geval) in “Gebieden” en de andere variabelen in “Dimensie”.

![afbeelding 14](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image14.jpg)

•	Vervolgens kies je links onder voor “importeren”

![afbeelding 15](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image15.jpg)


4.	Bewerken dimensies en onderwerp

Wanneer je een bestaande kubus inleest, hoeft er verder niets te gebeuren. Bij nieuwe kubussen dienen onderwerp en nieuwe dimensies nog bewerkt te worden.
4.1.	Onderwerp

Via het onderwerp (de teller) worden de metadata van de kubus aangepast en aangemaakt. Kies Data  onderwerpen. Je kan zo een aantal zaken aanpassen, zoals de benaming van de kubus, de bron, de teleenheid van de teller, extra uitleg,…

![afbeelding 16](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image16.jpg)

4.	Bewerken dimensies en onderwerp

Wanneer je een bestaande kubus inleest, hoeft er verder niets te gebeuren. Bij nieuwe kubussen dienen onderwerp en nieuwe dimensies nog bewerkt te worden.
4.1.	Onderwerp

Via het onderwerp (de teller) worden de metadata van de kubus aangepast en aangemaakt. Kies Data  onderwerpen. Je kan zo een aantal zaken aanpassen, zoals de benaming van de kubus, de bron, de teleenheid van de teller, extra uitleg,…


![afbeelding 17](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image17.jpg)
![afbeelding 18](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/images/image18.jpg)

