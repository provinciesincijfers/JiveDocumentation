# Hoe omgaan met gebied onbekend en ontbrekende gegevens



## Praktische afspraken

### Ontbrekende gegevens

Standaardgedrag: **lees waarden in voor alle gebieden** van het niveau waarop je inlaadt. In de meeste gevallen is dat een gewone waarde.

Als je van de bron **geen waarde** krijgt voor iets, dan kan dit betekenen:

- **De bron weet het niet**
  - Vaak is een cijfer alleen voor Vlaanderen beschikbaar en niet voor Brussel. We mogen dan doorgaans GEEN som maken van een Brussels en een Vlaams gebied. Bijvoorbeeld mogen we voor bevolking-via-rijksregister Aalst niet met Anderlecht optellen! We moeten hier dus missing type **-99999** gebruiken.

  ❗ ***Aangezien we -99999 gebruiken om PRAKTISCHE redenen, is dit eigenlijk niet altijd een TOGA (ten onrecht geen antwoord)***, waarvoor het technisch gezien bedoeld is.      Bijvoorbeeld is het &quot;aantal afgewerkte woningen volgens EPB-data&quot; in Brussel eigenlijk &quot;niet van toepassing&quot;, aangezien EPB een Vlaams instrument is. Toch willen we een ongeldig resultaat als we proberen dit op te tellen voor een Vlaamse en Brusselse gemeente!

  - Als het gaat om een ontbrekende waarde voor een gebied in Vlaanderen, die toch buiten het werkingsgebied van de bron is, dan hoort de hele reeks per definitie niet in PinC te zitten!
  - Het gaat om een waarde voor een &quot;recente&quot; fusiegemeente die nog niet berekend werd door de bron. Dit is dus inhoudelijk een TOGA (-99999), en mag ook op die manier ingelezen worden.

- **De bron weet dat het er niet is**
  - Dit is het meest courante. Als je gewoon data over X verwerkt, krijg je enkel records waar X voorkomt. Maar eigenlijk weet je dat er geen X zijn in de andere records. Wij vullen daarom steeds onze uploadfiles aan met records met **de waarde 0** voor alle gebieden van het gebiedsniveau waarop je inleest. Indien een totaal de waarde 0 krijgt, krijgen ook de onderliggende subtotalen de waarde 0.
 Bij KUBUSSEN is dit soort aanpassing onhaalbaar. Immers zou je dan nullen moeten inlezen voor alle combinaties die in theorie mogelijk zijn.
  - Het kan uitzonderlijk ook gebeuren dat de bron zowel voor Vlaanderen als Brussel geldige cijfers kan geven, maar dat het eenvoudig maar in één van de twee gewesten in de praktijk voorkomt. In dat geval moet je dus 0 inlezen op de gebieden van beide gewesten waarvoor cijfers ontbreken.

Als de bron een **gecensureerde waarde geeft** (en de waarde zelf NIET meegeeft):

- In principe moet dit een -99997 zijn
- Dat zorgt ervoor dat je geen gebieden kunt optellen
- Vanaf gemeentelijk niveau is dit een zeldzaam probleem. Leg de keuze voor op de Redactiegroep. Standaard kies je voor -99997. Maar dan moet je de data inlezen op meerdere gebiedsniveaus om überhaupt een resultaat te krijgen voor Vlaanderen of voor sommige arrondissementen etc. Soms is het sop de kolen niet waard, en kan je bijvoorbeeld een -99996 inladen (ontbreekt, maar een optelling waarin dit zit wordt wel weergegeven). Of je kan het sudoku-gewijs uitrekenen en het getal inladen (uiteraard verborgen onder een drempelwaarde).
- Op subgemeentelijk niveau: vaker een groter probleem. In principe gebruik je een -99997

❗ ***Het is NIET wenselijk om een &quot;onbekende waarde&quot; of nul in te voeren voor onbekende locaties (zie volgende topic) zoals gemeente 99991 of statsec 11001zzzz.***





### Onbekende locatie

Vroeger gebruikten we voor data op gemeenteniveau voor niet te lokaliseren cijfers de code gemeente=99999. Dit heeft echter zeer weinig nut. 99999 wordt niet aan Vlaanderen en niet aan Brussel toegekend. Aangezien we geen gebiedsniveau &quot;België&quot; of &quot;Brussel+Vlaanderen&quot; hebben, wordt je cijfer dus nergens in het totaal meegenomen.

**Daarom gebruiken we nu:**

- gemeente=99991: cijfers waarvan we niet weten waar IN VLAANDEREN ze zich voordoen
- gemeente=99992: cijfers waarvan we niet weten waar IN BRUSSEL ze zich voordoen
- gemeente=99999: als we het écht niet weten, maar om duistere redenen toch willen meegeven

Deze cijfers worden meegenomen in het totaal voor Vlaanderen, respectievelijk Brussel. **In de meeste gevallen kan je dus nu de data enkel op gemeenteniveau inlezen en toch correcte cijfers voor heel Vlaanderen krijgen**.

Op **sub-gemeentelijk niveau** komen deze codes inhoudelijk ook voor, bijvoorbeeld als 99991zzzz voor statistische sectoren. Daarnaast heeft elke gemeente een eigen &quot;sector onbekend&quot;. Een openstaand issue is dat er op statsec nog steeds een &quot;sector onbekend&quot; is voor alle gemeenten versie 2018 en geen voor de nieuwe gemeenten. Data waarvan je dus enkel weet dat ze in Pelt waren, maar waarvan je NIET weet of ze nu in Overpelt of Neerpelt voorgekomen zijn, kan je op dit moment NIET correct behandelen. Dit wordt opgelost op het moment dat we de statsec versie 2020 aanmaken.

## Missing values: technisch gezien

**Er is iets en we weten dat we niet weten hoeveel** (we hebben de vissen proberen tellen in dit meer, we hebben er gevonden, maar we zijn het resultaat kwijtgeraakt):

&quot;-99999&quot;: ?; TOGA (ten onrechte geen antwoord)

&quot;-99997&quot;: een verborgen waarde (door de dataleverancier gecensureerd)

:arrow_right: Ontbrekende waarden leiden tot het ontbreken van elk resultaat dat hierop verder bouwt

**Er is niets, maar dat kon ook niet anders** (vb: in dit gebied zijn geen meren!):

&quot;-99998&quot;: niet van toepassing (kan hier niet voorkomen)

:arrow_right: Ontbrekende waarden leiden NIET tot het ontbreken van resultaten die hier op verder bouwen
*Voorbeeld: ~~data van Brussel voor een Vlaamse premie~~ (strikt gezien correct, maar wij gebruiken het niet op die manier)*

**Er is niets, en we denken dat er ook niets is** (vb: we hebben geen weet van aanwezigheid van vissen in dit meer) :

&quot;-99996&quot;: &quot;leeg&quot;

- je leest een lege record in

- je leest helemaal geen record in

:arrow_right: Ontbrekende waarden leiden NIET tot het ontbreken van resultaten die hier op verder bouwen


### Online weergave van de verschillende types

:arrow_right:  [zie hier](https://provincies.incijfers.be//jive?workspace_guid=fe11217a-9cdc-44a9-893d-32cd70377046)

❗ **Belangrijke implicatie** : als je data hebt die door de bron gecensureerd zijn, moet je dit in theorie inlezen als een type -99997 missing. MAAR alle afgeleide data (formules, gebiedsaggregaties) worden dan ook gecensureerd. Bijvoorbeeld: geen aantal werklozen voor Vlaanderen omdat die van Herstappe gecensureerd zijn! Dit kan dus aanleiding geven om de data incorrect toch als een -99996 in te lezen uit pragmatische overwegingen.

_Er is niets en we weten dat er niets is, maar het had er wel kunnen zijn_ (we hebben succesvol het ontbreken van vissen in ons meer vastgesteld)

- &quot;0&quot;: het getal nul
