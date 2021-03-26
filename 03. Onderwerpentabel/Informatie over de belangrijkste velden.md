# Informatie over de belangrijkste velden

❕ De afspraken rond verschillende velden vind je terug in [deze map](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel).

## Volgnummer

Dit wordt wordt **automatisch toegekend**. Voeg dit dus niét toe aan je uploadfile.

## Onderwerpcode

De afspraken rond de onderwerpcode vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel/Afspraken%20omtrent%20de%20onderwerpcode.md).

## Onderwerpnaam

De afspraken omtrent de onderwerpnaam vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel/Afspraken%20omtrent%20de%20onderwerpnaam.md).

## Beschrijving

Dit is zichtbaar wanneer je met de muis over een onderwerp zweeft of &quot;meer info&quot; vraagt.
 Geeft meer uitleg bij het onderwerp.
 De afspraken omtrent de beschrijving vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel/Afspraken%20omtrent%20de%20beschrijving.md).

## Meer informatie

Dit verwijst naar een **PDF-metadatafiche** over een reeks indicatoren, waarin bron en methode wordt toegelicht. _Vb. 1205\_rsvz\_zelfstandigen\_voorbeeld\_metadata_
 Per BRON/thema voorzien we deze fiche met meer uitleg over de verschillende onderwerpen die tot deze bron behoren. Gebruik hiervoor het `Sjabloon Metadata`.

❕ **Opgelet:** Dit zal in de toekomst veranderen.

## Bron

Komt uit **Data > Bronnen** in PinC. **Gebruik zo veel mogelijk bestaande bronnen**. Als je een onderwerpentabel importeert, wordt een eenheid gebruikt uit die tabel, of bij aangemaakt in die tabel. Conventie voor Bron naam is &quot;Naam van de bron | provincies.incijfers.be&quot;.

Bij** percentages** geven we **enkel de Bron van de teller** mee.

❕ Als onderwerpen de som vormen van andere onderwerpen uit verschillende Bronnen, of onderwerpen die gebaseerd zijn op een dataverwerking die meerdere bronnen combineert (vb VDAB-verrijkt-met-rijksregister) dan maken we een nieuwe bron van type &quot;Naam bron 1 &amp; Naam bron 2 | provincies.incijfers.be&quot;

## Formule 

 **Wanneer mogelijk kunnen nieuwe onderwerpen best via een formule gedefinieerd worden**. Bv: laad het aantal bijgebouwen en het aantal hoofgebouwen in, maar maak de som van alle gebouwen binnen Swing. Zeker voor verhoudingen is dit handig.

De teller kan bestaan uit verschillende (kubus)onderwerpen. De noemer moet je ook als aggregatieonderwerp aanduiden, en mag daarom slechts uit 1 onderwerp bestaan.
 Zie ook onderdeel `Formule onderwerpen`.

## Aggregatie-onderwerp

**Moet ingevuld zijn als je bij een formule een teller en een noemer hebt**. Die noemer kan ook gebruikt worden om een hard ingelezen percentage op basis van een weegfactor te laten aggregeren naar hogere gebiedsniveaus.

## Datatype

De afspraken rond datatype vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel/Afspraken%20omtrent%20het%20datatype.md).
 
## Eenheid

**Komt uit de Data > Eenheden**. Als je een onderwerpentabel importeert, wordt een eenheid gebruikt uit die tabel, of bij aangemaakt in die tabel. Gelieve dus eerst te gaan kijken of de eenheid al bestaat.

## Afronding

Bepaalt het aantal cijfers na de komma. Kan ook gebruikt worden om te censureren. Bijvoorbeeld door af te ronden op 10-tallen.

## Drempelwaarde

Meer informatie over de drempelwaarde/threshold vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel/threshold.md).

## Periodetype

Afspraken omtrent periodetype vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/Afspraken%20omtrent%20velden%20in%20de%20onderwerpentabel/Afspraken%20omtrent%20het%20periodetype.md).

## Start- en eindperiode

Dit veld **mag niet ingevuld zijn bij berekende onderwerpen, tenzij indien uitzonderlijk nodig**. Ze moet ingevuld zijn bij ingeladen onderwerpen. Dit laat je best automatisch aanpassen bij inladen van data, eerder dan dit zelf manueel te doen!

## Vrij tekstveld

Dit moet ingevuld zijn met een **oplader en een controleur**, zie `Verantwoordelijke opzoeken in PinC`. De code heeft deze structuur: VB\_AN

Hierbij staat het **eerste deel voor de inhoudelijk verantwoordelijke**. Het **tweede deel staat voor de controlerende partner**.

**Uitzonderingen:**

- Voor &quot;testjes&quot; gebruik je je eigen naam. Voor onderwerpen die nog geen controleur heb vul je alvast het eerste deel in.
- Bij data die door onze partners beheerd worden, geven we dat als volgt aan: VB(ECO)\_AN(ECO)

❕ ***Data kan pas EXTERN gezet worden eens de controle is afgerond. Voor meer details zie het** `onderdeel controle`.***
