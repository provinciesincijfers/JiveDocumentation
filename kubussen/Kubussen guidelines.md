# Guidelines voor kubussen

## Algemeen

Dit zijn guidelines die we binnen Provincies in Cijfers hanteren.

Check de [beginnershandleiding](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/Basishandleiding%20kubussen.md)  eerst. Deze tekst bevat enkel aanvullende info.
Ook een handleiding gezocht rond werken met geperecenteerde kubussen en het combineren van kubussen.

Vergeet niet dat een kubus maximaal 100.000 combinaties mag bevatten. Om de combinaties te berekenen, neem je alle inhoudelijke  indelingen van de dataset (de "dimensieniveaus", voorbeeld: leeftijd, geslacht en burgerlijke staat, maar NIET jaar, gebied, aantal). Vervolgens neem je het product van het aantal keuzes per indeling. Bijvoorbeeld: 10 leeftijdsklassen * 2 geslachten * 4 burgerlijke staten = 80 combinaties. Stel dat je ook een "onbekend" geslacht hebt, dan wordt dit dus ```10*3*4```.

Laat je uploadfile nakijken vooraleer je deze oplaadt. Maak de kubus aan in Swing via een uploadfile (zie onder).

## Inlaadbestanden

Opgelet: een kubus bestaat vaak uit héél veel rijen. XLSX kan niet meer dan ongeveer een miljoen rijen aan, dus je importbestand moet mogelijk verdeeld worden. 
Je kunt ook een CSV inladen, dit schijnt beter te werken dan opgesplitste XLSX inladen. Ook deze hebben een maximumformaat. We weten nog niet wat het maximum is. Zie [Github issue](https://github.com/provinciesincijfers/bugsinjive/issues/3).

In de toekomst zou dit ook moeten kunnen in JSON formaat. Data en de metadata zijn dan in één bestand op te nemen en kunnen ingelezen worden via Jive Services (Bulk API). 

Je kan een kubus volledig definiëren op basis van één excelbestand. Zie hiervoor deze pagina op het [Swing Support platform](https://support.swing.eu/document/Voorbeelden-van-importbestanden-voor-Swing-5). (als je deze pagina niet kunt zien, contacteer dan de Swing Helpdesk)


## Dimensieniveaus

We maken zo weinig mogelijk verschillende dimensieniveaus in Jive. "Geslacht" is steeds geslacht, en niet "geslacht_jouw_bron".
Dat betekent dat je voor elke dimensie die je wil aan gebruiken, je moet controleren:
* of er al een bestaat voor hetzelfde kenmerk
* wat de gebruikte codes zijn
* hoe je je eigen data naar die codes kunt vertalen
* of je niet per ongeluk toch nog items toevoegt

**Controleer bij elke nieuwe kubus of update of alle dimensieniveaus en dimensies in de gebruikersinterface een zinvolle naam hebben.**

De codes binnen een dimensie kan je best als code invullen, niet als de waarde zoals die bij de gebruiker moet verschijnen. Hoe minder tekens, hoe beter. Vermijd speciale tekens en spaties, want die moeten door Swing vertaald worden naar een underscore. Dat duurt langer, en zorgt voor een verschil tussen je databestand en Jive. 
Je maakt best eerst dimensies aan, alvorens de data zelf in te laden. Zie hiervoor deze pagina op het [Swing Support platform](https://support.swing.eu/document/Voorbeelden-van-importbestanden-voor-Swing-5).

Bij de naamgeving van je dimensieniveaus (de kolommen in in je inlaadbestand), gebruik je een naam als v1234_ding indien de dimensie heel specifiek is voor je thema, bijvoorbeeld "type winkel". Is je dimensieniveau iets dat thema-overschrijdend is, gebruik dan 

## Naamgeving van kubussen

Voorstel: `kubus1234_omschrijving`

