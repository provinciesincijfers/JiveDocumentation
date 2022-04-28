# Kaartlagen in Swing

Swing kent enkele types kaartlagen:
- een overlay kaart op basis van gewone data (denk kleurenkaart, bol in kaart, etc.). Hier moet je niets speciaals voor doen.
- Locaties (ook gekend als puntenlaag of objecten). 
Deze beheer je via de Geo levels in Swing. [Handleiding van ABF](https://swing.eu/handleiding/Objectenmodule/index.html). 
Dit is best interessant, omdat je vanuit je objecten rechtsreejs verschillende parameters kunt optellen naar statsec en zo verder.
Je kan bovendien een object aanklikbaar maken en daar dan een mini rapportje over opvragen, waar je bijvoorbeeld eigenschappen van het object en zijn omgeving kunt combineren.
- Achtergrondkaarten. Daar gaat de rest van dit document over.

## Achtergrondkaarten

Standaard werken we met een basiskaart op basis van OpenStreetMap. Je kunt ook altijd het GRB activeren.
Maar we hebben ook inhoudelijke kaarten, zoals bijvoorbeeld de overstromingsgebieden. Dat is bijzonder leuk om interessante combinaties te maken, zoals [een overlay van huishoudens in overstromingsgebied vs de overstromingsgebieden zelf](https://provincies.incijfers.be/databank?workspace_guid=90193642-c754-484a-99c9-e16da021cce1).

![afbeelding](https://user-images.githubusercontent.com/10122639/125598508-3656e806-618f-417a-a377-6f5b7574ce14.png)

### Toevoegen van lagen aan Studio

Welke kaartlagen **bestaan** kan je beheren bij `Viewer > Map layer defintions`.

Hier zijn vier types beschikbaar:
- Contours: hier kan je de outline van een bestaand gebiedsniveau als afzonderlijk te activeren kaartlaag toevoegen
- Background: lijkt te gaan over een kleurtje dat je onder alle kaarten kunt zetten
- WMS
- WMTS

Met WMS en WMTS kan je interessante kaartlagen toevoegen van externe providers. Bijvoorbeeld kan je via Geopunt heel wat interessant services opvragen. Elk kaartje dat je in Geopunt kunt laten zien, kan in principe in Swing ingebouwd worden.
Een nieuwe kaartlaag doen werken kan bijzonder lastig zijn. Tijdens het toevoegen heb je geen idee of iets gelukt is of niet. Het vraagt dus vrij veel trial & error om het aan de praat te krijgen.

Hier zie je een voorbeeld voor de WMS van Landgebruik 2013. Belangrijk om weten:
- De server is `https://www.mercator.vlaanderen.be/raadpleegdienstenmercatorpubliek/ows`
- Daar horen een aantal paramters bij, die ervoor zorgen dat je een afbeelding in de juiste projecte krijgt: `?service=WMS&version=1.1.1&request=GetMap&CRS=EPSG:31370`
- De LayerId kan je in de inhoudstafel van de server zien. Bijvoorbeeld in QGIS, of als XML via https://www.mercator.vlaanderen.be/raadpleegdienstenmercatorpubliek/ows?service=WMS&request=GetCapabilities, of gevisualiseerd met [Geo-Explorer](http://geo-explore.ecs.soton.ac.uk/?url=https%3A%2F%2Fwww.mercator.vlaanderen.be%2Fraadpleegdienstenmercatorpubliek%2Fows%3Fservice%3DWMS%26request%3DGetCapabilities)

![afbeelding](https://user-images.githubusercontent.com/10122639/125602429-d5f976a3-8c98-4093-ab07-d5ef2a6b0f9c.png)

Eens je dit aan de praat hebt gekregen voor één laag van een server, is het heel gemakkelijk om een laag toe te voegen die een andere kaart van dezelfde server bevraagt.

*Het is NIET mogelijk om TMS'en toe te voegen ([zie openstaand issue](https://github.com/provinciesincijfers/bugsinjive/issues/86) over waarom dat jammer is en wat ABF nog moet doen).*

### Beschikbaar maken van kaartlagen voor gebruikers

Je hebt nu een kaartlaag gedefinieerd. Maar aan wie ga je ze tonen? Dat beheer je via `Viewer > Map layer order`.

Het vinkje naast de kaartlagen betekent of deze standaard geactiveerd wordt op kaarten. Als je bijvoorbeeld wilt dat zowel de gemeentegrenzen als OpenStreetMap op alle kaarten actief staan, dan zet je deze vinkjes aan.
Standaard staat deze op Geo level = all. Dat betekent dat als je hier een Layer toevoegt, dit op kaarten van elk gebiedsniveau beschikbaar komt. 
Het is helaas NIET mogelijk om kaartlagen inhoudelijk te organiseren (zie https://github.com/provinciesincijfers/bugsinjive/issues/44) in een soort themaboom.
Omdat de meeste kaartlagen slechts interessant zijn op subgemeentelijk niveau, en om een chaos te voorkomen, voegen we de inhoudelijke kaartlagen enkel toe aan de subgemeentelijke gebiedsniveaus.
Deze staan standaard NIET actief, behalve de OSM achtergrondkaart.

![afbeelding](https://user-images.githubusercontent.com/10122639/125604445-c937542b-b4a4-4213-b8fa-9df639ca1c99.png)

Let op met de volgorde van kaartlagen: je wil de achtergrondkaarten uiteraard ONDER de inhoudelijke overlays.


