# Guidelines voor kubussen

## Algemeen

Dit zijn guidelines die we binnen Provincies in Cijfers hanteren.

Check de [beginnershandleiding](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/Kubussen%20guidelines.md)  eerst. **Deze tekst bevat enkel aanvullende info.**
Ook een handleiding gezocht rond werken met gepercenteerde kubussen en het combineren van kubussen.

❕ Vergeet niet dat een kubus **maximaal 100.000 combinaties mag bevatten**. Om de combinaties te berekenen, neem je alle inhoudelijke  indelingen van de dataset (de "dimensieniveaus", voorbeeld: leeftijd, geslacht en burgerlijke staat, maar NIET jaar, gebied, aantal). Vervolgens neem je het product van het aantal keuzes per indeling.  Swing doet ook nog een controle van de hoeveelheid data na inladen en comprimeren. Dus zelfs als je je aan de 100.000 combinaties houdt, kan het zijn dat er toch nog een error opduikt.

Bijvoorbeeld: 10 leeftijdsklassen * 2 geslachten * 4 burgerlijke staten = 80 combinaties. Stel dat je ook een "onbekend" geslacht hebt, dan wordt dit dus ```10*3*4```.

❕ Laat je uploadfile nakijken vooraleer je deze oplaadt. Maak de kubus aan in Swing via een uploadfile (zie onder).

❕ Bij kubussen op gemeenteniveau waar géén data voor Brussel beschikbaar is, lezen we -99999 waarden in (voor zover dit nodig is volgens [onze missing values](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Missing%20values.md) regels.
Een bestand om de nodige data daarvoor aan te maken vind je in de submap [kubussen/brussel-invullen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/02.%20Data%20defini%C3%ABren/kubussen/brussel-invullen).


## Inlaadbestanden

❕ **Een kubus bestaat vaak uit héél veel rijen.** XLSX kan niet meer dan ongeveer een miljoen rijen aan, dus je importbestand moet mogelijk verdeeld worden. 
Je kunt ook een CSV inladen, dit schijnt beter te werken dan opgesplitste XLSX inladen.

In de toekomst zou dit ook moeten kunnen in JSON formaat. Data en de metadata zijn dan in één bestand op te nemen en kunnen ingelezen worden via Jive Services (Bulk API). 

**Je kan een kubus volledig definiëren op basis van één excelbestand.** Zie hiervoor deze pagina op het [Swing Support platform](https://support.swing.eu/document/Voorbeelden-van-importbestanden-voor-Swing-5). (als je deze pagina niet kunt zien, contacteer dan de Swing Helpdesk)

**Om praktische redenen is het vaak handig om data en metadata afzonderlijk aan te bieden**. Immers ga je vaak stap voor stap de metadata inlezen. Bij elke geslaagde stap moet je het hele bestand opnieuw uploaden. Je wil niet tien keer zitten wachten eer alle data ook effectief is geupload!

## Dimensieniveaus

**We maken zo weinig mogelijk verschillende dimensieniveaus in Jive.** "Geslacht" is steeds geslacht, en niet "geslacht_jouw_bron".
Dat betekent dat je voor elke dimensie die je wil aan gebruiken, je moet controleren:
* of er al een bestaat voor hetzelfde kenmerk
* wat de gebruikte codes zijn
* hoe je je eigen data naar die codes kunt vertalen
* of je niet per ongeluk toch nog items toevoegt

Naam van dimensieniveau en dimensie:
* in woorden, met spaties (geen underscores laten staan!)
* Dimensie met een hoofdletter, dimensieniveau met een kleine letter

Controleer bij elke nieuwe kubus of update of **alle dimensieniveaus en dimensies in de gebruikersinterface een zinvolle naam** hebben.

Zorg voor een logische volgorde van de items in je dimensieniveau. Zorg er zeker voor dat je "restcategorie" als laatste staat.

❕ ***Het datamodel moet exact hetzelfde zijn als je twee kubussen wilt combineren (=formulekubussen). M.a.w.: alle dimensieniveaus moeten hetzelfde zijn.***

**De codes binnen een dimensie kan je best als code invullen, niet als de waarde zoals die bij de gebruiker moet verschijnen.** Hoe minder tekens, hoe beter. Vermijd speciale tekens en spaties, want die moeten door Swing vertaald worden naar een underscore. Dat duurt langer, en zorgt voor een verschil tussen je databestand en Jive. 
Je maakt best eerst dimensies aan, alvorens de data zelf in te laden. Zie hiervoor deze pagina op het [Swing Support platform](https://support.swing.eu/document/Voorbeelden-van-importbestanden-voor-Swing-5).

Bij de **naamgeving van je dimensieniveaus** (de kolommen in in je inlaadbestand), gebruik je een naam als v1234_ding indien de dimensie heel specifiek is voor je thema, bijvoorbeeld "type winkel". Is je dimensieniveau iets dat binnen een breed thema gebruikt wordt, gebruik dan een code als 1200. Is het een allesomvattend concept, gebruik dan een betekenisvolle naam zoals "geslacht".

## Naamgeving van kubussen

Voorstel: `kubus1234_omschrijving`

## Speciale gevallen
Kolom- en rijtotalen: Soms wil je niet dat de kolom- of rijtotalen een loutere optelling is overheen verschillende dimensies, maar wel een gemiddelde. Dit kan je oplossen door ofwel: 
- De randtotalen in te lezen. Ingelezen randtotalen overrulen immers het geaggregeerd totaal overheen de kubusdimensies
- Of je kan het datatype aanpassen naar 'mean' en v ervolgens het aggregatie type van de dimensieniveaus aanpassen naar 'Unknown'. dan kijkt Swing automatisch naar het datatype van de kubusonderwerpen om te bepalen of gesommeerd of een gemiddelde berekend moet worden  bij het aggregeren. (makkelijskte oplossing)
