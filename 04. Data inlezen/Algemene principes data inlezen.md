# Algemene principes data inlezen

## Bestandstype

Je kan de data aanbieden als **XLS, XLSX of CSV**. Vanuit gespecialiseerde data-software is CSV het stabielste. Excel-bestanden zijn handig als je de datapreparatie in Excel doet. Maar hou er rekening mee dat Excel-files eigenlijk heel rare beesten zijn. ASAP tools of copy-paste als platte tekst naar een nieuw tabblad kan wonderen doen.

Een **sjabloon voor courante upload-situaties** [vind je hier](https://github.com/provinciesincijfers/JiveDocumentation/raw/master/04.%20Data%20inlezen/000_voorbeeld_upload.xlsx).

## Bestandsstructuur

De **bestandsstructuur** voor platte onderwerpen is bijzonder eenvoudig:

| Geolevel | Geoitem | Period | onderwerpcode |
| --- | --- | --- | --- |
| statsec | 11001a00\_ | 2019 | 25 |
| statsec | 11001a01\_ | 2019 | 16 |
| statsec | 11001a020 | 2019 | 2 |

Voor meer informatie **over formule-onderwerpen** kan je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/04.%20Data%20inlezen/Formule-onderwerpen.md) terecht.

Je kan **meerdere jaren, meerdere gebiedsniveaus en meerdere onderwerpen in één bestand** aanbieden. Er zijn geen duidelijke harde bovengrenzen aan, maar bij grotere bestanden gaat het wel eens mis. Meer dan een miljoen rijen, meer dan 60 kolommen, etc.

## Benodigde data

In principe is **het énkel nodig op het &quot;laagste gebiedsniveau**&quot;. Swing telt die op naar hogere gebiedsniveaus. Wil je meer weten over (de organisatie van) gebiedsniveaus? Dat kan [hier](https://github.com/provinciesincijfers/gebiedsniveaus).

**Je hoeft niet alle gegevens hard in te lezen**. Stel, je hebt een onderwerp met &quot;geboorten&quot; en een met &quot;sterften&quot;. Je hoeft dan geen saldo meer in te lezen, dat kan eenvoudig met een [formule-onderwerp](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/04.%20Data%20inlezen/Formule-onderwerpen.md).

**Uitzonderingen:**

- **Niet aggregeerbare data** (vb percentage zonder noemer, mediaan-waarden, een onderwerp waar de waarden ontbreken voor enkele gebieden). Dit is sowieso jammer, want je kan dan ook niet vrij clusteren naar een eigen gebiedsselectie. Je gaat ook niet altijd aan de relevante data geraken voor al onze gebiedsniveaus in productie.
- **Heel complexe formule-constructies**. Als je een onderwerp voor nul-jarige jongens van Turkse herkomst zou maken, en die logica zou doortrekken tot je een eindtotaal hebt, dan gaat dit eindtotaal niet vlot werken.
- **Complexe kubussen** (vooral indien op statsec).

## Op welke gebiedsniveaus inladen

**Standaard lezen we in op niveau statsec** (statistische sectoren) **OF statsec2019** (statistische sectoren van voor de aanpassing 2019/2020) **OF gemeente2018** (de gemeenten van voor de fusie) **OF gemeente** (de huidige gemeenten zoals in voege sinds 2019). Voor niet-aggregeerbare data, beschikken we idealiter voor elk van de onderliggende gebieden over data:

![image](https://user-images.githubusercontent.com/77432663/112810470-59637700-907b-11eb-8679-de865c6e05b4.png)


Een steeds bijgewerkte tabel van de gebiedsniveaus, vertrekkende vanaf statsec, vind je [hier](https://github.com/provinciesincijfers/gebiedsniveaus/tree/master/verzamelbestanden).

***Gemeente2018 of gemeente?***

We lezen nieuwe data *bij voorkeur in op &quot;gemeente&quot;*. Oude data mag gerust op &quot;gemeente2018&quot; blijven staan. Niet-aggregeerbare data die enkel op gemeente2018 beschikbaar was, hebben we manueel overgezet naar &quot;gemeente&quot;. Hierdoor zijn er gaten. Als je een upload doet voor dit soort data, kijk dan eens of je bron dit al berekend heeft!

***Statsec2019 of statsec?***

Wellicht ga je nog lang data tegenkomen die op de **oude statsec zijn verzameld**. Deze **moeten dus in statsec2019 worden ingelezen**.

Gebruik je de OUDE statsec2019, dan gebruik je voor gebied onbekend van fusiegemeenten de OUDE niscode van de gemeente2018 + ZZZZ. Gebruik je de NIEUWE statsec, dan gebruik je voor gebied onbekende de NIEUWE niscode van de gemeente + ZZZZ

***❕ Opgelet***

Swing aggregeert niet meer correct wanneer je gegevens op subgemeentelijk niveau en op gemeente2018 inleest, en niet op het niveau van gemeente. Voorheen verwachtten we dat de correcte aggregatie doorloopt vanaf gemeente2018 naar gemeente, provincie etc. maar dat gebeurt niet meer correct. Heb je dus data die niet volledig correct is op statsec (waardoor statsec niet automatisch mag aggregeren naar de bovenliggende niveaus) zorg dat je dan zeker ook gemeente inleest, en niet enkel gemeente2018, naast de andere subgemeentelijke niveaus.
zie [issue 411](https://github.com/provinciesincijfers/PinC-taakopvolging/issues/411).

De **tabel met enkel gewijzigde statsec/niscodes 2018-2019**] staat [hier](https://github.com/provinciesincijfers/gebiedsniveaus/blob/master/wijzigende\_gebiedsindelingen.md).

Voor **meer informatie over (de organisatie van) gebiedsniveaus**, kan je [hier](https://github.com/provinciesincijfers/gebiedsniveaus) terecht.

## Voor welke gebieden inladen

We laden waarden in **voor alle gebieden van het gekozen gebiedsniveau, ook als je dataverwerking niet onmiddellijk een waarde oplevert**. Het ontbreken van gegevens kan immers meerdere dingen betekenen. We geven deze info zo exact mogelijk mee, zoals afgesproken in het bestand rond [missing values]( https://github.com/provinciesincijfers/JiveDocumentation/blob/master/01.%20Algemeen%20databeheer/Missing%20values.md).

## Voor welke perioden inladen

Je kan **voor één of meer perioden data** inladen. 

:grey\_exclamation: Bestaande data hoef je niet te overschrijven, tenzij je bron die herberekend kan hebben.
