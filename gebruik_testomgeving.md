# Testen in Swing, en organiseren van toegang tot data

Om hier keuzes in te maken, moet je drie concepten begrijpen. Deze staan los van elkaar:

- Toegangsgroepen

- Het gebruik van de Themaboom in functie van Toegangsgroepen

- Gepubliceerde en niet gepubliceerde data


## Toegangsgroepen

Iedereen die Swing gebruikt zit per definitie in een Toegangsgroep. 
Ook mensen die gewoon je website bezoeken en verder niets doen. In Versie>Instellingen wordt bepaald welke Gebruiker gebruikt wordt om de rechten van buitenstaanders toe te kennen.
Je kunt heel ver gaan in de organisatie van gebruikers in gebruikersgroepen en toegangsgroepen, of je kan hier niet of nauwelijks in differentiëren.

Swing beheerders zijn gebruikers als elke andere, maar hebben als Gebruikerstype (via de tabel Gebruikersgroepen) het type Beheerder. Elke account waarmee je in Studio kunt inloggen, kan je dus ook in je live website (de productieomgeving) gebruiken.
In theorie zou je een Beheerder echter op basis van Toegangsgroepen de toegang tot de data zelf kunnen ontzeggen.

Alle data waar je rechten op hebt, is raadpleegbaar. De Themaboom (zie volgende punt) dient enkel om dit *gemakkelijk* te maken voor mensen. Maar als je bijvoorbeeld de onderwerpcode kent, dan kan je ze sowieso raadplegen door  
`?var=onderwerpcode` toe te voegen aan de URL van je website.

## Themaboom  en Toegangsgroepen

In de Themaboom organiseer je de inhoud van je Swing-versie in mappen.
De zichtbaarheid van deze mappen kan je op diverse manieren organiseren. 
* Je kan een map op "Onzichtbaar" zetten. Dan is ze onzichtbaar, voor iedereen, inclusief jezelf.
* Je kan Gebruikers binden aan een bepaalde map. Ze kunnen dan enkel aanklikken wat er in die map en zijn submappen zit. Uiteraard kan je gebruikers ook binden aan de hoofdmap waar álles in zit.
* Een gebruiker ziet enkel mappen die minstens één ding bevat waar die rechten op heeft.

## Gepubliceerde en niet-gepubliceerde data

Op het moment dat je data in Swing toevoegt, zijn deze onmiddellijk in Swing beschikbaar via Versie>testen ("de testomgeving").
Maar enkel indien je rechten op deze data hebt.  
Je kan ze enkel *gemakkelijk* raadplegen indien je ook het Thema kunt zien waar ze in staan.  
Eens je de databank Publiceert, komt de data terecht in de echte website, "de productieomgeving".



 # Implicaties
 
 * Je kan heel ver gaan in wie je naar welke Thema's doorstuurt en wat laat zien onder welke voorwaarden.
 * Je kan zonder intensief gebruik van toegangsgroepen toch data intern houden door "gasten" toe te wijzen aan een beperkte themaboom, en "internen" aan een andere themaboom.
 * Je kan de twee combineren, en de rechten op de "externe" themaboom uitbreiden voor speciale bezoeker. Voorbeeld: "gast" ziet de data voor alle jaren, behalve het meest recente; "internen" zien óók het laatste jaar.
 * Je kan een "externe" perfect toegang geven tot je "testomgeving", zonder dat je risico loopt dat die "te veel ziet". Maar de testomgeving is niet stabiel!
 * Je kan een "externe" perfect data laten zien die hij niet ziet in de Themaboom, door een link te delen van een presentatie. Op voorwaarde dat de data zelf niet afgeschermd is.
 
 ## Toekomstige policy op Provincies in Cijfer
 
 ### Eén map met INDELING-EINDGEBRUIKERS.
 
 Interne medewerkers zien de hele INDELING-EINDGEBRUIKERS  
 Specifieke doelgroepen kunnen eventueel toegewezen worden aan een map binnen de PRODUCTIEOMGEVING, zodat ze niet overweldigd worden door het data-aanbod  
 De rechten tot data op niveau van de statistische sectoren is geregeld via Toegangsgroepen, omwille van licentie-technische redenen  
 
 De map bevat:
 * Submap EXTERN voor gasten
 * Submap DATA & ANALYSE met een uitgebreider aanbod voor onze eigen diensten. Dit minimaliseert dubbel beheer van de themaboom; idealiter bevat deze énkel wat niet in de map INDELING-EINDGEBRUIKERS/EXTERN past.
 * Thematische subgroepen
 * De map voor SWING CONNECTOR (omdat interne medewerkers dit ook moeten kunnen zien)

 ### Eén map om te TESTEN
Deze map is enkel zichtbaar voor Swing Beheerders. Swing-beheerders zijn doorgaans ook "interne medewerkers", maar niet elke interne medewerker is een Swing beheerder.  
Deze map bestaat enkel om dingen die nog niet af zijn gemakkelijk te kunnen raadplegen. Op die manier worden "interne medewerkers" hier niet mee lastiggevallen.  
Wat hier staat is dus zowel beschikbaar in de testomgeving als in de productieomgeving. In beide gevallen enkel als je er rechten op hebt, enkel gemakkelijk vindbaar als je de map TESTMAP kunt zien. En in de productieomgeving als de data al gepubliceerd is.
 
 
