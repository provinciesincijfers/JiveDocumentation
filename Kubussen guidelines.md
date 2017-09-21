# Guidelines voor kubussen

Check de beginnershandleiding (TODO: link) eerst. Deze tekst bevat enkel aanvullende info.
Ook een handleiding gezocht rond werken met geperecenteerde kubussen en het combineren van kubussen.

## Inlaadbestanden

Opgelet: een kubus bestaat vaak uit héél veel rijen. XLSX kan niet meer dan ongeveer een miljoen rijen aan, dus je importbestand moet mogelijk verdeeld worden.
In de toekomst zou dit ook moeten kunnen in JSON formaat. 
Data en de metadata zijn dan in één bestand op te nemen en kunnen ingelezen worden via Jive Services (Bulk API). 

Je kan een kubus volledig definiëren op basis van één excelbestand. Zie hiervoor deze pagina op het [Swing Support platform](https://support.swing.eu/document/Voorbeelden-van-importbestanden-voor-Swing-5).

## Gebieden

Vertaal in de code van je gebieden "-" en andere speciale tekens naar "_".

## Dimensies

We maken zo weinig mogelijk verschillende dimensies in Jive. "Geslacht" is steeds geslacht, en niet "geslacht_jouw_bron".
Dat betekent dat je voor elke dimensie die je wil aan gebruiken, je moet controleren:
* of er al een bestaat voor hetzelfde kenmerk
* wat de gebruikte codes zijn
* hoe je je eigen data naar die codes kunt vertalen
* of je niet per ongeluk toch nog items toevoegt

De codes binnen een dimensie kan je best als code invullen. Hoe minder tekens, hoe beter. Vermijd speciale tekens en spaties, want die moeten door Swing vertaald worden naar een underscore. Dat duurt langer, en zorgt voor een verschil tussen je databestand en Jive. 
Je maakt best eerst dimensies aan, alvorens de data zelf in te laden. TODO: format van een kubus-ontwerp bestand.





