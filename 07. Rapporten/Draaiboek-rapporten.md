# Procesbeschrijving rapporten opstellen

## Inhoud

[Algemene afspraken](Draaiboek-rapporten.md#algemene-afspraken)

[Types Rapporten](Draaiboek-rapporten.md#types-rapporten)

[Eerste stappen om een nieuw rapport aan te maken in tabel Rapporten in Swing](Draaiboek-rapporten.md#Eerste-stappen-om-een-nieuw-rapport-aan-te-maken-in-tabel-Rapporten-in-Swing)

[Procedure voor aanmaak van een nieuw rapport](Draaiboek-rapporten.md#procedure-voor-aanmaak-van-een-nieuw-rapport)

[Procedure voor het verwijderen van een rapport](Draaiboek-rapporten.md#Procedure-voor-het-verwijderen-van-een-rapport)

[Procedure voor het vervangen van een bestaand rapport](Draaiboek-rapporten.md#Procedure-voor-het-vervangen-van-een-bestaand-rapport)


# Algemene afspraken

Dit hoofdstuk bevat de afspraken in verband met het proces om rapporten op te stellen. We bedoelen hier alle interactieve rapporten mee die gebouwd worden met de rapportenmodule van provincies.incijfers.be. Deze &quot;Rapporten&quot; bestaan uit drie types. Het meest gebruikte type is &quot;Inhoudelijk Rapport&quot;. Voor eindgebruikers noemen we dit kortweg &quot;Rapport&quot;. Als je spraakverwarring wil vermijden, gebruik dan &quot;swingrapport&quot; voor het overkoepelende woord en &quot;inhoudelijk rapport&quot; voor het subtype.

Maak zeker ook gebruik van volgende documenten:

- Nieuwe &quot;Inhoudelijke Rapporten&quot; vertrekken van het PinC [sjabloon voor rapporten](https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon_rapport_vertrekproject) (vertrekproject).
- In het PinC-rapport &quot;[sjabloon afspraken](https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon_grafiekstijl)&quot; zijn alle afspraken gebundeld. Dit document is een basis voor zowel wie het rapport opstelt, de eventuele werkgroep, en de programmeur. Er zijn ook nog andere sjablonen te vinden in PinC waaruit de programmeur voorbeeldcode kan kopiëren. Het woord &#39;sjabloon&#39; staat steeds in de broncode van deze rapporten.
- De taken rond Rapporten worden verzameld in : [https://github.com/provinciesincijfers/PinC-taakopvolging/issues](https://github.com/provinciesincijfers/PinC-taakopvolging/issues). Gelieve problemen met rapporten daar te melden.

Het overzicht van wie verantwoordelijk is voor een specifiek rapport [vind je hier](https://github.com/provinciesincijfers/PinC-taakopvolging/#taakverdeling-rapporten). Kleine issues in rapporten mag je steeds zelf corrigeren, maar laat het dan wel even weten aan de verantwoordelijke voor het rapport. 

# Types Rapporten

**Tabellenrapport**

- Cijfers
- Praktisch geen tekst
- Basisdata + indicatoren
- Maximaal 4 gebiedsniveaus: standaard gemeente, arrondissement, provincie, vlaams gewest
- Geen beperking op aantal pagina&#39;s (tabellen wel knippen op A4&#39;s)
- Bestemd voor: de echte cijfernerds
- Vb. tabellenrapport Economie

**(Inhoudelijk) Rapport**

- Minstens beschikbaar op niveau gemeente en provincie
- Gebruiker kan één, twee of meer gemeenten/provincies kiezen
- Tabellen, grafieken en kaarten
- Basisdata + indicatoren + duiding
- Geen beperking op aantal pagina&#39;s (maar hou rekening met performantie, die afhankelijk is van hoeveelheid benodigde data & interactieve grafieken)
- Bestemd voor: de inhoudelijk specialist
- Vb. Kansarmoede
- Bevat doorklikken in inhoudstafel

**Kerncijfers voor doelgroepen**

- Vb. Buurtgerichte zorg, Eerstelijszones
- Beschikbaar op niveau van een bepaalde werking
- Technisch aanstuurbaar via gemeente

**Steekkaart (UITGEDOOFD)**

- grafieken en kaarten, geen of zeer weinig tabellen
- Vergelijken: standaard met provincie en Vlaams Gewest
  - Opm: in lijngrafieken stippellijnen voor vergelijkingsgebieden
- Korte tekstbeschrijvingen wat er in de figuren wordt getoond (+ eventueel beschrijving van het onderwerp als verduidelijking nodig is)
- Sterke redactionele keuze: basisdata + indicatoren
- Korte visuele hoofdstukken (max 10 pagina&#39;s)
- Een virtuele pagina is maximaal één A4
- Heeft wel grafiektitels nodig
- Bestemd voor: de leek en beleidsmakers/ambtenaren die relatief oppervlakkig met het thema bezig zijn
- Vb. steekkaart Demografie en Economie

# Eerste stappen om een nieuw rapport aan te maken in tabel Rapporten in Swing

De tabel met alle Rapporten wordt rap heel groot. Om het overzichtelijk te houden, gebruik je zoveel mogelijk onderstaande regels. Rapporten die hier niet aan voldoen kunnen op elk moment verwijderd worden.

- Gebruik een zinvolle rapportcode. Opgelet: je mag deze niet zomaar wijzigen. Allerlei links gaan dan kapot.
  - sjabloon_blabla: uitgewerkte voorbeelden, klaar voor gebruik
  - rapport_blabla: voor een inhoudelijk rapport
  - preselecties_rapport_blabla: voor de preselecties die je gemaakt hebt voor inhoudelijk rapport blabla
  - steekkaart_blabla: voor een steekkaart
  - tabellen_blabla: voor een tabellenrapport
  - demo_blabla: voor een idee in ontwikkeling
  - test_blabla: om een specifiek probleem te laten zien aan ABF
  - provXXX_blabla: voor een rapport enkel bedoeld voor intern, intraprovinciaal gebruik
- Gebruik van &quot;Zoektermen&quot; kolom SEARCH TAGS in de tabel Reports. (Opgelet: verwijder de searchtags van zodra je rapport op Exclude from Search op NEE staat):
  - backup: tijdelijke eerdere versie
  - demo: een voorbeeld van hoe je iets kan doen in de rapportenmodule
  - echt-archief: een rapport dat uit roulatie is, maar we nog ter beschikking houden
  - echt-inopmaak: een rapport in opmaak
  - ~~echt-productie~~: *een Inhoudelijk Rapport, Steekkaart of Tabellenrapport dat online is voor iedereen*.
  - intern: een rapport voor intern gebruik
  - vals-productie: staat in productie, maar is niet echt een type rapport, maar bijvoorbeeld een handleiding, een technisch hulpmiddeltje (zoals &quot;zoeken op kaart&quot;), etc.
  - projectfiche: een document met uitleg over de diverse &quot;projecten&quot;, zoals klimaat, landbouw, etc.
  - provinciaal-XX: interne rapporten beheerd en ontwikkeld door één specifieke provincie
  - rommel: overige zaken waarvan het niet echt duidelijk is of ze een nut hebben
  - sjabloon: een proper uitgewerkt vertrekproject, of voorbeeld voor het oplossen van specifieke problemen
  - test: een rapport dat enkel bestaat om wat in te prutsen, bijvoorbeeld om een veilige speeltuin te hebben om een issue op te lossen met hulp van ABF
- Zoekfunctie:
  - Als je een rapport maakt, mag dit nog niet in de zoekfunctie verschijnen. Vink daarom eerst '
  Search' aan. Het kan zijn dat je deze kolom zelf nog moet toevoegen binnen de Reports tabel.
  - Vergeet dit niet af te vinken wanneer het rapport live gezet wordt.

Welke vinkjes aan en uitzetten (in tabel rapporten):

| **Openen in een nieuw venster** | **aan** |
| --- | --- |
| Pdf export toestaan | aan |
| --- | --- |
| Word export toestaan | uit |
| Powerpoint export toestaan | uit |
| Gebruik Base href | aan |
| Gebruik Scroll script | aan |
| Exclude from search | aan |

# Procedure voor aanmaak van een nieuw rapport

Communicatie tussen de verschillende betrokkenen is vanaf de beginfase van belang! Inhoudelijke wensen en technische basisafspraken bij het programmeren matchen niet altijd; om aanslepen van de programmatie te vermijden wordt best tijdig en regelmatig afgestemd.

## Voorbereidend werk

- Start bij voorkeur pas aan het voorbereiden van een rapport wanneer de data (incl. beschrijvende info en metadata) opgeladen én gecontroleerd zijn in PinC.
- Ga vooraf door de basisafspraken voor het opstellen van het rapport. Deze basisafspraken worden opgesteld in één handleiding [sjabloon afspraken](https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon_grafiekstijl) die zowel door de schrijver als de programmeur van het rapport wordt gebruikt. Het is belangrijk deze basisregels te volgen, aangezien wanneer hiervan afgeweken wordt, de problemen zich opstapelen bij het programmeren van het rapport.
- Voorzie in het geval van een projectwerkgroep voldoende duiding rond de werkwijze van het opmaken van rapporten, alsook rond de basisafspraken.
- Analyseer beschikbare data in PinC. Maak een selectie. Zie je nog gaten, onderzoek dan of deze opgevuld kunnen worden. Als je nieuwe data toevoegt aan PinC in functie van een Rapport, dan moet deze ook EXTERN gepubliceerd worden. Uitzondering: Dit is niet nodig wanneer er subtotalen in de themaboom staan en er een ad hoc totaal nodig is voor een rapport. De [gewoonlijke regels](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Draaiboek%20voor%20controle.md) gelden dan: eerst laten nakijken, dan pas publiceren; overleg met Redactiegroep vóór publicatie. De data wordt met grote voorkeur gepubliceerd vóór of tegelijk met het Rapport zelf.
- Kies een concept: bij voorkeur wat onder hoofdstuk 2 als Rapport wordt benoemd. Steekkaarten maken we niet meer bij, wegens te veel overlappend met Dashboard; tabellenrapporten kunnen in principe aanvullend op inhoudelijke rapporten.
- Doe (samen met de thematische werkgroep) een eerste ruw voorstel naar de redactiegroep: een inhoudstafel + een reeks grafieken. In deze fase worden de grote lijnen van het rapport afgesproken.
- Werk vervolgens het rapport uit volgens onderstaande methodologieën, rekening houdend met de basisafspraken uit de handleiding.

## Afspraken rond communicatie

- Maak tijdig goede afspraken met projectwerkgroep / kabinetten gedeputeerden / externe partners /…. i.v.m. timing van publiceren!

# Aanmaken van het rapport

## Fase 1: rapport voorbereiden

Werk het rapport verder uit in Word + verzamel de grafieken in swing

- Verzamel al je grafieken onder ÉÉN link! Op die manier kan dit in één keer omgezet worden naar code. Dat maakt het natuurlijk iets moeilijker om zeker te zijn dat de juiste grafiek op de juiste plaats komt. Eventueel kun je een afbeelding plakken om twijfel te voorkomen.
- Gebruik tijdens samenstellen grafieken in Swing Viewer zo weinig mogelijk layout. Deze wordt immers binnen het rapport ingesteld op basis van het rapportsjabloon. Met name het instellen van maximum van assen veroorzaakt **fouten**. Vind je de standaardlayout niet goed, geef dit dan aan aan de programmeur. Op die manier kan die de standaard laten aanpassen. Anders is enkel het nieuwe rapport mooi, en we willen dat alle rapporten mooi zijn.
- Geef in je tekst duidelijk aan welke tekst gebaseerd moet zijn op data. Gebruik bij voorkeur een code, bijvoorbeeld TODO Gemeente als je wil dat Gemeente vervangen wordt door de naam van de gemeente. Dit blijft dan eenvoudig doorzoekbaar in de code (tot het gefixed is natuurlijk!). Het gebruik van deze dynamische teksten maakt het leven van de programmeur exponentieel ingewikkelder, en zorgt dus voor een langere doorlooptijd en meer kans op fouten. Daarom doen we dit beperkt en vervalt de tekst in niet-standaard situaties.
- Lees je werk goed na opdat het niet enkel geschreven is voor een rapport voor 1 gemeente, maar ook voor twee of meer gemeenten of provincie(s). Dit heeft effect op zinsbouw (voorzie beide types van zinnen waar nodig) en (leesbaarheid van) grafieken (denk hier aan bij keuze van grafiektype). Elk rapport moet beschikbaar zijn voor één of meerdere gemeenten en één of meerdere provincies. Hierbij wordt een onderscheid gemaakt tussen twee gebieden en één of veel gebieden. Wanneer er twee gebieden zijn, dan worden deze met elkaar vergeleken.
- Lees je werk ook na op volgende aspecten:
  - Is het rapport logisch opgebouwd en begrijpelijk?
  - Horen alle onderwerpen thuis in het rapport en/of ontbreekt een relevant onderwerp?
  - Worden alle gebruikte termen voldoende toegelicht?
  - Moeten bepaalde resultaten extra toegelicht worden (vb. bij lage aantallen, knik in evolutiegrafiek...)?
  - Ga na of je nog verwijzingen naar andere Rapporten kunt invoegen in je tekst
- Bespreek het resultaat samen met de programmeur (niet per mail, maar in een overleg). Hierbij worden eventuele problemen vroeg gedetecteerd en oplossingen hiervoor gezocht. Hierbij is onder andere ook al aandacht voor de verschillende manieren van opvragen van een rapport (meerdere gemeenten…). Eventuele afwijkingen van de basisafspraken kunnen samen met de programmeur worden voorgelegd aan de redactiegroep. (Herhaal deze stap indien nodig).
- Leg het uitgewerkte voorstel (in word, nog niet geprogrammeerd!) voor aan de redactiegroep (en andere geïnteresseerde collega&#39;s/werkgroep).
  - Opgelet: spreek duidelijk af wiens verantwoordelijkheid het is dat alle regels gecontroleerd zijn. Als er afgeweken zou worden, bespreek dit dan op voorhand met de Redactiegroep. Maak duidelijk aan wie feedback geeft dat er géén mogelijkheid meer is voor inhoudelijke feedback eens de programmatie begint.
  - Spreek een duidelijke datum af tegen wanneer feedback (of OK voor programmatie) binnen moet zijn.
  - Spreek ook goed af wie feedback zal geven (redactiegroep, D&amp;A collega&#39;s, projectwerkgroep, externe partners…). Let erop dat zowel inhoudelijk als technisch wordt nagelezen, (ook) door iemand die de basisafspraken goed kent. Wie feedback geeft, doet dat op basis van gedocumenteerde afspraken.
  - Alle feedback wordt steeds aan de rapportvoorbereider bezorgd, die alles bundelt.
- Verwerk alle input in één document. Herhaal indien nodig eerdere stappen totdat je zeker bent dat dit het finale resultaat is.
- Bezorg het document aan de programmeur. Bespreek het document opnieuw samen alvorens te starten met programmeren. Uitgezonderd onvoorziene nieuwe informatie, is het niet de bedoeling dat na deze stap nog wijzigingen worden doorgegeven. De programmeur houdt je op de hoogte bij eventuele moeilijkheden die toch nog boven komen tijdens het programmeren. Dergelijke problemen EN oplossingen worden samen met Emilien consequent gedocumenteerd in de bestaande documenten.

## Fase 2: programmeren

Laat je begeleiden door Emilien.

- Stap 1: maak een export van sjabloon_rapport_vertrekproject. Pas in die export de Rapportcode aan van &quot;sjabloon_rapport&quot; naar &quot;rapport_themavanjouwrapport&quot;. Laad op naar Swing, en pas daar verder aan. Geef het een naam in de stijl van de andere rapporten en vul de kolom &quot;Zoektermen&quot; aan met &quot;InOpmaak-JouwNaam&quot;

- Stap 2: verzamel al je grafieken onder één link. Als je ze voor je ziet in Databank, verander dan eenvoudig de url van provincies.incijfers.be/databank in provincies.incijfers.be/admin/jive . Je ziet nog steeds hetzelfde! Als je nu ingelogd bent, dan kan je je presentaties nu &quot;toevoegen als rapport&quot;. Je krijgt dan direct een vertrekpunt voor je presentaties. Pas de Rapportcode aan naar preselecties\_rapport\_themavanjouwrapport zodat we weten wat dit voor een ding is. ❕ Zorg ervoor dat de presentaties die je verzamelt als rapport niet in de zoekfunctie verschijnen. Vink daarom 'Exclude from Search' aan.

- Stap 3: het eigenlijke rapport programmeren. Als je hiermee voor het eerst aan de slag gaat, dan kan je steeds bij Emilien terecht voor een eerste introductie tot de code.

- Stap 4: Zoek in de code op het woord TODO en los alle openstaande issues op. Indien het rapport gepubliceerd kan worden zonder dit op te lossen, kan je er eventueel TODO-longterm van maken.

- Stap 5: stuur je bijna afgewerkte rapport rond naar de verantwoordelijke collega voor de eindcontrole en de opdrachtgever van zodra die wat presentabel is. Hierbij moet extra aandacht geschonken worden aan kritisch lezen op beleidsdiscours en controleren op concepten/termen die in de glossary begrippenlijst moeten worden opgenomen. Om feedback te vragen, kan je werken met een link als deze:[https://provincies.incijfers.be/admin/jive/report/?id=rapport\_wonen&amp;openinputs=true](https://provincies.incijfers.be/admin/jive/report/?id=rapport_wonen&amp;openinputs=true) (in ADMIN, dus de aller recentste versie. Met &quot;open inputs&quot;, dus mensen krijgen direct het keuzevenster te zien om een gebied te selecteren en niet eerst het rapport voor Aalst). Geef expliciet mee om het rapport te checken als je NIET ingelogd bent in Swing.
De eenvoudigste manier om gedetailleerde feedback te verwerken is indien dit als commentaar op een export in PDF aangeleverd wordt. Opgelet: op dit moment is het NIET meer aanvaardbaar om feedback te geven over de inhoud zelf. Specifieke opmerkingen van de eindredacteur kunnen dan nog op de redactiegroep gebracht worden.

- Stap 6: wanneer je rapport klaar is, laat het (opnieuw) rondgaan ter info naar de redactiegroep en de werkgroep.


## Eindfase

**Laten controleren**

- Verzamel een laatste keer feedback via de Redactiegroep. Laat ook één iemand het rapport in detail nalezen, o.a. adhv [sjabloon](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Checklist%20grondige%20controle%20databank.docx) afspraken en onderstaande aspecten. Deze fase is bedoeld om kleine foutjes nog te corrigeren, niet meer om inhoud bij te sturen.

Als je vertrekt van een kloon van sjabloon_rapport_vertrekproject en rekening houdt met sjabloon_grafiekstijl (= sjabloon afspraken) dan staan de meeste afspraken al sowieso in je bestand. Controleer je werk verder adhv deze lijst.

- Heb je alle onderstaande checks gedaan voor één gemeente, één provincie, twee gemeenten/provincies en meer gemeenten/provincies? Wat gebeurt er als je Brussel kiest of een Vlaamse en een Brusselse provincie?
- Kijk de verschillende cijfers na en vergelijk deze met de cijfers in de databank (check dat er niet per ongeluk een foutief onderwerp werd geselecteerd)
- Zijn er geen actuelere data beschikbaar (in de databank of elders)?
- Komen alle cijfers en conclusies in de tekst overeen met wat in de figuren / grafieken / kaarten getoond wordt?
- Klopt de nummering van figuren...?
- Is de inhoudstafel conform het voorbeeld in het sjabloon voor rapporten?
- Zijn de titels en nummering in de inhoudstafel dezelfde als die in de tekst?
- Staat er steeds een datum/jaartal bij de cijfers vermeld?
- Wordt overal naar de juiste gemeente(n) / regio verwezen?
- Werken alle (externe) links? Kom je via links in de juiste tabel of juiste plaats in de databank uit?
- Tekst nalezen op taalfouten

**Harmoniseren en integreren**

- Voor oude, herwerkte rapporten: voldoet je rapport aan de standaardstijl? Indien niet, plan in wanneer dit aangepast zal worden.
- Heb je nieuwe technische hoogstandjes gebruikt of dingen anders gedaan dan gewoonlijk? Afspraken hierover vind je terug in sjabloon\_afspraken onder 3. Tips en tricks en bijlage A.
- Heb je nieuwe data ontwikkeld? Ga na of deze in bestaande rapporten kan hergebruikt worden

**Publiceren**

Dat betekent je rapport toevoegen aan:

- Kiezen op kaart (reportcode: kiezen\_op\_kaart. Toevoegen in de code bij de geschikte gebiedsniveaus)
- Gebiedsinfo (reportcode: gebiedsinfo. Meerdere keren toevoegen in de code bij de juiste gebiedsniveaus)
- De landingspagina van de Databank (Report > report files > landingspagina.html)
- Themaboom: extern (bij het thema en bij &quot;Thematische rapporten)
- Dashboard: een tegel maken bij het relevante thema én toevoegen in het overzicht van rapporten. Contacteer Koen hiervoor.
- Link toevoegen in rapport Kerncijfers (report omgevingsanalyse\_steekkaart)
- Controleer of je rapport in de andere rapporten dient vermeld te worden
- [Lijst rapporten en verantwoordelijken op Github](https://github.com/provinciesincijfers/PinC-taakopvolging/blob/master/README.md)
- Zichtbaar maken voor de Search (Exclude from search wegvinken in tabel Reports)

Verwijder in de tabel Reports de SEARCH TAGS. 

Vul aan in het Logboek, dan komt het wellicht in de Nieuwsbrief. Zie voor technische tips rond communicatie van een rapport [dit bestand](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/10.%20Communicatie/Goed%20communiceren%20van%20URLs%20in%20PinC.md).

**OPGELET**: als je rapport niet voldoet aan de standaard bedieningsmogelijkheden (logica één/twee/veel gemeenten of provincies te kiezen), dan moet je dit expliciet melden. De bovenstaande checklist kan je dan ook niet blind volgen, want zo gaat vanuit allerlei plaatsen per ongeluk naar het rapport voor gemeente Aalst gelinkt worden. 

**Extra tips**

Je rapport is sowieso beschikbaar voor wie de link heeft. De bovenstaande zaken zorgen enkel dat het vindbaar wordt.

_Elke keer een rapport van een specifiek gebied wordt opgevraagd, wordt dit in de cache van de Databank bewaard. De volgende krijgt het rapport dan veel sneller gezien. Deze cache wordt GEWIST elke keer dat de Databank wordt live gezet. Doe je een grote communicatiecampagne, zorg er dan voor dat de Databank NIET live gezet wordt tijdens die campagne._

Je kan massaal PDF&#39;s genereren. Bij een grote release is dat nuttig om een momentopname te hebben van hoe dit rapport initieel gecommuniceerd werd. Zie [https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon\_genereer\_pdf](https://provincies.incijfers.be/admin/jive/Report/Edit/sjabloon_genereer_pdf) . Je ziet daar ook hoe je dit kunt gebruiken om een cache op te bouwen die het rapport sneller maakt.

# Procedure voor het verwijderen van een rapport

Hiervoor volgen we dit stappenplan:

**Binnen het rapport zelf**

- De verantwoordelijke voor het rapport **wist de inhoud** van het rapport en **verwijst indien nodig door naar andere relevante rapporten**.
- Pas binnen je script de titel van het rapport aan zodat je krijgt: **&#39;rapportnaam – Doorverwijzing&#39;**
- Pas bij Reports:
  - De naam aan naar: **&#39;UITDOVEND (sinds xx/xx/20xx) – rapportnaam&#39;**
  - Verander de **Searchtag** naar &#39; **echt-archief**&#39;.
  - Zet Exclude from Search op "ja"

**De verantwoordelijke kijkt na waar het rapport gebruikt wordt en past zoveel mogelijk zelf aan**

- **Kiezen op kaart** (report kiezen_op_kaart). Verwijderen van het geschikte gebiedsniveau.
- **Gebiedsinfo** (report gebiedsinfo). Meerdere keren verwijderen.
- **De landingspagina van de Databank** (Report>report files>landingspagina.html)
- **Rapport Kerncijfers** (report omgevingsanalyse\_steekkaart). Verwijder de link.
- **Themaboom** : extern (bij het thema en bij &quot;Thematische rapporten&quot;)
- **Dashboard:** bij het relevante thema én in het overzicht van rapporten.
- Controleer of je rapport in de **andere rapporten** dient verwijderd te worden. Gebruik hiervoor de searchtag &#39;echt-productie&#39;.

❕ [**Lijst rapporten en verantwoordelijken op Github**](https://github.com/provinciesincijfers/PinC-taakopvolging/blob/master/README.md). ***Haal je rapport ook uit deze lijst.***

**Na zes maanden wissen we het rapport definitief**

# Procedure voor het vervangen van een bestaand rapport

Volg de procedure voor het schrijven van rapporten zoals hierboven beschreven.

Ook hier is communicatie van groot belang. Als je het rapport herwerkt van een collega(‘s), betrek hen dan ook in de verschillende fasen van het proces zodat ook zij feedback kunnen geven, naast de leden van de Redactiegroep.

**Verander de onderwerpcode niet zomaar!** Anders gaat er vanalles kapot.
Het Dashboard en kruisverwijzingen vanuit andere rapporten werken bijvoorbeeld wel nog goed, MAAR moet je er aan denken om in de Themaboom (CategoryTree) de link te veranderen. Immers, net als bij Indicators is de verwijzing vanuit de Themaboom NIET gekoppeld aan een code maar aan een databank-objectje.

Good practice:
- Maak een ontwikkelversie aan van je rapport dat je wil aanpassen, bv 'wonen_ontwikkel'
- Exporteer het 'oude' rapport
- Open de export van je ontwikkelrapport (bv. wonen_ontwikkel) en pas daar de unieke code aan naar de code van het 'oude' rapport (bv. rapport_wonen)
- Doe het omgekeerde met de export van bv. rapport_wonen
- Importeer beide rapporten terug in Swing, en ze zullen de inhoud op de gewenste manier overschrijden 

❕ Een uitgebreide uitleg hoe je rapporten exporteert en de code aanpast, vind je terug in het sjabloon_vertrekproject.
