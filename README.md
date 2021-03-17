# JiveDocumentation - Start to Swing

**In dit document:**

(vanaf &#39;Beheer in Swing&#39; kan je klikken om naar de bijhorende repo te gaan, of verder scrollen in dit document)


Beheer van dit document/repo

Basisinfrastructuur

Basisonderdelen beheer

Basisafspraken beheer Swing

Beheer in Swing Studio

- [Algemeen databeheer](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/01.%20Algemeen%20databeheer)
- [Data definiëren](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/02.%20Data%20defini%C3%ABren)
- [Onderwerpentabel](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/03.%20Onderwerpentabel)
- [Data inlezen](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/04.%20Data%20inlezen)
- [Themaboom – Toegang beheren](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/05.%20Themaboom%20-%20Toegang%20beheren)
- [Metadata](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/06.%20Metadata)
- [Rapporten](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/07.%20Rapporten)
- [Dashboard](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/08.%20Dashboard)
- [Controle](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/09.%20Controle)

[Communicatie](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/10.%20Communicatie)

[Opleidingen](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/11.%20Opleidingen)

[Meer weten?](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/12.%20Meer%20info)

# Beheer van dit document/repo

- **Kleine wijzigingen** mag je gewoon zo aanpassen.
- Voor **grote wijzigingen** maak je eerst (indien het nog niet bestaat) een github issue aan waarnaar je vervolgens verwijst bij je aanpassingen. Laat dit ook weten aan Emilien. `Hier` vind je hoe je dit op een correcte manier kan doen.
- Wil je **inhoudelijk iets veranderen** (&quot;deze afspraak vind ik inhoudelijk niet goed&quot;)? Zet het dan op de agenda van de Redactiegroep.


# Basisinfrastructuur

![image](https://user-images.githubusercontent.com/77432663/111486597-e9c6c100-8737-11eb-9de1-ed6df3ced1e3.png)


# Basisonderdelen beheer

**Swing Jive** is de basistoepassing, waar Dashboard bovenop gebouwd is.

Beheer van Swing Jive gebeurt in [**Swing Studio**](https://provincies.incijfers.be/Admin/Studio/).

Vanuit die toepassing kan je ook doorklikken naar **DashAdmin**, de beheerstool voor de dashboards.

**Publiceren** of extern zetten is het proces waarmee dingen publiek zichtbaar gezet worden:

- Dit vereist dat de het `draaiboek voor controle van data` en/of `rapporten` is doorlopen
- De Onderwerpen zijn in de Themaboom EXTERN gezet. De Rapporten zijn toegevoegd op de zes relevante plaatsen. De Dashboard-pagina is zichtbaar gemaakt
- De Databank en/of het Dashboard worden live gezet. **De Databank live zetten is dus maar een klein onderdeel van publiceren!**

**Swing Jive** heeft een &quot;live&quot; versie een &quot;test&quot; versie.

- De &quot; **live**&quot; versie provincies.incijfers.be/databank staat op een krachtige server. Je kan er inloggen om gevoelige data of nog niet afgeronde thema&#39;s te raadplegen. Deze versie wordt ververst elke keer we &quot;de Databank live zetten&quot;.
- De &quot; **test**&quot; versie provincies.incijfers.be/admin/jive staat op een server die enkel bedoeld is om te testen. Je bent er doorgaans ingelogd, maar je kan er uitloggen om te zien wat klanten straks zien op de &quot;live&quot; versie.

&rarr; *Tip om vlot te kunnen testen? Je komt veel over een onderwerp te weten door het op de testomgeving of in de echte databank op te vragen. Als je de onderwerpcode al weet, dan kan dat supersnel via:
provincies.incijfers.be/databank?var=v1111a\_tot\_bevolking
 provincies.incijfers.be/admin/jive?var=v1111a\_tot\_bevolking
Je kan met dit soort parameters alle kanten op. Lees het na op [https://provincies.incijfers.be/databank?report=achter\_de\_schermen](https://provincies.incijfers.be/databank?report=achter_de_schermen)*

Of kijk `hoe je URLS correct communiceert`.

De test-versie wordt regelmatig gepubliceerd. Als er een probleem opduikt, kunnen we dit tegenhouden met een **publicatiestop**. Dit is echter heel lastig voor andere beheerders. Als je voorziet dat je wijzigingen uitgebreid getest gaan moeten worden, of je wil iets uitproberen dat dingen kapot kan maken, gebruik dan de **beta-omgeving**: [https://beta-provincies.incijfers.be/](https://beta-provincies.incijfers.be/) . Ook deze heeft een /databank en /admin/jive omgeving.

&rarr; *Hier kan je alles uittesten, alles kapot maken wat je wil, zonder enig risico voor de echte website. De data die erachter zit is een snapshot van de &quot;echte&quot; databank. Dat gaat dus snel verouderd zijn. Voorlopig is met Richard afgesproken dat we op afroep kunnen vragen om de recente versie daar neer te zetten. Op termijn kunnen we wellicht zelf een import-export operatie doen. Als je echt gaat prutsen, maak dan eerst een backup van de databank.*

Meer informatie over het gebruik van de test- en liveomgeving, vind je `hier`.

De toegankelijkheid wordt geregeld via de themaboom. Meer info vind je `hier`.


# Basisafspraken beheer Swing

- Provincies.incijfers.be is onze **collectieve verantwoordelijkheid**. Meld alle problemen of los ze zelf op! Kleine wijzigingen mag je gewoon doen, maar breng de verantwoordelijke op de hoogte. Weet je niet wie of wat verantwoordelijk is? Breng dan Joost op de hoogte. Grotere wijzigingen bespreek je met de inhoudelijk verantwoordelijke, Joost en/of de Redactiegroep.
- Gebruik een **persoonlijke account**. Enkel op die manier is het eenvoudig te achterhalen wie wat gedaan heeft. Gebruik een veilig paswoord. `Hier` vind je meer over accounts voor beheerders en gebruikers.
- De **Databank wordt in principe enkel door Joost gepubliceerd**. Publiceren doen we buiten de kantooruren. Immers stoor je collega&#39;s die aan het werken zijn in Studio, en stoor je eindgebruikers. Publiceren kan enkel indien er geen gebruikers zijn in Studio, noch online. Online gebruik kan je controleren via Google Analytics. Wil je toch zelf publiceren, laat het dan weten aan Joost dat je dit van plan bent. Het Dashboard publiceren heeft geen impact op eindgebruikers en kan dus wél tijdens de kantooruren.
- **Data die zélfs mits drempelwaarde echt gevoelig is, heeft geen plaats in Swing**. Dit kan wel mits we de hele architectuur van Toegangsgroepen zouden aanpassen. Maar let op: Toegangsgroepen worden op dit moment door de Connector genegeerd.


# Beheer in Swing Studio

## Algemeen databeheer

`Criteria` waaraan data moeten voldoen om in PinC opgenomen te worden.

`Procedure` voor uitdovende onderwerpen.

Wat te doen in het geval van missing values vind je `hier`.


## Data Definiëren

Data definiëren doen we in de tabel Data > Onderwerpen. Hiermee wordt enkel het onderwerp zelf aangemaakt. Wil je het zichtbaar maken, dan moet je straks nog naar het hoofdstuk Themaboom Beheren.

Dit zijn de reeksen data die we hebben. Hierin wordt allerlei info over deze onderwerpen verzameld. Er zijn **vier grote types** onderwerpen:

- **Gewone of platte onderwerpen**: een reeks waarvoor we data hebben ingeladen per gebied en per jaar
- **Kubus-onderwerpen**: een reeks waarvoor we data hebben ingeladen per gebied, per jaar en per combinatie van dimensies (vb leeftijd en geslacht). Meer info vind je `hier`.
- **Stroomdata**: een reeks waarvoor we data hebben ingeladen per gebied VAN, gebied NAAR en per jaar. `Meer over stroomdata`.
- **Formule-onderwerpen**: onderwerpen die afgeleid zijn uit een of meerdere gewone onderwerpen, (subgroepen uit) kubussen of andere formule-onderwerpen. Verder bouwen op stroomdata kan niet (zie hoofdstuk Formule-onderwerpen). Meer info vind je `hier`.

&rarr; *Het meeste dagelijks beheer omvat enkel gewone- en formule-onderwerpen!*


## Onderwerpentabel

`Voorbeeldbestand`

Informatie over de belangrijkste velden vind je `hier`.


## Data inlezen

Meer info over data inlezen vind je `hier`.


### Data importeren - Keuzes bij upload

Meer info vind je `hier`.

### Formule-onderwerpen

Dit vind je `hier` terug.



## Themaboom - toegang beheren

Dit beheert de inhoud die je kan zien in de Databank, zowel voor ingelogde als niet ingelogde mensen. Maar ook wat er doorstroomt via de Connector of naar de Dashboards.

Alles over het kader en de daaraan gekoppelde gebruikersaccounts vind je `hier`.

De afspraken hieromtrent vind je `hier`.

Voor technische aspecten kan je `hier` terecht.


### Toegang beheren

De toegang tot de data wordt voornamelijk geregeld via de Themaboom. Voor meer informatie hierover, ga naar `deze pagina`.

Voornaamste zaken:

- Gasten hebben enkel toegang tot de map EXTERN.
- Speciale gebruikers (personeel provincie, centrumsteden of andere specifieke klanten met een account) kunnen inloggen op provincies.incijfers.be/databank en zien de map PRODUCTIE, waar zowel het INTERNE en EXTERNE deel te zien is.
- Swing Beheerders hebben recht op alle mappen, ook de TESTMAP.


### Architectuur van de toegangsgroepen

Om dit mogelijk te maken hebben we `deze AccessGroups`.


## Metadata

Voorlopig vind je alles over de opmaak van metadatafiches `hier`. We zijn echter bezig om dit proces grotendeels automatisch te laten verlopen via PinC. Meer info volgt nog.

Voor de opmaak van de metadatafiches gebruik je het `Sjabloon Metadata`.

De toelichting hieromtrent vind je `hier`.

Indien er **voor één Bron (zie verder) meerdere PDF&#39;s** zijn, dan moet er nog een **HTML-bestand** aangemaakt worden dat aan de bron gekoppeld wordt. In dit HTML bestand worden de links gezet naar de verschillende fiches die met deze bron te maken hebben.


## Rapporten

Zie `draaiboek Rapporten aanmaken`.


## Dashboard

Zie `draaiboek dashboard`.


## Controle

Zie het `draaiboek voor controle`


# Communicatie

Wil je meer weten hoe je op een correcte manier URL&#39;s communiceert in PinC? Bekijk dan zeker `deze pagina`.


# Opleidingen

`Hier` vind je de bestanden met de documenten die je gebruikt om opleidingen voor je Swing-omgeving te maken.

# Meer info

Nood aan nog wat meer info? Je kan altijd op de helpknopjes klikken in de Swingomgeving, of je kan de `basishandleiding` erbij nemen.

