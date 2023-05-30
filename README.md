# JiveDocumentation - Start to Swing

Dit is de landingspagina voor alles wat betreft dagelijks beheer van provincies.incijfers.be, voor een groot stuk gaat het dan om Swing Studio.
[Hier meer info over wat we allemaal met Github doen](https://github.com/provinciesincijfers/provinciesincijfers), en [over *hoe* je dat doet](https://github.com/provinciesincijfers/provinciesincijfers/wiki).

**Vind je iets niet terug of ben je even de weg kwijt?** Laat het dan [hier](https://github.com/provinciesincijfers/JiveDocumentation/issues/14) weten. 

**In dit document:**

:point_right: vanaf de titel &#39;Beheer in Swing&#39; kan je ook klikken in het overzicht op de titel zelf om rechtstreeks naar de bijhorende map te gaan. 

❕ ***Basisinfrastructuur, Basisonderdelen beheer en Basisafspraken beheer Swing staan enkel binnen dit document opgesomd.***


- Beheer van dit document/repo
- Basisinfrastructuur
- Basisonderdelen beheer
- Basisafspraken beheer Swing
- Beheer in Swing Studio
   - [Algemeen databeheer](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/01.%20Algemeen%20databeheer)
   - [Data definiëren](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/02.%20Data%20defini%C3%ABren)
   - [Onderwerpentabel](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/03.%20Onderwerpentabel)
   - [Data inlezen](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/04.%20Data%20inlezen)
   - [Themaboom – Toegang beheren](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/05.%20Themaboom%20-%20Toegang%20beheren)
   - [Metadata](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/06.%20Metadata)
   - [Rapporten](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/07.%20Rapporten)
   - [Dashboard](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/08.%20Dashboard)
   - [Controle](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/09.%20Controle)

- [Communicatie](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/10.%20Communicatie)

- [Opleidingen](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/11.%20Opleidingen)

- [Meer weten?](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/12.%20Meer%20weten)

- [Bijzonder databeheer](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/13.%20Bijzonder%20databeheer)

# Beheer van dit document/repo

Alles wat je ooit wou weten over hoe je met /JiveDocumentation werkt, staat [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/Gebruiksaanwijzing%20JiveDocumentation.md).


# Basisinfrastructuur

![image](https://user-images.githubusercontent.com/77432663/111486597-e9c6c100-8737-11eb-9de1-ed6df3ced1e3.png)

Dit schema toont enkel de "gewone" omgeving. Zo ongeveer deze hele structuur bestaat ook met de prefix "accept" en met de prefix "beta". De eerste dient om nieuwe versies van de software te kunnen testen. De inhoud daarvan kan elk moment wijzigen. De "beta" dient om een veilige speeltuin te hebben en wordt af en toe overschreven met de inhoude van de gewone omgeving. De beta-versie wordt vaak gebruikt om meer tijd te hebben [om data te controleren](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Draaiboek%20voor%20controle.md). Als deze in de gewone versie wordt ingelezen, duurt het immers maar een paar dagen eer deze data live komt te staan.

# Basisonderdelen beheer

**Swing Jive** is de basistoepassing, waar Dashboard bovenop gebouwd is.

Beheer van Swing Jive gebeurt in [**Swing Studio**](https://provincies.incijfers.be/Admin/Studio/).

Vanuit die toepassing kan je ook doorklikken naar **DashAdmin**, de beheerstool voor de dashboards.

**Publiceren** of extern zetten is het proces waarmee dingen publiek zichtbaar gezet worden:

- Dit vereist dat de het [draaiboek voor controle](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/09.%20Controle/Draaiboek%20voor%20controle.md) is doorlopen
- De Onderwerpen zijn in de Themaboom EXTERN gezet. De Rapporten zijn toegevoegd op de zes relevante plaatsen. De Dashboard-pagina is zichtbaar gemaakt
- De Databank en/of het Dashboard worden live gezet. **De Databank live zetten is dus maar een klein onderdeel van publiceren!**

**Swing Jive** heeft een &quot;live&quot; versie een &quot;test&quot; versie.

- De &quot;**live**&quot; versie provincies.incijfers.be/databank staat op een krachtige server. Je kan er inloggen om gevoelige data of nog niet afgeronde thema&#39;s te raadplegen. Deze versie wordt ververst elke keer we &quot;de Databank live zetten&quot;.
- De &quot;**test**&quot; versie provincies.incijfers.be/admin/jive staat op een server die enkel bedoeld is om te testen. Je bent er doorgaans ingelogd, maar je kan er uitloggen om te zien wat klanten straks zien op de &quot;live&quot; versie.

:bulb: *Tip om vlot te kunnen testen: Je komt veel over een onderwerp te weten door het op de testomgeving of in de echte databank op te vragen. Als je de onderwerpcode al weet, dan kan dat supersnel via:
provincies.incijfers.be/databank?var=v1111a\_tot\_bevolking
 provincies.incijfers.be/admin/jive?var=v1111a\_tot\_bevolking
Je kan met dit soort parameters alle kanten op. Lees het [hier](https://provincies.incijfers.be/databank?report=achter_de_schermen) na.*

Of kijk [hoe je URLS correct communiceert](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/10.%20Communicatie/Goed%20communiceren%20van%20URLs%20in%20PinC.md).

De test-versie wordt regelmatig gepubliceerd. Als er een probleem opduikt, kunnen we dit tegenhouden met een **publicatiestop**. Dit is echter heel lastig voor andere beheerders. Als je voorziet dat je wijzigingen uitgebreid getest gaan moeten worden, of je wil iets uitproberen dat dingen kapot kan maken, gebruik dan de [**beta-omgeving**](https://beta-provincies.incijfers.be/) . Ook deze heeft een /databank en /admin/jive omgeving.

:grey_exclamation: *Hier kan je alles uittesten, alles kapot maken wat je wil, zonder enig risico voor de echte website. De data die erachter zit is een snapshot van de &quot;echte&quot; databank. Dat gaat dus snel verouderd zijn. Voorlopig is met Richard afgesproken dat we op afroep kunnen vragen om de recente versie daar neer te zetten. Op termijn kunnen we wellicht zelf een import-export operatie doen. Als je echt gaat prutsen, maak dan eerst een backup van de databank.*

Meer informatie over het gebruik van de test- en liveomgeving vind je binnen [deze map](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/05.%20Themaboom%20-%20Toegang%20beheren). Hier vind je tevens informatie over de themaboom, die de toegangkelijkheid regelt.


# Basisafspraken beheer Swing

- Provincies.incijfers.be is onze **collectieve verantwoordelijkheid**. Meld alle problemen of los ze zelf op! Kleine wijzigingen mag je gewoon doen, maar breng de verantwoordelijke op de hoogte. Weet je niet wie of wat verantwoordelijk is? Breng dan Joost op de hoogte. Grotere wijzigingen bespreek je met de inhoudelijk verantwoordelijke, Joost en/of de Redactiegroep.
- Gebruik een **persoonlijke account**. Enkel op die manier is het eenvoudig te achterhalen wie wat gedaan heeft. Gebruik een veilig paswoord. [Hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/05.%20Themaboom%20-%20Toegang%20beheren/Toegangs-%20en%20gebruikersgroepen.md) vind je meer over accounts voor beheerders en gebruikers.
- De **Databank wordt in principe enkel door Joost en Emilien gepubliceerd**. Publiceren doen we buiten de kantooruren. Immers stoor je collega&#39;s die aan het werken zijn in Studio, en stoor je eindgebruikers. Publiceren kan enkel indien er geen gebruikers zijn in Studio, noch online. Online gebruik kan je controleren via Google Analytics. Wil je toch zelf publiceren, laat het dan weten aan Joost dat je dit van plan bent. Het Dashboard publiceren heeft geen impact op eindgebruikers en kan dus wél tijdens de kantooruren.
- **Data die zélfs mits drempelwaarde echt gevoelig is, heeft geen plaats in Swing**. Dit kan wel mits we de hele architectuur van Toegangsgroepen zouden aanpassen. Maar let op: Toegangsgroepen worden op dit moment door de Connector genegeerd.


# Beheer in Swing Studio

## Algemeen databeheer

Alles over algemeen databeheer vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/01.%20Algemeen%20databeheer).

Hier vind je informatie over:

- Algemene afspreken bij nieuwe interessante datareeksen die al dan niet vallen buiten de scope van je eigen thema's 
- **Criteria** waaraan data moeten voldoen om in PinC opgenomen te worden.
- De **procedure voor uitdovende onderwerpen**.
- Wat te doen in het geval van **missing values**.
- Wat te doen bij **nieuwe datareeksen**. 


## Data Definiëren

Alles over data definiëren vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/02.%20Data%20defini%C3%ABren).

Hier vind je informatie over: 
- **Gewone of platte onderwerpen**
- **Kubus-onderwerpen**
- **Stroomdata**
- **Formule-onderwerpen**


## Onderwerpentabel

Meer informatie over de onderwerpentabel vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/03.%20Onderwerpentabel).

Hier vind je een voorbeeldbestand, en informatie over:
- **De belangrijkste velden**
- **Afspraken** rond deze velden
- **Tijdelijke onderwerpen**


## Data inlezen

Meer info over data inlezen vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/04.%20Data%20inlezen).

Hier vind je:
- De **algemene principes** met betrekking tot het inlezen van data
- Een **oefening** om data in te lezen
- Enkele **keuzes die je moet maken tijdens het importeren van data**
- informatie over het inlezen van **formule-onderwerpen**


## Themaboom - toegang beheren

Dit beheert de inhoud die je kan zien in de Databank, zowel voor ingelogde als niet ingelogde mensen. Maar ook wat er doorstroomt via de Connector of naar de Dashboards.
Meer informatie over de themaboom en het beheren van toegang vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/05.%20Themaboom%20-%20Toegang%20beheren).

Hier vind je:
- **Algemene informatie** over de toegang
- Informatie over de **themaboom**
- Alles wat je ooit wou weten over **toegangsgroepen en gebruikersgroepen**


## Metadata

Al de informatie over [Metadata](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/06.%20Metadata) vind je binnen de [interne Teamsomgeving](https://teams.microsoft.com/_?tenantId=abeeed50-ea7b-4008-b0e5-d27f624bf85e#/files/Uploadfiles%20PinC?threadId=19:51c8556c2f0c4552b8acc0b7c93024b7@thread.tacv2&ctx=channel&rootfolder=%252Fteams%252FDA-Interprovincialewerking%252FGedeelde%2520documenten%252FUploadfiles%2520PinC%252F00%2520Metadatafiches%2520PinC%252FSjabloon%2520metadata) onder Uploadfiles PinC > 00 Metadatafiches PinC > Sjabloon metadata.

## Rapporten

Binnen [deze map](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/07.%20Rapporten) vind je:
- Het **draaiboek** om rapporten aan te maken en te verwijderen
- De rapporten voorbereid door de **werkgroep OBMI**
- **Cursussen** over hoe je rapporten aanmaakt in Swing


## Dashboard

In [deze map](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/08.%20Dashboard/README.md) vind je:
- Het **Draaiboek** om een dashboard aan te maken
- Een **handleiding**


## Controle

[Hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/09.%20Controle) vind je: 
- Het **Draaiboek** voor controle
- De **Checklist** voor een grondige controle van de databank


# Communicatie

Wil je meer weten **hoe je op een correcte manier URL&#39;s communiceert in PinC?** Klik dan [hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/10.%20Communicatie). 


# Opleidingen

[Hier](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/11.%20Opleidingen) vind je de bestanden met de documenten die je gebruikt om **opleidingen voor je Swing-omgeving** te maken.

# Meer info

Nood aan nog wat meer info? Dan kan je terecht in [deze map](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/12.%20Meer%20weten) voor:
- De **handleiding om gebruik te maken van de Databank** van PinC
- **Handleidingen voor Swingproducten**
- De **basishandleiding**
of je kan gebruik maken van de **help-knopjes** binnen de Swing omgeving

# Bijzonder databeheer

Binnen [deze map](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/13.%20Bijzonder%20databeheer) kan je terecht voor:
- De berekening van **betrouwbaarheidsintervallen in Swing**
- Informatie over de **verschillende types kaartlagen**
