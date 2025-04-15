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

- Vervolgens gebruiken we een **viercijferige code**. De logica voor deze codes wordt bepaald in het _tabblad Domeinstructuur_ van het [opvolgingsbestand taakverdeling](https://vlbr.sharepoint.com/:x:/r/teams/DA-Interprovincialewerking/Gedeelde%20documenten/General/Opvolgingsbestand%20taakverdeling.xlsx?d=wfea5ede126b74772bf787350b4c385f5&csf=1&web=1&e=byjiyw) in Teams > D&A Interprovinciale Werking > Algemeen.
Deze code dient enkel voor het gemak van de beheerder. **Een code is normaal gezien slechts voor één bron/upload-proces van toepassing**. Voor complexe thema&#39;s uit één verwerking, kan je er meerdere gebruiken. Bijvoorbeeld vind je met &quot;1116&quot; alle data rond herkomst op basis van rijksregister.

❕De code mag niet langer zijn dan 46 characters. In principe is het maximale aantal characters 50. Maar alle data die bij ons extern staan, gaan via de connector ook naar de centrumsteden. Tijdens dit proces wordt er voor de indicatorcode het voorvoegsel 'dna_' geplaatst.  

- Hierna volgt soms een **extra verduidelijking** (voorbeeld &quot;a&quot; voor rijksregister inclusief wachtregister), maar meestal direct een underscore. Na de underscore volgt een beschrijving van het onderwerp. Ook deze dient enkel voor het gemak van de beheerder. Als 1116 voor herkomst staat, hoef je dus niet meer &quot;herk&quot; op te nemen in de onderwerpcode.

❕**Een onderwerpcode, eens aangemaakt en in gebruik genomen is DEFINITIEF en ONWIJZIGBAAR**. Indien we het gebruik ervan stopzetten, gelieve de procedure voor [**&quot;Uitdovende onderwerpen**](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Levensloop%20onderwerpen.md) **&quot;** te volgen. Ga bij het beheren **ook geen onderwerpen deleten en opnieuw aanmaken**. Daarbij verlies je de relatie met Themaboom, Toegangsgroepen en mogelijk nog meer.
**Indien de inhoud van een Onderwerp radicaal zou wijzigen** (bv. vanaf nu betekent &quot;werkloosheid bij ouderen&quot; 55+ ipv 50+), **maak dan een nieuw onderwerp aan**. Je weet immers niet in welke context dit Onderwerp gebruikt wordt.

Voor **testonderwerpen of onderwerpen die enkel relevant zijn voor je eigen provincie**, begin je met provwv, provli, … om dit aan te duiden.

:bulb: Wil je rap meer weten over onderwerp v1101\_t, ga dan naar [https://provincies.incijfers.be/databank?var=v1101\_t](https://provincies.incijfers.be/databank?var=v1101_t) of [https://provincies.incijfers.be/admin/jive?var=v1101\_t](https://provincies.incijfers.be/admin/jive?var=v1101_t). 

[Meer info over magisch bevragen van de Databank](https://provincies.incijfers.be/databank?report=achter_de_schermen).



## Onderwerpnaam

- Begin waar mogelijk met een **kleine letter.**
- **Geen eenheid** (&quot;aantal&#39; of &#39;aandeel&quot;) in de onderwerpnaam gebruiken.
- Geef een **unieke naam** aan je onderwerp. Het moet immers onmogelijk zijn om twee onderwerpen te hebben met dezelfde naam die toch een ander aantal geven.
- **Het is soms nodig om de regels te breken om de onderwerpnaam kort genoeg te houden**. Dat is toegestaan in Databank, maar in Dashboard schrijven we deze dan toch voluit omwille van de leesbaarheid.
- **Meer specifieke regels** :
  - Gebruik niet EUR maar €
  - Schrijf niet 1000 maar 1.000
  - Voor leeftijdsgroepen:
    - Indien afzonderlijk: &quot;18-64 jaar&quot;. Dit mag enkel gebruikt worden als het om het inwonertal gaat, anders gebruik je:
    - eerst het &quot;kenmerk&quot;, dan de leeftijd. Bv. &quot;werklozen 18-64 jaar&quot;
    - Indien &quot;t.o.v.&quot; gebruik &quot;t.o.v. werklozen 18-64 jaar&quot; of &quot;t.o.v. 18-64-jarigen&quot;
    - Gebruik 65-plussers (niet 65+ of 65-plus)
  - Percentage worden omgeschreven met (t.o.v. inwoners, …), promilles met per 1.000 inwoners, ratio's afhankelijk van de indicator ofwel met (t.o.v. inwoners) of per 100 inwoners
  - Als het over bevolkingsprognoses gaat, voeg je achteraan [prognose] toe, bv. 75-79 jaar vrouwen (t.o.v. 75-79-jarigen) [prognose]
  - Model-, scenario- en enquête data duiden we ook aan in vierkante haken achteraan de onderwerpnaam met [model], [scenario] en [enquête]. 

❕ ***Wil je '<' of '>' gebruiken in de onderwerpnaam, doe dit dat NIET via de web interface, maar wel via een Excel import. Dit wordt immers aanzien als een ongeldige HTML tag die er automatisch uit wordt gehaald.***

❕***Gebruik ≥ (Unicode: U+2265) en ≤ (Unicode: U+2264) in plaats van >= en <=***

**Voorbeelden van onderwerpnamen die een teller en noemer hebben** (met uitzonderingen)

| **Eenheid** | Naam | Beschrijving |
|---|---|---|
| promille [‰] | natuurlijk saldo per 1.000 inwoners | aantal geboorten min de sterfte per 1.000 inwoners |
| ratio [ratio] | oprichtingsratio | [ratio] aantal opgerichte ondernemingen per 100 actieve ondernemingen |
| ratio\_100 [per 100] | aanbodratio WZC | [ratio] gerealiseerde capaciteit (erkend + erkenning in onderzoek) in woonzorgcentra per 100 inwoners van 65 jaar en ouder |
| ratio\_1000 [per 1.000] | pmeh met (enkel) IVT per 1.000 21-plussers | [ratio] rechthebbenden op (enkel) een inkomensvervangende tegemoetkoming t.o.v. 1.000 inwoners ouder dan 21 jaar |



## Beschrijving

Dit is zichtbaar wanneer je met de muis over een onderwerp zweeft of &quot;meer info&quot; vraagt.
 Geeft meer uitleg bij het onderwerp.

- Indien het over een heel **eenvoudig onderwerp** gaat, dan mag de **Beschrijving identiek aan de Naam** zijn. In andere gevallen mag er zeker wat toelichting bij de omschrijving. Voorbeelden: 
  -	[percentage] wijzigingen aan woningen 1983-1990 (t.o.v. woongelegenheden). Sinds 1983 wordt het wijzigingsjaar van woningen door het kadaster geregistreerd. Dit cijfer betreft enkel de wijzigingen die gekend zijn in het kadaster.
  - [percentage] sociale huurappartementen (appartementen inclusief studio's en duplexen) met 1 slaapkamer van de SHM (t.o.v. totaal appartementen SHM). Het aangegeven jaartal staat voor de toestand van 31/12 van het jaar daarvoor (bijvoorbeeld: 2017 = toestand 31/12/2016)
  - [percentage] oppervlakte van harde bestemmingen (t.o.v. totale bestemde oppervlakte). De harde bestemmingen zijn de bestemmingen voor wonen, recreatie, industrie (binnen de poorten), bepaalde categorieën van overig groen en bepaalde categorieën van overige bestemmingen.
  - [aantal] ammoniakemissie door veeteelt (in ton): omvat stal- en opslagemissie, emissie van grazende dieren en emissie van het uitrijden van dierlijke mest

- Indien het gaat over een **formule-onderwerp**, dan mag het ook een **korte beschrijving van de formule** zijn. Dit mag in woorden. Voorbeelden: 
  - [aantal] 5-jarig gemiddelde van migratiesaldo met een andere Belgische gemeente: immigratie vanuit een andere Belgische gemeente - emigratie naar een andere Belgische gemeente
  - [aantal] beroepsbevolking (som van het aantal werkenden (15-64 jaar) en het aantal werkzoekenden (15-64 jaar)) van Belgische herkomst

- De **beschrijving begint steeds** met het type tussen vierkante haakjes: [aantal], [percentage], [promille], [ratio], [mediaan], [gemiddelde]. Voor tekstonderwerpen of waarvoor geen enkel type voldoen, kan je [varia] gebruiken. Bijvoorbeeld:
  - [varia] indeling van winkelgebieden volgens type

- Bij een **gemiddelde in de TIJD** zet je [aantal] (bijvoorbeeld bij gemiddelde bevolking, waar dit het gemiddelde is van bevolking jaar x en bevolking jaar x + 1), maar bij een ‘echt’ gemiddelde, zet je [gemiddelde]. Voorbeelden: 
  - [gemiddelde] netto belastbaar inkomen per aangifte (in €)
  - [gemiddelde] jaarlijkse kost (in €) per meter riool voor het gebruik en beheer van riolering in de gemeente
  - [gemiddelde] primair energieverbruik per nieuwbouwwoning (in kWh)
  - [aantal] 5-jarig gemiddelde van bevolking op 1 januari
  - [aantal] alleenstaande personen met een leefloon of equivalent leefloon (maandelijks gemiddelde)
  - [aantal] arbeidsplaatsen (jaargemiddelde)

- In het geval van **enquête, prognose, scenario of modeldata** komt dit nog voor een eventuele deel tussen vierkante haken, in drukletters.
Dus bijvoorbeeld: *ENQUETE [percentage] Omschrijving*

- **Geef steeds de eenheid mee tussen ronde haakjes**, bijvoorbeeld (in m²), (in €).
- **Percentages** worden omgeschreven met (t.o.v. inwoners, …), **promilles** met per 1.000 inwoners, **ratio’s** meestal ook met per … Voorbeelden:
  -	[ratio] apotheken per 1.000 inwoners
  -	[ratio] faillissementsratio: aantal faillissementen per 100 actieve ondernemingen
  -	[ratio] openstaande vacatures per 100 niet-werkende werkzoekenden

- Wanneer het gaat over een **deel van het geheel**, bv. bij promille, dan gebruik je [promille], anders [ratio] (zie Datatype en Eenheid). Voorbeelden:
  - [promille] immigratie vanuit het buitenland per 1.000 inwoners
  - [promille] personen met een leefloon (maandelijks gemiddelde) per 1.000 inwoners
  - [ratio] handelspanden 'levensmiddelen' per 1.000 inwoners 
  - [ratio] gevallen van doodslag per 1.000 inwoners

- **Meer specifieke regels**:
  - Gebruik niet EUR maar €
  - Schrijf niet 1000 maar 1.000
  - Zet een spatie tussen het getal en de eenheid, bijvoorbeeld 10 m
  - Voor leeftijdsgroepen
    - Indien afzonderlijk: &quot;18-64 jaar&quot;. Dit mag enkel gebruikt worden als het om het inwonertal gaat, anders gebruik je:
    - eerst het &quot;kenmerk&quot;, dan de leeftijd. Bv. &quot;werklozen 18-64 jaar&quot;
    - Indien &quot;t.o.v.&quot; gebruik &quot;t.o.v. werklozen 18-64 jaar&quot; of &quot;t.o.v. 18-64-jarigen&quot;
    - Gebruik 65-plussers of ... ouder dan 65 jaar (niet 65+ jaar of 65-plus...)
  - Gebruik ≥ (Unicode: U+2265) en ≤ (Unicode: U+2264) in plaats van >= en <=

## Bron

Komt uit **Data > Bronnen** in PinC. **Gebruik zo veel mogelijk bestaande bronnen**. Als je een onderwerpentabel importeert, wordt een eenheid gebruikt uit die tabel, of bij aangemaakt in die tabel. Conventie voor Bron naam is &quot;Naam van de bron | provincies.incijfers.be&quot;. provincies.incijfers.be mag ook vervangen worden door 'PinC' als er niet genoeg plaats is. Als er genoeg plaats is, mag het voluit geschreven worden.

Bij **percentages** geven we **enkel de Bron van de teller** mee.

❕ Als onderwerpen de som vormen van andere onderwerpen uit verschillende Bronnen, of onderwerpen die gebaseerd zijn op een dataverwerking die meerdere bronnen combineert (bv. VDAB-verrijkt-met-rijksregister) dan maken we een nieuwe bron van type &quot;Naam bron 1 &amp; Naam bron 2 | provincies.incijfers.be&quot;

## Formule 

 **Wanneer mogelijk kunnen nieuwe onderwerpen best via een formule gedefinieerd worden**. Bv: laad het aantal bijgebouwen en het aantal hoofgebouwen in, maar maak de som van alle gebouwen binnen Swing. Zeker voor verhoudingen is dit handig.

De teller kan bestaan uit verschillende (kubus)onderwerpen. De noemer moet je ook als aggregatieonderwerp aanduiden, en mag daarom slechts uit 1 onderwerp bestaan.
 Zie ook onderdeel [Formule onderwerpen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/04.%20Data%20inlezen/Formule-onderwerpen.md).

## Aggregatie-onderwerp

**Moet ingevuld zijn als je bij een formule een teller en een noemer hebt**. Die noemer kan ook gebruikt worden om een hard ingelezen percentage op basis van een weegfactor te laten aggregeren naar hogere gebiedsniveaus. Hard ingelezen percentages hebben geen aggregatie-onderwerp.

## Datatype

- Standaard Numeric, voor aantallen. Vaak ook Percentage of Gemiddelde.
- Gebruik voor **Gemiddelde** "Mean". Dit wordt met ![image](https://user-images.githubusercontent.com/77432663/112615199-7a7d5b00-8e22-11eb-8ca4-9cb35e136c03.png)
![](RackMultipart20210325-4-54854n_html_4d1101d1c7397c63.png) aangeduid in themaboom.
- We gebruiken datatype **Percentage (sum)** op twee manieren:
  - &quot;**echte percentages**&quot;: gebruik  ***datatype Percentage (sum) én de eenheid &quot;p&quot;*** en je krijgt ![](RackMultipart20210325-4-54854n_html_3e242763af345613.png)![image](https://user-images.githubusercontent.com/77432663/112615232-82d59600-8e22-11eb-87c3-a2ac6e475b40.png).
  Gebruik deze combinatie steeds voor echte percentages, en enkel voor echte percentages. Een percentage is enkel van toepassing als je een subgroep van een totaal deelt door dat totaal. Dit kan dus normaal gezien ENKEL indien de teller en noemer van dezelfde bron komen en over hetzelfde gaat. Hier vallen ook hard ingelezen percentages onder. Is het voorgaande niet het geval, gebruik dan een:
  - &quot;**ratio&#39;s**&quot;: Gebruik ***datatype Percentage (sum) met de Unit &quot;promille&quot;, &quot;ratio&quot; of &quot;ratio\_[NogIetsAnders]&quot;***, dan krijg je ![](RackMultipart20210325-4-54854n_html_4ac7220ded4e7769.png)![image](https://user-images.githubusercontent.com/77432663/112615251-8bc66780-8e22-11eb-9258-c9b04742226c.png).
  - Bij kubussen die een gemiddelde bevatten, gebruik je datatype Percentage (mean). Zorg ervoor dat de gebruikte dimensieniveaus op "Aggregate type" "unknown" staan. Op die manier bepaalt het onderwerp, niet het dimensieniveau, of de cijfers getotaliseerd dan wel gemiddeld worden.
 
## Eenheid

- Als in de naam al bv. verlichting per km staat, schrijf bij unit dan enkel kwh en niet: kwh/km.
- Zie Afspraken omtrent de beschrijving: Wanneer het gaat over een deel van het geheel, bv. bij promille, dan gebruik je [promille], anders [ratio].
- Bij gemiddelden in de tijd (bv. gemiddelde dierbezetting, gemiddelde bevolking, gemiddelde leefloners, ...) gebruik je de **eenheid "aantal"**.

❕ **Komt uit de Data > Eenheden**. Als je een onderwerpentabel importeert, wordt een eenheid gebruikt uit die tabel, of bij aangemaakt in die tabel. Gelieve dus eerst te gaan kijken of de eenheid al bestaat.

## Afronding

Bepaalt het aantal cijfers na de komma. Kan ook gebruikt worden om te censureren. Bijvoorbeeld door af te ronden op 10-tallen.
Absolute aantallen zijn gehele getallen, de rest (bv. promille, % en ratio's) is standaard 1 cijfer na de komma, tenzij meerdere effectief beter zijn.

## Drempelwaarde

Meer informatie over de drempelwaarde/threshold vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/03.%20Onderwerpentabel/threshold.md).

## Periodetype

- Meest courante is **Pending** (= lopende; over een periode) en **Stock** (= stand, op een bepaald moment). Gebruik enkel pending indien je de cijfers zinvol kunt optellen over meerdere jaren (dus bijvoorbeeld nooit voor percentages)
- Bij Stock onderwerpen kan het jaartal verwarrend zijn. Heel wat stock-opnames worden gemaakt op nieuwjaar. In de helft van de gevallen beschouwen die bronnen dat als 31 december, in de andere helft als 1 januari. Doordat we diverse bronnen samenbrengen, moeten we harmoniseren. Wij hebben de keuze gemaakt om deze steeds weer te geven alsof het om 1 januari gaat. Daarom kan het zijn dat je bij de oorspronkelijke bronnen een ander jaartal ziet voor dezelfde data. **Toon je de data op een ander jaartal dan de bron?** Doe dan het volgende:
    - Maak een [Url link](https://provincies.incijfers.be/admin/studio/Table?tableName=UrlLink) met als tekst "⚠ Opgelet met jaartallen! Lees meer over Naam Bron". Als URL kies je de metadatafiche. Zet deze URL als eerste object in de CategeryTree in de map die de data van deze bron bundelt.
    - Aan de **Description** van de Indicator voegen we aan het einde toe (na een line-break): "_Het aangegeven jaartal staat voor de toestand van 31/12 van het jaar daarvoor (bijvoorbeeld: 2023 = toestand 31/12/2022)._"
    - Aan de **Footnote** van de Indicator voegen we sinds 20/02/2025 niets meer toe. Enkel aan de **voetnoot van de bron**: "_Opgelet: Het aangegeven jaartal staat voor de toestand van 31/12 van het jaar daarvoor. Waar wij dus de cijfers harmoniseren om 31/12/2022 als 2023 te tonen, spreekt de oorspronkelijke bron wellicht van 2022._"
    - Bij gebruik in Dashboard: voeg een tile toe die waarschuwt dat bij tiles van deze bron mogelijk een ander jaartal gebruikt wordt dan bij de bron zelf.
- In het de [toelichting bij het Sjabloon Metadata](https://teams.microsoft.com/_?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e#/files/Uploadfiles%20PinC?threadId=19:51c8556c2f0c4552b8acc0b7c93024b7@thread.tacv2&ctx=channel&rootfolder=%252Fteams%252FDA-Interprovincialewerking%252FGedeelde%2520documenten%252FUploadfiles%2520PinC%252F00%2520Metadatafiches%2520PinC%252FSjabloon%2520metadata) dat je kan terugvinden binnen Teams > D&A Interprovinciale werking > Uploadfiles PinC > 00 Metadatafiches PinC, vind je de standaardformuleringen om de periode to omschrijven.
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
