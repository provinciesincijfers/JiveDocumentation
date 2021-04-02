# Algemeen informatie over de toegang

Om keuzes met betrekking tot toegang te maken, moet je dit begrijpen:

- Het verschil tussen testOMGEVING, productieOMGEVING, testMAP en productieMAP
- Waarom je nooit &quot;publiceren van data&quot; mag zeggen

## De OMGEVING: Testomgeving &amp; productieomgeving - Zeg niet publiceren van data, maar &quot;Live zetten van Data&quot;

Op het moment dat je data in Swing Studio toevoegt, zijn deze onmiddellijk in Swing beschikbaar via Versie>testen (&quot;**de testomgeving**&quot;, [https://provincies.incijfers.be/admin/jive](https://provincies.incijfers.be/admin/jive)). Maar enkel indien je rechten op deze data hebt.
 Je kan ze enkel _gemakkelijk_ raadplegen indien je ook het Thema kunt zien waar ze in staan.
 Eens je de Databank  **live zet**  (functie Publish), komt de data terecht in **de echte website, &quot;de productieomgeving&quot;.**

:bulb: Als je aan het beheren bent, en wil testen hoe het er voor een gewone eindgebruiker gaat uitzien, dan moet je **in de admin/jive omgeving ook nog eens uitloggen**. Immers blijf je anders ingelogt met je Beheerders-account, en die heeft normaal gezien steeds recht om alles te zien. Dit wordt wel eens vergeten, ook door de meest ervaren beheerders. Een andere mogelijkheid is om [**een incognito venster**](https://computertotaal.nl/artikelen/apps-software/zo-gebruik-je-de-privemodus-van-je-browser-68972/) te openen in je browser.

## De toegankelijkheid: Zeg niet publiceren van data, maar &quot;Extern zetten van Data&quot;

Op het moment dat je data wil delen met de hele wereld, kunnen we ze &quot;extern zetten&quot;. Dit omvat:

- je maakt **de Onderwerpen** zichtbaar door ze in een map onder **EXTERN** te zetten.
- je maakt de **DimensionLevels van kubussen** zichtbaar door ze toe te voegen aan de **Accesgroup &quot;extern&quot;.**
- je maakt de **data op niveau statsec zichbaar** door ze toe te voegen aan de **Accesgroup &quot;extern\_statsec&quot;.**
- je zet de **Databank live** , zodat ze zichtbaar is in de productieomgeving.

Meer informatie over Accessgroups/Toegangsgroepen vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/05.%20Themaboom%20-%20Toegang%20beheren/Toegangsgroepen.md).
