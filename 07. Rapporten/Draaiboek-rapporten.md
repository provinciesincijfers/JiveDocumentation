# Rapporten: afspraken en procedures

## Inhoud
[Afspraken](Draaiboek-rapporten.md#afspraken)

[Types Rapporten](Draaiboek-rapporten.md#types-rapporten)

[Inhoudelijk/vormgeving afspraken](Draaiboek-rapporten.md#Inhoudelijkvormgeving-afspraken)

[Beheer tabel Rapporten in Swing](Draaiboek-rapporten.md#Beheer-tabel-Rapporten-in-Swing)

[Niet-gebiedsdekkende info](Draaiboek-rapporten.md#Niet-gebiedsdekkende-info)

[Procedure voor aanmaak van een nieuw rapport](Draaiboek-rapporten.md#procedure-voor-aanmaak-van-een-nieuw-rapport)

[Voorbereidend werk](Draaiboek-rapporten.md#voorbereidend-werk)

[Aanmaak van het rapport](Draaiboek-rapporten.md#aanmaak-van-het-rapport)

[Methodologie 1: als de rapport-maker zelf niet gaat leren programmeren](Draaiboek-rapporten.md#methodologie-1-als-de-rapport-maker-zelf-niet-gaat-leren-programmeren)

[Methodologie 2 : als de rapport-maker wil zelf wel gaat leren programmeren](Draaiboek-rapporten.md#methodologie-2--als-de-rapport-maker-zelf-wel-gaat-leren-programmeren)

[Eindfase](Draaiboek-rapporten.md#Eindfase)

[Controleren](Draaiboek-rapporten.md#Controleren)

[Publiceren](Draaiboek-rapporten.md#Publiceren)

[Harmoniseren](Draaiboek-rapporten.md#Harmoniseren)





# Afspraken
Dit hoofdstuk bevat de afspraken in verband met rapporten in grote lijnen. We bedoelen hier alle interactieve rapporten mee die gebouwd worden met de rapportenmodule van provincies.incijfers.be. Deze “Rapporten” bestaan uit drie types. Het meest gebruikte type is “Inhoudelijk Rapport”. Voor eindgebruikers noemen we dit kortweg “Rapport”. Als je spraakverwarring wil vermijden, gebruik dan “swingrapport” voor het overkoepelende woord en “inhoudelijk rapport” voor het subtype.

Nieuwe “Inhoudelijke Rapporten” vertrekken van het [sjabloon voor rapporten](https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon_rapport). Dit bevat heel wat impliciete afspraken. Deze zie je niet enkel in de tekst, maar ook in de broncode.

De taken rond Rapporten worden verzameld in : <https://github.com/provinciesincijfers/PinC-taakopvolging/issues>. Gelieve problemen met rapporten daar te melden.


## **Types Rapporten**

**Tabellenrapport**

- Cijfers
- Praktisch geen tekst
- Basisdata + indicatoren
- Maximaal 4 gebiedsniveaus: standaard gemeente, arrondissement, provincie, vlaams gewest
- Geen beperking op aantal pagina’s (tabellen wel knippen op A4’s)
- Bestemd voor: de echte cijfernerds
- Vb. tabellenrapport Economie



**(Inhoudelijk) Rapport**

- Beschikbaar op niveau gemeente en provincie
- Gebruiker kan één, twee of meer gemeenten/provincies kiezen
- Tabellen, grafieken en kaarten
- Basisdata + indicatoren + duiding
- Geen beperking op aantal pagina’s
- Bestemd voor: de inhoudelijk specialist
- Vb. Kansarmoede
- Bevat doorklikken in inhoudstafel



**Steekkaart (UITDOVEND)**

- grafieken en kaarten, geen of zeer weinig tabellen
- Vergelijken: standaard met provincie en Vlaams Gewest
  - Opm: in lijngrafieken stippellijnen voor vergelijkingsgebieden
- Korte tekstbeschrijvingen wat er in de figuren wordt getoond (+ eventueel beschrijving van het onderwerp als verduidelijking nodig is)
- Sterke redactionele keuze: basisdata + indicatoren
- Korte visuele hoofdstukken (max 10 pagina’s)
- Een virtuele pagina is maximaal één A4
- Heeft wel grafiektitels nodig
- Bestemd voor: de leek en beleidsmakers/ambtenaren die relatief oppervlakkig met het thema bezig zijn
- Vb. steekkaart Demografie en Economie



## **Inhoudelijk/vormgeving afspraken**
**Algemeen**

- We schrijven in actieve taal (we zeggen; niet “er wordt gezegd”). We gebruiken je/jij, niet u
- Het is toegestaan om hele paragrafen met cijfers in de tekst, maar ZONDER figuren te maken
- We zetten dynamisch bevraagde **kerncijfers (met eenheid %)** en de **naam** van de gebieden in het rapport systematisch in **vet**
- Verwijzingen naar *grafieken, tabellen, kaarten* in de tekst worden *cursief* weergegeven
- Voor evoluties van absolute aantallen mét vergelijking raden we het **gebruik van index-cijfers** aan. Dit wordt best uitgelegd in een Voetnoot
- We zetten tekst BOVEN de grafiek die ze omschrijft
- Je mag verwijzen naar externe links. Tijdens periodieke controle kijken we na of er dode links zijn.

**Hoofdstukken**

- We vermijden het toevoegen van een colofon die dataleveranciers expliciet bedankt. Indien dit nodig is, dan doen we dit liever op het einde.

**Export rapporten**

- We stellen de rapporten in om NIET exporteerbaar te zijn naar Word. Je kan dit wel even in Studio aanzetten, een export maken en deze doorleveren.


## **Gedetailleerde afspraken vormgeving**
Als je vertrekt van een kloon van sjabloon\_rapport en sjabloon\_grafiekstijl dan staan de meeste afspraken al sowieso in je bestand. Controleer je werk verder adhv deze lijst.

- Heb je alle onderstaande checks gedaan voor één gemeente, één provincie, twee gemeenten/provincies en meer gemeenten/provincies? Wat gebeurt er als je Brussel kiest of een Vlaamse en een Brusselse provincie?
- Is het rapport logisch opgebouwd en begrijpelijk?
- Horen alle onderwerpen thuis in het rapport en/of ontbreekt een relevant onderwerp?
- Zijn er geen actuelere data beschikbaar (in de databank of elders)?
- Kijk de verschillende cijfers na en vergelijk met deze met de cijfers in de databank (check dat er niet per ongeluk een foutief onderwerp werd geselecteerd)
- Worden alle gebruikte termen voldoende toegelicht?
- Moeten bepaalde resultaten extra toegelicht worden (vb. bij lage aantallen, knik in evolutiegrafiek...)?
- Komen alle cijfers en conclusies in de tekst overeen met wat in de figuren / grafieken / kaarten getoond wordt?
- Klopt de nummering van figuren...?
- Is de inhoudstafel conform het voorbeeld in het sjabloon voor rapporten?
- Zijn de titels en nummering in de inhoudstafel dezelfde als die in de tekst?
- Staat er steeds een datum/jaartal bij de cijfers vermeld?
- Wordt overal naar de juiste gemeente(n) / regio verwezen?
- Werken alle (externe) links? Kom je via links in de juiste tabel of juiste plaats in de databank uit?
- Tekst nalezen op taalfouten
- Is de layout van de titels gebeurd volgens deze afspraken ? 
- niet beginnen met aantal of aandeel in titel
- zeker (een) jaartal(len) vermelden
- t.o.v. alle (personen) en t.o.v. totaal (objecten)
- bij 1 gebied het gebied vermelden (bij meerdere gebieden NIET, dan wijst de grafiek, tabel dat zelf uit)
- …

Voorbeelden voor **aantallen**:

- Kaart 12 | Leeftijdsopbouw per 20-jarenklasse (2020)

Voorbeelden voor **verhoudingscijfers**:

- Grafiek 10 | Eengezinswoningen naar bouwwijze in Alken, % t.o.v. *totaal* eengezinswoningen (2017) 
- Tabel 07 | Werkloosheidsdruk, % NWWZ t.o.v. *alle* 18-64-jarigen (2016) 

Voorbeelden voor **aantallen en verhoudingscijfers**:

- Tabel 10 | NWWZ jonger dan 25 jaar, aantal en % t.o.v. *alle* NWWZ (jaargemiddelde 2019)

Voorbeelden voor **evoluties**:

- Grafiek 03 | Evolutie gebouwen in Alken (2009-2017) 
- Tabel 12 | Evolutie eengezinswoningen in open bebouwing, % t.o.v. *totaal* eengezinswoningen (2000, 2010 en 2017) 
- Grafiek 2 | Evolutie leerlingen secundair onderwijs volgens woonplaats (2010-2018, index 2010=100)




## **Beheer tabel Rapporten in Swing**
De tabel met alle Rapporten wordt rap heel groot. Om het overzichtelijk te houden, gebruik je zoveel mogelijk onderstaande regels. Rapporten die hier niet aan voldoen kunnen op elk moment verwijderd worden.

- Gebruik een zinvolle rapportcode. Opgelet: je mag deze niet zomaar wijzigen. Allerlei links gaan dan kapot.
  - sjabloon\_blabla: uitgewerkte voorbeelden, klaar voor gebruik
  - rapport\_blabla: voor een inhoudelijk rapport
  - preselecties\_rapport\_blabla: voor de preselecties die je gemaakt hebt voor inhoudelijk rapport blabla
  - steekkaart\_blabla: voor een steekkaart
  - tabellen\_blabla: voor een tabellenrapport
  - demo\_blabla: voor een idee in ontwikkeling
  - test\_blabla: om een specifiek probleem te laten zien aan ABF
  - provXXX\_blabla: voor een rapport enkel bedoeld voor intern, intraprovinciaal gebruik

- Gebruik van “Zoektermen”: 
  - backup: tijdelijke eerdere versie
  - demo: een voorbeeld van hoe je iets kan doen in de rapportenmodule
  - echt-archief: een rapport dat uit roulatie is, maar we nog ter beschikking houden
  - echt-inopmaak: een rapport in opmaak
  - echt-productie: een Inhoudelijk Rapport, Steekkaart of Tabellenrapport dat online is voor iedereen
  - intern: een rapport voor intern gebruik
  - vals-productie: staat in productie, maar is niet echt een type rapport, maar bijvoorbeeld een handleiding, een technisch hulpmiddeltje (zoals “zoeken op kaart”), etc.
  - projectfiche: een document met uitleg over de diverse “projecten”, zoals klimaat, landbouw, etc.
  - provinciaal-XX: interne rapporten beheerd en ontwikkeld door één specifieke provincie
  - rommel: overige zaken waarvan het niet echt duidelijk is of ze een nut hebben
  - sjabloon: een proper uitgewerkt vertrekproject, of voorbeeld voor het oplossen van specifieke problemen
  - test: een rapport dat enkel bestaat om wat in te prutsen, bijvoorbeeld om een veilige speeltuin te hebben om een issue op te lossen met hulp van ABF

Welke vinkjes aan en uitzetten:

|Openen in een nieuw venster|aan|
| :- | :- |
|Pdf export toestaan|aan|
|Word export toestaan|uit|
|Powerpoint export toestaan|uit|
|Gebruik Base href|aan|
|Gebruik Scroll script|aan|

## **Niet-gebiedsdekkende info**

In principe is er in Provincies in Cijfers geen plaats voor data die niet voor alle provincies beschikbaar is. Zie [Criteria voor opname in PinC](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Criteria%20voor%20opname%20in%20PinC.md).

In een rapport kan plaats gemaakt worden voor een blok tekst die specifiek is voor de provincie, bijvoorbeeld over de dienstverlening die provincies rond het thema van het rapport aanbieden. Voorwaarde is wel dat alle provincies hierrond iets aanleveren, en dit tegen dezelfde datum als datum afronding van de dataverzameling.

In een rapport kan plaats gemaakt worden voor gebiedsspecifieke duiding bij cijfers. Bijvoorbeeld “Opgelet: in de provincie Antwerpen wordt doorgaans hoger gescoord op het aandeel woningen met zonnepanelen omwille van een extra beleidsmaatregel in deze provincie”. Dit moet wel zo beperkt mogelijk gehouden worden. Bij voorkeur proberen we dit in te lezen als tekst, zodat het beheer van deze teksten het rapport niet te veel verzwaard, en zodat de tekst decentraal beheerd kan worden.

De klant moet aangeven hoe er wordt omgegaan met deze specifieke teksten. Moet deze enkel verschijnen in een provincierapport? Of ook bij onderliggende gebieden? Enkel gemeenten, of ook andere tussenniveaus? Wat als er gebieden uit meerdere provincies worden gekozen? Etc.

In die sectie rond de specifieke provincie kan er eventueel doorgelinkt worden naar externe databronnen specifiek voor die provincie.



# **Procedure voor aanmaak van een nieuw rapport**

## **Voorbereidend werk:**
- Analyseer beschikbare data in PinC. Maak een selectie. Zie je nog gaten, onderzoek dan of deze opgevuld kunnen worden. Als je nieuwe data toevoegt aan PinC in functie van een Rapport, dan moet deze ook EXTERN gepubliceerd worden. De [gewoonlijke regels](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Draaiboek%20voor%20controle.md) gelden dan: eerst laten nakijken, dan pas publiceren; overleg met Redactiegroep vóór publicatie. De data wordt met grote voorkeur gepubliceerd vóór of tegelijk met het Rapport zelf.
- Kies een concept: bij voorkeur wat onder hoofdstuk 2 als Rapport wordt benoemd. Steekkaarten maken we niet meer bij, wegens te veel overlappend met Dashboard; tabellenrapporten in principe aanvullend op inhoudelijke rapporten.
- Doe een eerste ruw voorstel naar de interprovinciale groep: een inhoudstafel + een reeks grafieken.
- Werk het rapport uit volgens een van onderstaande methodologieën.

## **Aanmaak van het rapport**
### Methodologie 1: als de rapport-maker zelf niet gaat leren programmeren
Word + verzamelde grafieken 

- Verzamel al je grafiek onder ÉÉN link! Op die manier kan dit in één keer omgezet worden naar code. Dat maakt het natuurlijk iets moeilijker om zeker te zijn dat de juiste grafiek op de juiste plaats komt. Eventueel kun je óók een link per grafiek voorzien, of een afbeelding plakken.
- Gebruik tijdens samenstellen grafieken in Swing Viewer zo weinig mogelijk layout. Deze wordt binnen het rapport ingesteld op basis van het rapportsjabloon. Met name het instellen van maximum van assen veroorzaakt **fouten**. Vind je de standaardlayout niet goed, geef dit dan aan aan de programmeur. Op die manier kan die de standaard aanpassen. Anders is enkel het nieuwe rapport mooi, en we willen dat alle rapporten mooi zijn.
- Geef in je tekst duidelijk aan welke tekst gebaseerd moet zijn op data. Gebruik bij voorkeur een code, bijvoorbeeld TODO Gemeente als je wil dat Gemeente vervangen wordt door de naam van de gemeente. Dit blijft dan eenvoudig doorzoekbaar in de code (tot het gefixed is natuurlijk!). Het gebruik van deze dynamische teksten maakt het leven van de programmeur exponentieel ingewikkelder, en zorgt dus voor een langere doorlooptijd en meer kans op fouten. 
### Methodologie 2 : als de rapport-maker zelf wel gaat leren programmeren
Laat je begeleiden door Joost.

Stap 1: maak een export van sjabloon\_rapport. Pas in die export de Rapportcode aan van “sjabloon\_rapport” naar “rapport\_themavanjouwrapport”. Laadt op naar Swing, en pas daar verder aan. Geef het een naam in de stijl van de andere rapporten en vul de kolom “Zoektermen” aan met “InOntwikkeling-JouwNaam”

Stap 2: verzamel al je grafieken onder één link. Als je ze voor je ziet in Databank, verander dan eenvoudig de url van provincies.incijfers.be/databank in provincies.incijfers.be/admin/jive . Je ziet nog steeds hetzelfde! Als je nu ingelogd bent, dan kan je je presentaties nu “toevoegen als rapport”. Je krijgt dan direct een vertrekpunt voor je presentaties. Pas de Rapportcode aan naar preselecties\_rapport\_themavanjouwrapport zodat we weten wat dit voor een ding is.

Stap 3: het eigenlijke rapport programmeren. Als je hiermee aan de slag gaat, vraag een basiscursus aan bij Joost

Stap 4: indien je nog niet veel feedback hebt gekregen, stuur je draft dan rond van zodra die wat presentabel is.
Om feedback te vragen, kan je werken met een link als deze: 

https://provincies.incijfers.be/admin/jive/report/?id=rapport\_wonen&openinputs=true
(in ADMIN, dus de allerrecentste versie. Met “open inputs”, dus mensen moeten niet wachten op Aalst alvorens een gebied te kiezen)

De eenvoudigste manier om gedetailleerde feedback te verwerken is indien dit als commentaar op een export in PDF aangeleverd wordt.

Stap 5: wanneer je rapport klaar is, laat het (opnieuw) rondgaan voor feedback. Het is aanvaardbaar om hierbij een strakke deadline te geven, op voorwaarde dat je mensen de kans geeft om uitstel te vragen.

Stap 6: nieuwe data/onderwerpen moeten in principe in de EXTERN themaboom terecht komen. Geef mee aan de Redactiegroep waar je dit gaat doen.


## **Eindfase**
### Controleren
- Verzamelen een laatste keer feedback via de Redactiegroep. Laat ook één iemand het rapport in detail nalezen, o.a. adhv [de checklist](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Checklist%20grondige%20controle%20databank.docx).
- Ga na of je nog verwijzingen naar andere Rapporten kunt invoegen in je tekst
- Technische controle HTML. Vraag aan Joost als je geen HTML-expert bent. 
  Gooi je HTML code door een html-validator. Dit is enkel het deel vanaf <body>. Gebruik bijvoorbeeld <https://www.freeformatter.com/html-validator.html> . Niet alle opmerkingen zijn even relevant, en sommige opmerkingen zijn normaal binnen de context van Swing. Vervang op voorhand dubbele ## door enkele # en verwijder de selecties (uiteraard niet in het echte rapport).
- Zoek in de code op het woord TODO en los alle openstaande issues op. Indien het rapport gepubliceerd kan worden zonder dit op te lossen, kan je er eventueel TODO-longterm van maken.

### Publiceren
Dat betekent je rapport toevoegen aan:

- Kiezen op kaart (report kiezen\_op\_kaart. Op de geschikte gebiedsniveaus toevoegen)
- Gebiedsinfo (report gebiedsinfo. Meerdere keren toevoegen!)
- De landingspagina van de Databank (Report > report files > landingspagina.html)
- Themaboom: extern (bij het thema en bij “Thematische rapporten) en interne (Rapporten>In productie) Themaboom
- Dashboard: bij het relevante thema én in het overzicht van rapporten
- Link toevoegen in rapport Kerncijfers
- Controleer of je rapport in de andere rapporten dient vermeld te worden
- [Lijst rapporten en verantwoordelijken op Github](https://github.com/provinciesincijfers/PinC-taakopvolging/blob/master/README.md)

Vul in de tabel Reports de SEARCHTAGS in met echt-productie

Vul aan in het Logboek, dan komt het wellicht in de Nieuwsbrief.
Zie voor technische tips rond communicatie van een rapport [dit bestand](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/10.%20Communicatie/Goed%20communiceren%20van%20URLs%20in%20PinC.md). 
### Harmoniseren en integreren
- Voldoet je rapport aan de standaardstijl? Indien niet, plan in wanneer dit aangepast zal worden.
- Heb je nieuwe technische hoogstandjes gebruikt of dingen anders gedaan dan gewoonlijk?
  - Licht ze toe in je rapportcode (als commentaar)
  - Relevante CSS hoort in de centrale CSS bestanden terecht te komen
  - Zijn er dingen die je verbeterd hebt die in alle rapporten zouden moeten aangepast worden? [Maak een taak in Github](https://github.com/provinciesincijfers/PinC-taakopvolging/issues/new) die dit vraagt, net als om het sjabloon aan te passen
  - Zijn er dingen die niet altijd interessant zijn, maar die zeker nog wel eens van pas gaan komen? Maak een afzonderlijk sjabloon\_jouwhoogstandje aan dat dit toelicht
- Heb je nieuwe data ontwikkeld? Ga na of deze in bestaande rapporten kan hergebruiktworden
### Extra tips
Je rapport is sowieso beschikbaar voor wie de link heeft. De bovenstaande zaken zorgen enkel dat het vindbaar wordt.

*Elke keer een rapport van een specifiek gebied wordt opgevraagd, wordt dit in de cache van de Databank bewaard. De volgende krijgt het rapport dan veel sneller gezien. Deze cache wordt GEWIST elke keer dat de Databank wordt live gezet. Doe je een grote communicatiecampagne, zorg er dan voor dat de Databank NIET live gezet wordt tijdens die campagne.*

Je kan massaal PDF’s genereren. Bij een grote release is dat nuttig om een momentopname te hebben van hoe dit rapport initieel gecommuniceerd werd. Zie <https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon_genereer_pdf> .  Je ziet daar ook hoe je dit kunt gebruiken om een cache op te bouwen die het rapport sneller maakt.

