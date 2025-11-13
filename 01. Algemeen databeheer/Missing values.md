# Hoe omgaan met gebied onbekend en ontbrekende gegevens

## Samenvattende tabel


code | naam | gebruik | weergave   in PinC | kan opgeteld worden binnen PinC?
-- | -- | -- | -- | --
-99996 | leeg | Dit   is hetzelfde als helemaal niets inlezen. Dat doen we eigenlijk nagenoeg   nooit. Zeer uitzonderlijk kan dit gebruikt worden voor een waarde die door de   bron gecensureerd werd toch in te lezen zonder sommeren onmogelijk te maken | - | ja
-99997 | verborgen   waarde | Door   de data-leverancier reeds gecensureerd | x | nee
-99998 | niet   van toepassing | Dit gebruiken we vooralsnog NIET | - | ja
-99999 | ten   onrechte geen antwoord | Invullen in Brussel wanneer de bron het gebied niet dekt, om te voorkomen dat Vlaamse bronnen toch opgeteld kunnen   worden samen met Brussel | ? | nee
0 | nul |  Er is niets en we weten dat er niets is, maar het had er wel kunnen zijn | 0 | ja

❗ ***Het is NIET wenselijk om een &quot;onbekende waarde&quot; in te voeren voor onbekende locaties (zie volgende topic) zoals gemeente 99991 of statsec 11001zzzz.***

## Duiding bij de afspraken

### Ontbrekende gegevens

Standaardgedrag: **lees waarden in voor alle gebieden** van het niveau waarop je inlaadt. In de meeste gevallen is dat een gewone waarde.

Als je van de bron **geen waarde** krijgt voor iets, dan kan dit betekenen:

- **De bron weet het niet**
  - Vaak is een cijfer alleen voor Vlaanderen beschikbaar en niet voor Brussel. We mogen dan doorgaans GEEN som maken van een Brussels en een Vlaams gebied. Bijvoorbeeld mogen we voor bevolking-via-rijksregister Aalst niet met Anderlecht optellen! We moeten hier dus missing type **-99999** gebruiken.

❗***Aangezien we -99999 gebruiken om PRAKTISCHE redenen, is dit eigenlijk niet altijd een TOGA (ten onrecht geen antwoord)***, waarvoor het technisch gezien bedoeld is.      Bijvoorbeeld is het &quot;aantal afgewerkte woningen volgens EPB-data&quot; in Brussel eigenlijk &quot;niet van toepassing&quot;, aangezien EPB een Vlaams instrument is. Toch willen we een ongeldig resultaat als we proberen dit op te tellen voor een Vlaamse en Brusselse gemeente!

  - Als het gaat om een ontbrekende waarde voor een gebied in Vlaanderen, die toch buiten het werkingsgebied van de bron is, dan hoort de hele reeks per definitie niet in PinC te zitten!
  - Het gaat om een waarde voor een &quot;recente&quot; fusiegemeente die nog niet berekend werd door de bron. Dit is dus inhoudelijk een TOGA (-99999), en mag ook op die manier ingelezen worden.

- **De bron weet dat het er niet is**
  - Dit is het meest courante. Als je gewoon data over X verwerkt, krijg je enkel records waar X voorkomt. Maar eigenlijk weet je dat er geen X zijn in de andere records. Wij vullen daarom steeds onze uploadfiles aan met records met **de waarde 0** voor alle gebieden van het gebiedsniveau waarop je inleest. Indien een totaal de waarde 0 krijgt, krijgen ook de onderliggende subtotalen de waarde 0.
  - Het kan uitzonderlijk ook gebeuren dat de bron zowel voor Vlaanderen als Brussel geldige cijfers kan geven, maar dat het eenvoudig maar in één van de twee gewesten in de praktijk voorkomt. In dat geval moet je dus 0 inlezen op de gebieden van beide gewesten waarvoor cijfers ontbreken.

Als de bron een **gecensureerde waarde geeft** (en de waarde zelf NIET meegeeft):

- In principe moet dit een -99997 zijn
- Dat zorgt ervoor dat je geen gebieden kunt optellen
- Vanaf gemeentelijk niveau is dit een zeldzaam probleem. Leg de keuze voor op de Redactiegroep. Standaard kies je voor -99997. Maar dan moet je de data inlezen op meerdere gebiedsniveaus om überhaupt een resultaat te krijgen voor Vlaanderen of voor sommige arrondissementen etc. Soms is het sop de kolen niet waard, en kan je bijvoorbeeld een -99996 inladen (ontbreekt, maar een optelling waarin dit zit wordt wel weergegeven). Of je kan het sudoku-gewijs uitrekenen en het getal inladen (uiteraard verborgen onder een drempelwaarde).
- Op subgemeentelijk niveau: vaker een groter probleem. In principe gebruik je een -99997


❗***Bij KUBUSSEN zijn dit soort aanpassing grotendeels onhaalbaar.*** Immers zou je dan data moeten inlezen voor alle combinaties die in theorie mogelijk zijn. De enige **uitzondering** is dat we waar nodig wél brekende missings (-99999) inlezen in eenvoudige kubussen op gemeenteniveau. [Meer info hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/02.%20Data%20defini%C3%ABren/kubussen/brussel-invullen)



### Onbekende locatie

Vroeger gebruikten we voor data op gemeenteniveau voor niet te lokaliseren cijfers de code gemeente=99999. Dit heeft echter zeer weinig nut. 99999 wordt niet aan Vlaanderen en niet aan Brussel toegekend. Aangezien we geen gebiedsniveau &quot;België&quot; of &quot;Brussel+Vlaanderen&quot; hebben, wordt je cijfer dus nergens in het totaal meegenomen.

**Daarom gebruiken we nu:**

- gemeente=99991: cijfers waarvan we niet weten waar IN VLAANDEREN ze zich voordoen
- gemeente=99992: cijfers waarvan we niet weten waar IN BRUSSEL ze zich voordoen
- gemeente=99993: als we het écht niet weten, maar om duistere redenen toch willen meegeven
- gemeente=99999: cijfers waarvan we weten dat ze zich buiten Vlaanderen en Brussel voordoen

Deze cijfers worden meegenomen in het totaal voor Vlaanderen, respectievelijk Brussel. **In de meeste gevallen kan je dus nu de data enkel op gemeenteniveau inlezen en toch correcte cijfers voor heel Vlaanderen krijgen**.

Op **sub-gemeentelijk niveau** komen deze codes inhoudelijk ook voor, bijvoorbeeld als 99991zzzz voor statistische sectoren. Daarnaast heeft elke gemeente een eigen &quot;sector onbekend&quot;. Een openstaand issue is dat er op statsec nog steeds een &quot;sector onbekend&quot; is voor alle gemeenten versie 2018 en geen voor de nieuwe gemeenten. Data waarvan je dus enkel weet dat ze in Pelt waren, maar waarvan je NIET weet of ze nu in Overpelt of Neerpelt voorgekomen zijn, kan je op dit moment NIET correct behandelen. Dit wordt opgelost op het moment dat we de statsec versie 2020 aanmaken.

❗Normaal gezien moet er nooit expliciet een missing gestoken worden in 'gebied onbekend'.


## Missing values: technisch gezien

**Er is iets en we weten dat we niet weten hoeveel** (wanneer er bv. geen gegevens voor Brussel zijn):

&quot;-99999&quot;: ?; TOGA (ten onrechte geen antwoord)

&quot;-99997&quot;: een verborgen waarde (door de dataleverancier gecensureerd)

:arrow_right: Ontbrekende waarden leiden tot het ontbreken van elk resultaat dat hierop verder bouwt

**Er is niets, maar dat kon ook niet anders** (vb: in dit gebied is er geen Vlaamse premie):

&quot;-99998&quot;: niet van toepassing (kan hier niet voorkomen)

:arrow_right: Ontbrekende waarden leiden NIET tot het ontbreken van resultaten die hier op verder bouwen
*Voorbeeld: ~~data van Brussel voor een Vlaamse premie~~ (strikt gezien correct, maar wij gebruiken het niet op die manier)*

**Er is niets, en we denken dat er ook niets is** (vb: we hebben geen weet van aanwezigheid van een universiteit in deze gemeente maar er zou er wel een kunnen komen) :

&quot;-99996&quot;: &quot;leeg&quot;

- je leest een lege record in

- je leest helemaal geen record in

:arrow_right: Ontbrekende waarden leiden NIET tot het ontbreken van resultaten die hier op verder bouwen

### Aggregatie 

**Standaard worden onderwerpen geaggregeerd door Swing**. In uitzonderlijke gevallen lezen we de data hard in op meerdere niveaus bv. omdat we voor bepaalde gebieden geen data krijgen wegens censuur.

Ook al worden de gegevens per geolevel afzonderlijk ingelezen, **je moet het onderwerp aggregeerbaar maken**. Dit wil zeggen: in de tabel Indicators de kolom “Aggregate geoitems” niet op 0 zetten, dus niet uitvinken. Anders ga je bv. niet de som kunnen nemen van twee gemeenten, ook als die beide geldige data hebben.

Het is niet nodig om dit uit te vinken: **Swing geeft altijd voorkeur aan ingeladen data boven zelf-berekende data** (ttz, het cijfer dat we inlezen voor de provincie gaat gebruikt worden, niet het cijfer dat je gedeeltelijk zou kunnen berekenen op basis van de gemeenten; mocht er bv. geen enkele -99997 bij zitten).

**Soms mogen onderwerpen echt niet geaggregeerd worden** door Swing, bv. als het om een mediaan gaat. **Zet dan de aggregatie uit.**


### Online weergave van de verschillende types

[zie hier](https://provincies.incijfers.be//databank?workspace_guid=fe11217a-9cdc-44a9-893d-32cd70377046)

❗**Belangrijke implicatie** : als je data hebt die door de bron gecensureerd zijn, moet je dit in theorie inlezen als een type -99997 missing. MAAR alle afgeleide data (formules, gebiedsaggregaties) worden dan ook gecensureerd. Bijvoorbeeld: geen aantal werklozen voor Vlaanderen omdat die van Herstappe gecensureerd zijn! Dit kan dus aanleiding geven om de data incorrect toch als een -99996 in te lezen uit pragmatische overwegingen.

_Er is niets en we weten dat er niets is, maar het had er wel kunnen zijn_ (we hebben succesvol het ontbreken van vissen in ons meer vastgesteld)

:arrow_right: &quot;0&quot;: het getal nul
