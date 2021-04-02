# Beheer toegang: toegangsgroepen

! **De toegang staat los van dataveiligheid**. Als je bijvoorbeeld een deel-link maakt met onderwerpen in de TESTMAP, dan kan een gast toch de cijfers zien! We kunnen dit doen, omdat kleine aantallen gecensureerd worden en we geen gevoelige data in PinC zetten.

Bekijk zeker ook dit document over de themaboom.

## Toegangsgroepen &amp; inloggen

**Iedereen die Swing gebruikt zit per definitie in een Toegangsgroep/Accessgroup**. Ook mensen die gewoon je website bezoeken en verder niets doen. In **Versie \&gt; Instellingen** wordt bepaald welke Gebruiker gebruikt wordt om de rechten van buitenstaanders toe te kennen. Je kunt ervoor kiezen om heel ver te gaan in de organisatie van gebruikers in gebruikersgroepen en toegangsgroepen, of je kan hier niet of nauwelijks in differentiëren.

**Alle gebruikers, behalve de &quot;gastgebruiker&quot; moeten inloggen**. Die inlog kan je zowel in de gepubliceerde omgeving als in de nog-niet-gepubliceerde omgeving gebruiken (zie verder). Alle gebruikers kunnen in beide omgevingen inloggen. Swing beheerders kunnen hun login in beide omgevinge gebruiken, maar ook nog eens in de Studio. Zij hebben als Gebruikerstype (via de tabel Gebruikersgroepen) het type Beheerder meegekregen (`zie verder`). **Elke account waarmee je in Studio kunt inloggen, kan je dus ook in je live website (de productieomgeving) gebruiken**. In theorie zou je een Beheerder echter op basis van Toegangsgroepen de toegang tot de data zelf kunnen ontzeggen.

**Alle data waar je rechten op hebt, is raadpleegbaar. De Themaboom dient enkel om dit ** _ **gemakkelijk** _ ** te maken voor mensen**. Maar als je bijvoorbeeld de onderwerpcode kent, dan kan je ze sowieso raadplegen door `?var=onderwerpcode` toe te voegen aan de URL van je website.

## Themaboom en Toegangsgroepen

De zichtbaarheid van de mappen wordt georganiseerd via de themaboom. Om dit mogelijk te maken hebben we **deze**  **AccessGroup** s.

- **extern** : bevat ALLE onderwerpen, maar niet alle gebiedsniveaus. Statsec ontbreekt, en enkele gebiedsindelingen die niet voor iedereen relevant zijn. Ze bevat ook een subset van DimensieNiveaus die voor iedereen beschikbaar mogen zijn
- **extern\_statsec** : bevat een subset van onderwerpen die expliciet toegankelijk zijn gemaakt op niveau statsec
- **extern\_gembelg** : deze groep moet je niet aankomen. Ze bestaat enkel om het mogelijk te maken in rapporten stroomdata voor heel België te tonen (dit mogen we niet gewoon in de Databank)
- **system** : dit moet STEEDS op &quot;alles tonen&quot; voor alles blijven staan. Anders kan je zelfs als admin niet meer alles zien!
- **intern** : bevat op dit moment ook gewoon alles

We gebruiken de Access Groups om **enkele zaken voor niet-ingelogde eindgebruikers af te**** schermen**. Met name:

- Data is NIET automatisch op statsec niveau beschikbaar
- Nieuwe dimensieniveaus van kubussen zijn NIET automatisch beschikbaar

Dus:

_Wil je nieuwe data op niveau_ _statsec publiceren, dan moeten de onderwerpen toegevoegd worden aan de lijst Indicators van de rij extern\_statsec in de tabel AccessGroups._

_Wil je nieuwe dimensieniveaus publiceren, dan moet het dimensieniveau_ _toegevoged worden aan de lijst DimLevels van de rij extern in de tabel AccessGroups_

## Implicaties

- implicatJe kan heel ver gaan in wie je naar welke Thema&#39;s doorstuurt en wat laat zien onder welke voorwaarden.
- Je kan zonder intensief gebruik van toegangsgroepen toch data intern houden door &quot;gasten&quot; toe te wijzen aan een beperkte themaboom, en &quot;internen&quot; aan een andere themaboom.
- Je kan de twee combineren, en de rechten op de &quot;externe&quot; themaboom uitbreiden voor speciale bezoeker. Voorbeeld: &quot;gast&quot; ziet de data voor alle jaren, behalve het meest recente; &quot;internen&quot; zien óók het laatste jaar.
- Je kan een &quot;externe&quot; perfect toegang geven tot je &quot;testomgeving&quot;, zonder dat je risico loopt dat die &quot;te veel ziet&quot;. Maar de testomgeving is niet stabiel!
- Je kan een &quot;externe&quot; perfect data laten zien die hij niet ziet in de Themaboom, door een link te delen van een presentatie. Op voorwaarde dat de data zelf niet afgeschermd is.
