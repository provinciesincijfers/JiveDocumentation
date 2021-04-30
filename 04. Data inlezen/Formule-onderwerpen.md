# Formule-onderwerpen

**Verhoudingen (inclusief percentages) maken we zoveel mogelijk aan als Formule-onderwerp.**

**We maken steeds percentages aan als dit zinvol is.**

De **noemer moet steeds het aggregatieonderwerp** zijn. Als je noemer dus de som van twee cijfers is, dan moet je eerst een onderwerp maken met die som. Elke noemer heeft ook een zinvolle naam nodig.

## Naar andere perioden refereren

**Standaard gebeurt de berekening op basis van data van dezelfde perioden**. Dus x + y betekent eigenlijk x\_periode1 + y\_periode1. Je kan hier van afwijken voor bijvoorbeeld een gemiddelde bevolking over twee jaar, of een cumulatief onderwerp.

- **Voorbeeld gemiddelde bevolking**: (v1101\_18\_24 +data\_from\_period(v1101\_18\_24,&quot;-1&quot;))/2

- **Voorbeeld cumulatief cijfer voor afgelopen vijf jaar**: v2207\_nbw\_n\_app+data\_from\_period(v2207\_nbw\_n\_app,&quot;-1&quot;)+data\_from\_period(v2207\_nbw\_n\_app,&quot;-2&quot;)+data\_from\_period(v2207\_nbw\_n\_app,&quot;-3&quot;)+data\_from\_period(v2207\_nbw\_n\_app,&quot;-4&quot;)

**Geavanceerd:**

- Stel dat je de cijfers gewoon **een jaar wil opschuiven** in een nieuw plat onderwerp:

data\_from\_period(v1101\_t,&quot;+1&quot;) + v1101\_t - v1101\_t

*Enkel en alleen "data\_from\_period(v1101\_t,&quot;+1&quot;)" werkt niet, omdat je formule-onderwerp dan geen referentiekader heeft. We tellen er v1101\_t bij op om de perioden van dat onderwerp te krijgen. Vervolgens trekken we het er weer af, omdat we dat aantal helemaal niet willen gebruiken!*

- Je kunt ook &quot;**toekomstige jaren**&quot; bevragen.

:grey\_exclamation: Let op: **je kunt best een begin- of eindjaar instellen**: Bij een gemiddelde bevolking op basis van een onderwerp dat in 1990 begint, ga je immers in 1990 enkel missings krijgen in je afgeleid onderwerp.
