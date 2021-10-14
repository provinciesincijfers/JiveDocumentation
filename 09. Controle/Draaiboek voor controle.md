
# Draaiboek controle provincies.incijfers.be

versie feb 2021

## Inhoud

![](RackMultipart20210428-4-22qu8e_html_babe4c2c4e607169.jpg)Procedure &#39;Elkaar controleren&quot; kort

- Wie is verantwoordelijk
- Procedure
- Waar controleren?
- Controle afgerond?

Verantwoordelijke opzoeken in PinC

- Methode
- Codeboek
- Gebruik binnen Swing

Doorverwijzing checklist voor grondige controle

## Procedure &quot;Elkaar controleren&quot; kort

### Wie is verantwoordelijk?

Een **overzicht** is beschikbaar in het **&quot;opvolgingsbestand taakverdeling&quot;**, tabbladen Taakverdeling en Domeinstructuur. Dit bestand staat hier: [Teams > Interprovinciale werking > Algemeen](https://teams.microsoft.com/l/file/42D8BF76-DF8F-4518-8606-C57E70B64310?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e&amp;fileType=xlsx&amp;objectUrl=https%3A%2F%2Fvlbr.sharepoint.com%2Fteams%2FDA-Interprovincialewerking%2FGedeelde%20documenten%2FGeneral%2FOpvolgingsbestand%20taakverdeling.xlsx&amp;baseUrl=https%3A%2F%2Fvlbr.sharepoint.com%2Fteams%2FDA-Interprovincialewerking&amp;serviceName=teams&amp;threadId=19:c4098e9ac4e540f99d6f626ed467eaa0@thread.tacv2&amp;groupId=affb505a-9c02-40a9-a491-9b2e3ac774a6).

Per onderwerp staat dit ook aangegeven **in Swing in het &quot;vrij tekstveld&quot; (Free textfield)** in de [Onderwerpentabel](https://provincies.incijfers.be/Admin/Studio/Table?tableName=Variable). Verder in dit document wordt dit uitgelegd.

❕ ***Iedereen is verantwoordelijk! Als je iets raars ziet, neem het dan op met degene die de data importeert en laat het indien nodig ook aan de interprovinciaal databeheerder weten.***

### Procedure

1. Verantwoordelijke provincie zorgt voor **upload + checkt de gegevens** voor en na upload in het systeem. Eens deze provincie tevreden met het resultaat, dan geven ze een seintje aan de controlerende partner. Stuur (zeker bij externen) altijd de link mee naar het controledocumenten. Degene die op Github staan, zijn het meest up to date. 

2. De tweede verantwoordelijke (check) doet een **controle** op de ingevoerde gegevens zoals hieronder beschreven.

3. De verantwoordelijke provincie **verwerkt de feedback van de controleur vooraleer tot publicatie over te gaan**.

**Voor bestaande data**: bij een update van een bestaande datareeks wordt data publiek zichtbaar van zodra de databank live gezet wordt. Als je data inleest in de gewone Studio, moet je dus zeker zijn dat deze snel kan gecontroleerd worden door je controleur. **Bel daarom** naar de controleur alvorens in te laden in de gewone Studio. Als de controleur aangeeft niet snel te kunnen controleren, dan kan je:

- **afspreken** wanneer de data ingelezen wordt in de gewone Studio
- **de data inlezen in de Beta-versie**. De verantwoordelijke provincie moet dan natuurlijk twee keer inladen, en nagaan of er bij overzet van Beta naar gewone versie niets misgaat. Deze loopt ook het risico dat de Beta in de tussenliggende periode overschreven wordt.
- Indien **enkel een periode** werd toegevoegd, kan afgesproken worden om het eindjaar manueel terug te zetten. De controleur past dit dan aan om te kunnen controleren

**Voor nieuwe data**: nadat de controle is afgerond, wordt de Redactiegroep op de hoogte gebracht per mail. Indien er geen feedback komt, dan wordt er gepubliceerd na een week. Andere provincies kunnen wel de vraag stellen om de publicatie te blokkeren tot het besproken kan worden, ten laatste op de eerstvolgende Redactiegroep.

### Waar controleren?

- Binnen de werkgroep Economie controleert men elkaars uploadfiles. Dit is de excel die klaar staat voor upload naar Swing. Alle uploadfiles horen op Teams te staan.
- Het is **aangeraden om te controleren in de testomgeving**: [https://provincies.incijfers.be/admin/jive](https://provincies.incijfers.be/admin/jive). In Excel files komen komen sommige fouten immers niet naar boven. Als het gaat om updates, dan is dit de enige eenvoudige manier om te testen zonder dat eindgebruikers potentieel foute data kunnen zien.
- Als de **data enkel INTERN staan**, dan moet de controlerende partner uiteraard over een account beschikken.
- Als de **data enkel INTERN staat én het gaat om nieuwe data**, dan kan er zonder problemen getest worden in de gepubliceerde [https://provincies.incijfers.be/databank](https://provincies.incijfers.be/databank) omgeving

❕ ***Neem maatregelen indien het prematuur publiceren van de databank problemen kan opleveren. Er zijn verschillende oplossingen mogelijk - neem dit op met de databeheerder.***

### Controle afgerond?

Vul aan in het [logboek](https://provincies.incijfers.be/admin/jive/Report/Edit/logboek) dat een dataset werd toegevoegd of geactualiseerd.

Vul aan in het **opvolgingsbestand taakverdeling** de datum van laatste upload en de datum van laatste check. Het opvolgingsbestand staat hier: [Teams > Interprovinciale werking > Algemeen](https://teams.microsoft.com/l/file/42D8BF76-DF8F-4518-8606-C57E70B64310?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e&amp;fileType=xlsx&amp;objectUrl=https%3A%2F%2Fvlbr.sharepoint.com%2Fteams%2FDA-Interprovincialewerking%2FGedeelde%20documenten%2FGeneral%2FOpvolgingsbestand%20taakverdeling.xlsx&amp;baseUrl=https%3A%2F%2Fvlbr.sharepoint.com%2Fteams%2FDA-Interprovincialewerking&amp;serviceName=teams&amp;threadId=19:c4098e9ac4e540f99d6f626ed467eaa0@thread.tacv2&amp;groupId=affb505a-9c02-40a9-a491-9b2e3ac774a6).

## Verantwoordelijke opzoeken in PinC

Hiervoor gebruiken we de kolom **&quot;vrij tekstveld&quot; in Studio**, zodat de verschillende databeheerders snel kunnen filteren op variabelen die voor hen relevant zijn.

### Methode

- **inhoudelijk verantwoordelijke**: degene die de data verzamelt en oplaadt
- **controlerende partner**: degene die de kwaliteit controleert
- **externe partners**: wanneer data opgeladen worden door andere diensten, dan geven we dit ook mee

**De code heeft deze structuur: VB\_AN**. 
- Hierbij staat het eerste deel voor de inhoudelijk verantwoordelijke. Het tweede deel staat voor de controlerende partner.
- Bij data die door partners beheerd worden, geven we dat als volgt aan: VB(ECO)\_AN(ECO)

### Codeboek

**Data-verantwoordelijken / controleur:**

- AN D&amp;A Antwerpen
- LI D&amp;A Limburg
- VB D&amp;A Vlaams-Brabant
- OV D&amp;A Oost-Vlaanderen
- WV D&amp;A West-Vlaanderen
- IP Interprovinciaal databeheerder

**Thematische inhoudsverantwoordelijken:**

- DNA Data &amp; Analyse (dit is default en wordt daarom NIET in de code gezet)
- ECO Economie
- KLI Klimaat
- TOE Toerisme
- DET Detailhandel
- LAN Landbouw


### Gebruik binnen Swing

**Typ in het veld &quot;vrij tekstveld&quot; de code van jouw provincie. Sorteer vervolgens op het vrij tekstveld.** Het is mogelijk dat je eens moet refreshen om een goed resultaat te krijgen. Om &quot;jouw&quot; onderwerpen te zien, scroll tot je de codes ziet die beginnen met jouw code. Om enkel de onderwerpen te zien die je moet controleren kan je zoeken op &quot;\_XX&quot;.

## De checklist voor grondige controle staat [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Checklist%20grondige%20controle%20databank.docx).
