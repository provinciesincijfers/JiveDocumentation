# De themaboom

**De toegang is geregeld via de Themaboom**. Dit impliceert dat **alle data die in Swing zit, in principe raadpleegbaar is voor iedereen** - alleen is het niet eenvoudig ze te vinden. Enkel de afscherming van statsec en van oude jaargangen geldt altijd. Dit is een keuze die de zaak veel beheersbaarder houdt, MAAR betekent dat **écht gevoelige data geen plaats heeft in Swing**. Meer informatie over toegangsgroepen/accesgroups staat [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/05.%20Themaboom%20-%20Toegang%20beheren/Toegangsgroepen.md).

**In de Themaboom organiseer je de inhoud van je Swing-versie in mappen**. De zichtbaarheid van deze mappen kan je op diverse manieren organiseren.

- Je kan een map op &quot; **Onzichtbaar**&quot; zetten. Dan is ze onzichtbaar, voor iedereen, inclusief jezelf.
- Je kan **Gebruikers binden aan een bepaalde map**. Ze kunnen dan enkel aanklikken wat er in die map en zijn submappen zit. Uiteraard kan je gebruikers ook binden aan de hoofdmap waar álles in zit.
- **Een gebruiker ziet enkel mappen die minstens één ding bevat waar die rechten op heeft**. meer informatie over gebruikersaccounts/usergroups vind je hier.

De **basisstructuur** is nu:

**PRODUCTIE** : alles wat zichtbaar is voor eindgebruikers

- **EXTERN:** alles wat zichtbaar is voor niet-ingelogde eindgebruikers

  - **INHOUDELIJKE MAPPEN**

  - **GEBIEDSINDELINGEN** : info en onderwerpen ivm de gebieden

  - **Thematische rapporten**

- **INTERN** : enkel zichtbaar voor ingelogde eindgebruikers (speciale klanten, centrumsteden, medewerkers provincies, …)

  - **Thematische indeling** : gewone indeling, meestal ruimer dan wat extern staat

  - **Projectmappen** : werkmappen van lopende projecten

  - **Rapporten** : overzicht van alle rapporten

  - **Swing Connectoren** : alle inkomende en uitgaande connectoren

  - **Dashboards** : de mappen die gebruikt worden om het Dashboard te voeden

- **TESTMAP** : enkel zichtbaar voor beheerders


## Policy op Provincies in Cijfer

### Eén map met de PRODUCTIE omgeving

Mensen met wie we projectmatig werken, zien de hele PRODUCTIE omgeving, dus de **mappen die we EXTERN laten zien en de mappen die we enkel INTERN** laten zien. Dat doe je door hen aan de **UserGroup Users toe te kennen (meer info over usergroups). Specifieke doelgroepen kunnen eventueel toegewezen worden aan een map binnen de PRODUCTIE omgeving, zodat ze niet overweldigd worden door het data-aanbod (zie vb usergroup=ruimte). Dit doen we doorgaans NIET, omdat mensen data willen combineren.

**De rechten tot data op niveau van de statistische sectoren is geregeld via `UserGroups`.**

**De PRODUCTIE map bevat** :

- Submap EXTERN voor gasten
- Submap INTERN met een uitgebreider aanbod voor onze eigen diensten en speciale klanten. Deze bevat:
  - Alternatieve thematische indelingenn
  - Mappen voor Thematische werkgroepen (vb werking Klimaat)
  - De mappen voor SWING CONNECTOR
  - Mappen om Dashboard te voeden

### Eén map ADMIN ONLY met tests en gevoelige data

Deze map is **enkel zichtbaar voor Swing Beheerders**. Swing-beheerders zijn doorgaans ook &quot;interne medewerkers&quot;, maar niet elke interne medewerker is een Swing beheerder.
 Deze map bestaat enkel om dingen die nog niet af zijn gemakkelijk te kunnen raadplegen. Op die manier worden &quot;interne medewerkers&quot; hier niet mee lastiggevallen.
 Wat hier staat is dus **zowel beschikbaar in de testomgeving als in de productieomgeving**. In beide gevallen enkel als je er rechten op hebt, enkel gemakkelijk vindbaar als je de map ADMIN ONLY kunt zien. En in de productieomgeving als de data al gepubliceerd is.

### Afspraken

- **Enkel rommelen in TESTMAP**, ook INTERN een beetje opgekuist houden.
- **Geen grote wijzigingen** zonder advies van Redactiegroep.
- **Logica hoofdletters** : THEMA > Map naam > Submap naam > onderwerp naam.
- **Mapnamen verschijnen soms in de titel van presentaties**. Als dit verwarrend kan zijn, maak ze dan niet &quot;Visible in title&quot; in titel (menu Edit achter rechtermuisklik op map).
- Het is toegestaan om indien relevant bepaalde onderwerpen/mappen te **dupliceren** op meerdere plaatsen. Meld dit even bij de Redactiegroep vooraleer je dit doet.
- **Onderwerpen beschikbaar op statsec** komen ook terug in de map **GEBIEDSINDELINGEN\&gt; beschikbaar vanaf statsec.**
- **Voor alle thema&#39;s waar dit relevant is, maken we percentages aan** (zie [Formule-onderwerpen](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/04.%20Data%20inlezen/Formule-onderwerpen.md). **De aantallen zetten we steeds eerst in de themaboom, dan pas de percentages**.
  - We zetten de **percentages in een submap indien er meer dan 12 onderwerpen in totaal in de hoofdmap zouden terechtkomen.** Deze submap zetten we voor de onderwerpen (zie screenshot).
  - Het is toegestaan om een submap te gebruiken bij **minder dan 12 onderwerpen** als dit in de context logischer is. Deze submap heet &quot;percentages&quot; indien er alleen percentages in zitten, indien er ook andere verhoudingen in zitten heet ze &quot;relatieve cijfers&quot;.

![image](https://user-images.githubusercontent.com/77432663/113412092-aca93280-93b7-11eb-84a4-141589ed23b9.png)


## Technische aspecten

- Ga naar **Viewer > Category Tree**. Links in beeld zie je de mappenstructuur. Rechts in beeld krijg je de list van Indicators. Je kunt ook presentations, reports en URLs toevoegen.
- Bij **grote wijzigingen** kan je best even de relevante map Exporteren om een backup te hebben van hoe het was.
  - Kan volledig via de **user interface bij Viewer > Themaboom**. Opgelet: na elke actie wordt de themaboom even helemaal opnieuw opgebouwd, waardoor je rap uit het oog kan verliezen waar je nu eigenlijk bezig bent. Ook hier kan je import-export operaties doen om tijd te winnen.
- Je kan **Onderwerpen en mappen kopiëren, knippen en plakken**. Dat kan met de rechtermuisknop of met ctrl+c / ctrl+v. Om meerdere dingen tegelijk te kopiëren, hou ctrl ingeduwd en klik de verschillende objecten aan.
  - **Bij het plakken wordt er IN de map gezet als je een map aanklikt**. Als je iets anders dan een map aanklikt, wordt er ONDER dit ding geplakt.
- Je kan ook dingen **verslepen**, maar dat kan rap **heel verwarrend** worden.
- Je kan werken met **aliassen**. Bijvoorbeeld kan je &quot;totale bevolking&quot; op de relevante plaats &quot;totale bevolking volgens rijksregister&quot; noemen, ook als dat doorgaans niet relevant is.
