# Informatie over de belangrijkste velden


## Volgnummer

Dit wordt **automatisch toegekend**. Voeg dit dus niét toe aan je uploadfile.

## Onderwerpcode

- Voorbeeld: v1101\_t
- De onderwerpcode **begint met letters**:
  - v: aantallen
  - vs stroomdata
  - vp: verhoudingen
  - kubus: kubussen

- Vervolgens gebruiken we een **viercijferige code**. De logica voor deze codes wordt bepaald in het _tabblad Domeinstructuur_ van het [opvolgingsbestand taakverdeling](https://teams.microsoft.com/l/file/42D8BF76-DF8F-4518-8606-C57E70B64310?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e&fileType=xlsx&objectUrl=https%3A%2F%2Fvlbr.sharepoint.com%2Fteams%2FDA-Interprovincialewerking%2FGedeelde%20documenten%2FGeneral%2FOpvolgingsbestand%20taakverdeling.xlsx&baseUrl=https%3A%2F%2Fvlbr.sharepoint.com%2Fteams%2FDA-Interprovincialewerking&serviceName=teams&threadId=19:c4098e9ac4e540f99d6f626ed467eaa0@thread.tacv2&groupId=affb505a-9c02-40a9-a491-9b2e3ac774a6) in Teams > D&A Interprovinciale Werking > Algemeen.
Deze code dient enkel voor het gemak van de beheerder. **Een code is normaal gezien slechts voor één bron/upload-proces van toepassing**. Voor complexe thema&#39;s uit één verwerking, kan je er meerdere gebruiken. Bijvoorbeeld vind je met &quot;1116&quot; alle data rond herkomst op basis van rijksregister.

- Hierna volgt soms een **extra verduidelijking** (voorbeeld &quot;a&quot; voor rijksregister inclusief wachtregister), maar meestal direct een underscore. Na de underscore volgt een beschrijving van het onderwerp. Ook deze dient enkel voor het gemak van de beheerder. Als 1116 voor herkomst staat, hoef je dus niet meer &quot;herk&quot; op te nemen in de onderwerpcode.

❕**Een onderwerpcode, eens aangemaakt en in gebruik genomen is DEFINITIEF en ONWIJZIGBAAR**. Indien we het gebruik ervan stopzetten, gelieve de procedure voor [**&quot;Uitdovende onderwerpen**](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Levensloop%20onderwerpen.md) **&quot;** te volgen. Ga bij het beheren **ook geen onderwerpen deleten en opnieuw aanmaken**. Daarbij verlies je de relatie met Themaboom, Toegangsgroepen en mogelijk nog meer.
**Indien de inhoud van een Onderwerp radicaal zou wijzigen** (vb vanaf nu betekent &quot;werkloosheid bij ouderen&quot; 55+ ipv 50+), **maak dan een nieuw onderwerp aan**. Je weet immers niet in welke context dit Onderwerp gebruikt wordt.

Voor **testonderwerpen of onderwerpen die enkel relevant zijn voor je eigen provincie**, begin je met provwv, provli, … om dit aan te duiden.

:bulb: Wil je rap meer weten over onderwerp v1101\_t, ga dan naar [https://provincies.incijfers.be/databank?var=v1101\_t](https://provincies.incijfers.be/databank?var=v1101_t) of [https://provincies.incijfers.be/admin/jive?var=v1101\_t](https://provincies.incijfers.be/admin/jive?var=v1101_t). 

[Meer info over magisch bevragen van de Databank](https://provincies.incijfers.be/databank?report=achter_de_schermen).



## Onderwerpnaam

- Begin waar mogelijk met een **kleine letter.**
- **Geen eenheid** (&quot;aantal&#39; of &#39;aandeel&quot;) in de onderwerpnaam gebruiken.
- Geef een **unieke naam** aan je onderwerp. Het moet immers onmogelijk zijn om twee onderwerpen te hebben met dezelfde naam die toch een ander aantal geven.
- **Het is soms nodig om de regels te breken om de onderwerpnaam kort genoeg te houden**. Dat is toegestaan in Databank, maar in Dashboard schrijven we deze dan toch voluit omwille van de leesbaarheid
- **Meer specifieke regels** :
  - Gebruik niet EUR maar €
  - Schrijf niet 1000 maar 1.000
  - Voor leeftijdsgroepen:
    - Indien afzonderlijk: &quot;18-64 jaar&quot;. Dit mag enkel gebruikt worden als het om het inwonertal gaat, anders gebruik je:
    - eerst het &quot;kenmerk&quot;, dan de leeftijd. Vb &quot;werklozen 18-64 jaar&quot;
    - Indien &quot;t.o.v.&quot; gebruik &quot;t.o.v. werklozen 18-64 jaar&quot; of &quot;t.o.v. 18-64-jarigen&quot;
  - Percentages, promilles, ratio&#39;s, … worden omgeschreven met (t.o.v. inwoners, …)
  - Als het over bevolkingsprognoses gaat, voeg je achteraan [projecties] toe, bv. 75-79 jaar vrouwen (t.o.v. 75-79-jarigen) [projecties]

❕ ***Wil je '<' of '>' gebruiken in de onderwerpnaam, doe dit dat NIET via de web interface, maar wel via een Excel import. Dit wordt immers aanzien als een ongeldige HTML tag die er automatisch uit wordt gehaald.***

**Voorbeelden van onderwerpnamen die een teller en noemer hebben** (met uitzonderingen)

| **Eenheid** | Naam | Beschrijving |
|---|---|---|
| promille [‰] | natuurlijk saldo (t.o.v. inwoners) | aantal geboorten min de sterfte per 1.000 inwoners |
| ratio [ratio] | oprichtingsratio | opgerichte ondernemingen t.o.v. het aantal actieve ondernemingen \*100 [ratio] |
| ratio\_100 [per 100] | aanbodratio WZC (t.o.v. 65-plussers) | gerealiseerde capaciteit (erkend + erkenning in onderzoek) in woonzorgcentra per 100 inwoners van 65 jaar en ouder |
| ratio\_1000 [per 1.000] | pmeh met (enkel) IVT (t.o.v. 21-plussers) | aantal rechthebbenden op (enkel) een inkomensvervangende tegemoetkoming t.o.v. 1000 inwoners ouder dan 21 jaar [per 1000 21-plussers] |



## Beschrijving

Dit is zichtbaar wanneer je met de muis over een onderwerp zweeft of &quot;meer info&quot; vraagt.
 Geeft meer uitleg bij het onderwerp.

- Indien het over een heel **eenvoudig onderwerp** gaat, dan mag de **Beschrijving identiek aan de Naam** zijn
- Indien het gaat over een **formule-onderwerp**, dan mag het ook een **korte beschrijving van de formule** zijn. Dit mag in woorden, en hoeft niet wanneer het bijvoorbeeld gaat over &quot;we tellen 0-10 jarigen op bij 11 tot 18 jarigen om tot het aantal –min 18 te komen.&quot;

- Percentages, promilles, ratio&#39;s, … worden omgeschreven met **(t.o.v. inwoners, …)**.

- Wanneer het gaat over een **deel van het geheel**, bv. bij promille, dan gebruik je [promille], anders [ratio].
- Bij gemiddelden in de tijd (bv. gemiddelde dierbezetting, gemiddelde bevolking, gemiddelde leefloners, ...) gebruik je de **eenheid "aantal"**.
- De **beschrijving begint bij een berekend onderwerp** met [percentage], [promille], [ratio], … . Het type komt m.a.w. tussen de vierkante haakjes.
- In het geval van **enquête, prognose, of model** komt dit nog voor een eventuele deel tussen vierkante haken, in drukletters.
Dus bijvoorbeeld: *ENQUETE [percentage] Omschrijving*

- **Meer specifieke regels**:
  - Gebruik niet EUR maar €
  - Schrijf niet 1000 maar 1.000
  - Voor leeftijdsgroepen
    - Indien afzonderlijk: &quot;18-64 jaar&quot;. Dit mag enkel gebruikt worden als het om het inwonertal gaat, anders gebruik je:
    - eerst het &quot;kenmerk&quot;, dan de leeftijd. Vb &quot;werklozen 18-64 jaar&quot;
    - Indien &quot;t.o.v.&quot; gebruik &quot;t.o.v. werklozen 18-64 jaar&quot; of &quot;t.o.v. 18-64-jarigen&quot;



## Meer informatie

Dit verwijst naar een **PDF-metadatafiche** over een reeks indicatoren, waarin bron en methode wordt toegelicht. _Vb. 1205\_rsvz\_zelfstandigen\_voorbeeld\_metadata_
 Per BRON/thema voorzien we deze fiche met meer uitleg over de verschillende onderwerpen die tot deze bron behoren. Gebruik hiervoor het Sjabloon Metadata dat je terugvindt binnen [Teams > D&A Interprovinciale werking > Uploadfiles PinC > 00 Metadatafiches PinC](https://teams.microsoft.com/_?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e#/files/Uploadfiles%20PinC?threadId=19:51c8556c2f0c4552b8acc0b7c93024b7@thread.tacv2&ctx=channel&rootfolder=%252Fteams%252FDA-Interprovincialewerking%252FGedeelde%2520documenten%252FUploadfiles%2520PinC%252F00%2520Metadatafiches%2520PinC%252FSjabloon%2520metadata).

❕ **Opgelet:** Dit zal in de toekomst veranderen.

## Bron

Komt uit **Data > Bronnen** in PinC. **Gebruik zo veel mogelijk bestaande bronnen**. Als je een onderwerpentabel importeert, wordt een eenheid gebruikt uit die tabel, of bij aangemaakt in die tabel. Conventie voor Bron naam is &quot;Naam van de bron | provincies.incijfers.be&quot;.

Bij **percentages** geven we **enkel de Bron van de teller** mee.

❕ Als onderwerpen de som vormen van andere onderwerpen uit verschillende Bronnen, of onderwerpen die gebaseerd zijn op een dataverwerking die meerdere bronnen combineert (vb VDAB-verrijkt-met-rijksregister) dan maken we een nieuwe bron van type &quot;Naam bron 1 &amp; Naam bron 2 | provincies.incijfers.be&quot;

## Formule 

 **Wanneer mogelijk kunnen nieuwe onderwerpen best via een formule gedefinieerd worden**. Bv: laad het aantal bijgebouwen en het aantal hoofgebouwen in, maar maak de som van alle gebouwen binnen Swing. Zeker voor verhoudingen is dit handig.

De teller kan bestaan uit verschillende (kubus)onderwerpen. De noemer moet je ook als aggregatieonderwerp aanduiden, en mag daarom slechts uit 1 onderwerp bestaan.
 Zie ook onderdeel [Formule onderwerpen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/04.%20Data%20inlezen/Formule-onderwerpen.md).

## Aggregatie-onderwerp

**Moet ingevuld zijn als je bij een formule een teller en een noemer hebt**. Die noemer kan ook gebruikt worden om een hard ingelezen percentage op basis van een weegfactor te laten aggregeren naar hogere gebiedsniveaus.

## Datatype

- Standaard Numeriek, voor aantallen. Vaak ook Percentage of Gemiddelde.
- **Gemiddelde** wordt met ![image](https://user-images.githubusercontent.com/77432663/112615199-7a7d5b00-8e22-11eb-8ca4-9cb35e136c03.png)
![](RackMultipart20210325-4-54854n_html_4d1101d1c7397c63.png) aangeduid in themaboom.
 Voor **Percentage** zijn er twee opties
  - &quot;**echte percentages**&quot;: gebruik  ***datatype Percentage én de eenheid &quot;p&quot;*** en je krijgt ![](RackMultipart20210325-4-54854n_html_3e242763af345613.png)![image](https://user-images.githubusercontent.com/77432663/112615232-82d59600-8e22-11eb-87c3-a2ac6e475b40.png).
  Gebruik deze combinatie steeds voor echte percentages, en enkel voor echte percentages. Een percentage is enkel van toepassing als je een subgroep van een totaal deelt door dat totaal. Dit kan dus normaal gezien ENKEL indien de teller en noemer van dezelfde bron komen en over hetzelfde gaat. Is dat niet het geval, gebruik dan een:
  - &quot;**ratio&#39;s**&quot;: Indien je ***datatype Percentage gebruikt en de Eenheid &quot;promille&quot;, &quot;ratio&quot; of &quot;ratio\_[NogIetsAnders]&quot;***, dan krijg je ![](RackMultipart20210325-4-54854n_html_4ac7220ded4e7769.png)![image](https://user-images.githubusercontent.com/77432663/112615251-8bc66780-8e22-11eb-9258-c9b04742226c.png).

 
## Eenheid

- Als in de naam al bv. verlichting per km staat, schrijf bij unit dan enkel kwh en niet: kwh/km.
- Zie Afspraken omtrent de beschrijving: Wanneer het gaat over een deel van het geheel, bv. bij promille, dan gebruik je [promille], anders [ratio].


❕ **Komt uit de Data > Eenheden**. Als je een onderwerpentabel importeert, wordt een eenheid gebruikt uit die tabel, of bij aangemaakt in die tabel. Gelieve dus eerst te gaan kijken of de eenheid al bestaat.

## Afronding

Bepaalt het aantal cijfers na de komma. Kan ook gebruikt worden om te censureren. Bijvoorbeeld door af te ronden op 10-tallen.
Absolute aantallen zijn gehele getallen, de rest (bv. promille, % en ratio's) is standaard 1 cijfer na de komma, tenzij meerdere effectief beter zijn.

## Drempelwaarde

Meer informatie over de drempelwaarde/threshold vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/threshold.md).

## Periodetype

- Meest courante is **Pending** (= lopende; over een periode) en **Stock** (= stand, op een bepaald moment). Gebruik enkel pending indien je de cijfers zinvol kunt optellen over meerdere jaren (dus bijvoorbeeld nooit voor percentages)
- In het de [toelichting bij het Sjabloon Metadata](https://teams.microsoft.com/_?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e#/files/Uploadfiles%20PinC?threadId=19:51c8556c2f0c4552b8acc0b7c93024b7@thread.tacv2&ctx=channel&rootfolder=%252Fteams%252FDA-Interprovincialewerking%252FGedeelde%2520documenten%252FUploadfiles%2520PinC%252F00%2520Metadatafiches%2520PinC%252FSjabloon%2520metadata) dat je kan terugvinden binnen Teams > D&A Interprovinciale werking > Uploadfiles PinC > 00 Metadatafiches PinC, staat de uitleg over hoe je bepaalt **op welk jaar** je de data moet zetten.
- Onderwerpen die een **datatype &#39;percentage&#39; of &#39;mean&#39;** hebben, krijgen een periodetype &#39;stock&#39; (zie [#133](https://github.com/provinciesincijfers/PinC-taakopvolging/issues/133)).


## Start- en eindperiode

Dit veld **mag niet ingevuld zijn bij berekende onderwerpen, tenzij indien uitzonderlijk nodig**. Ze moet ingevuld zijn bij ingeladen onderwerpen. Dit laat je best automatisch aanpassen bij inladen van data, eerder dan dit zelf manueel te doen!

## Vrij tekstveld

Dit moet ingevuld zijn met een **oplader en een controleur**, zie [onderdeel Controle](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/09.%20Controle). De code heeft deze structuur: VB\_AN

Hierbij staat het **eerste deel voor de inhoudelijk verantwoordelijke**. Het **tweede deel staat voor de controlerende partner**.

**Uitzonderingen:**

- Voor &quot;testjes&quot; gebruik je je eigen naam. Voor onderwerpen die nog geen controleur heb vul je alvast het eerste deel in.
- Bij data die door onze partners beheerd worden, geven we dat als volgt aan: VB(ECO)\_AN(ECO)

❕ ***Data kan pas EXTERN gezet worden eens de controle is afgerond. Voor meer details zie [onderdeel Controle](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/09.%20Controle).***
