# Klassenverdeling in Swing

De standaardklassenverdeling is gebaseerd op standaardafwijkingen en werkt met een vaste stapgrootte.
Eerst wordt het gemiddelde en de standaardafwijking berekend. Vervolgens wordt de bovengrens van de onderste klasse bepaald als "het gemiddelde min één standaardafwijking, afgerond en getoond in de eenheiden van de oorspronkelijke data". Vervolgens wordt een vaste klassenafstand berekend. Die probeert "het centrale deel" van de data (alles van één standaardafwijking onder tot één standaardafwijking boven het gemiddelde) ongeveer in drie te verdelen. Het is dus ongeveer twee standaardafwijkingen gedeeld door drie.

![afbeelding](https://user-images.githubusercontent.com/10122639/119464721-50bdb300-bd43-11eb-8142-4fb4fc2cc4f4.png)

Bij de * wordt afgerond om esthetische redenen.

Klasse 1: [laagste waarde] TOT [ondergrens=gemiddelde van de data min één standaardafwijking]  
Klasse 2: [ondergrens] TOT [ondergrens + 2/3 van een z-score]  
Klasse 3: [ondergrens + 2/3 van een z-score] TOT [ondergrens + 4/3 van een z-score]  
Klasse 4: [ondergrens + 4/3 van een z-score] TOT [ondergrens + 6/3 van een z-score]  
Klasse 5: [ondergrens + 6/3 van een z-score] TOT [hoogste waarde]  

**Opmerkingen**: 
- deze logica wordt ook aangehouden als je meer dan vijf klassen hebt. De laagste en de hoogste klassen blijven ongewijzigd; enkel de tussenliggende klassen worden verfijnd. Dit wordt door ABF zelf als ongewenst beschouwd (mail 19-4-2021) en zullen ze herbekijken
- de berekening wordt gedaan inclusief vergelijkingsgebieden en "gebieden onbekend"  (ABF-melding 77723). Zie bijvoorbeeld het verschil tussen [deze presentaties](https://provincies.incijfers.be/jive?workspace_guid=d15cbb5c-871c-4481-8e26-19c272968347) . Opmerking: dit is gewijzigd; deze twee kaarten geven nu wel hetzelfde resultaat! Het verschil tussen deze twee presentaties blijft ongewenst: https://provincies.incijfers.be/jive?workspace_guid=59108af5-565a-4439-85fc-9e3685dcb6d5
- de logica is soms anders uitgelegd (zie ABF-melding 77698 en 47986)
