## Algemeen

In [deze mail](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/13.%20Bijzonder%20databeheer//BetrouwbaarheidsintervallenABF_formule_betrouwbaarheidsintervallen_SwingStudio%20(1).msg) 
lees je meer achtergronduitleg van ABF, of [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/13.%20Bijzonder%20databeheer/VB_StadAntwerpen_Metadata_Amon_20180604.xlsx) voor een voorbeeld. 

❕ Het is sowieso **NIET mogelijk om surveydata met betrouwbaarheidsintervallen op te laden ZONDER dat je beschikt over de ongewogen noemers**. Dit omdat er in de formule een correctie verwerkt zit die ervoor zorgt dat de BI’s, zonder ongewogen noemers, gewoon op 0 worden gezet en dat heeft weinig meerwaarde. Zie [deze mail](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/13.%20Bijzonder%20databeheer/Betrouwbaarheidsintervallen/RE%20Betrouwbaarheidsintervallen%20berekenen%20ZONDER%20ongewogen%20noemer.msg).

## Formule die Swing hanteert om betrouwbaarheidsintervallen te berekenen

Onderstaande formules worden in Swing gehanteerd om de marge te berekenen.
Vervolgens wordt het betrouwbaarheidsinterval bepaald op basis van het gemiddelde +/- de marge.

Met standaarddeviatie (voor gemiddelden)
`marge = z * (s / Math.Sqrt(n)) * Math.Sqrt(1.0 - n / N)`


 Zonder standaarddeviatie (voor proporties)
´marge = z * Math.Sqrt(p * (100.0 - p) / n) * Math.Sqrt(1.0 - n / N)´


|Symbool|Betekenis|
--
|z|Betrouwbaarheidsinterval|
|n|Sample data|
|N|Totaal|
|s|Standaarddeviatie|
|p|data||

## Meer uitleg bij deze formule

Voor data van de Gemeente- en Stadsmonitor (GSM) hebben we de tweede formule nodig, want ABB werkt met proporties.

De 'z' in de formule voor het % BI. Bij GSM data gebruiken we een 5% BI (dus z=1,96)

'N' staat voor de gewogen noemer; 'n' voor de ongewogen noemer.

Dit komt ook overeen met hoe we het moeten invullen in de upload file: de n of ‘ongewogen noemer’ wordt ingevuld bij de ‘sample indicator’ en de N of de ‘gewogen noemer’ wordt ingevuld bij de ‘aggregation indicator’.


## Voorbeeld
In de upload file:
-gewogen teller: 4602.75
-gewogen noemer: 11626.85
-ongewogen noemer: 408

Proportie is dus 4602.75/11626.85= 39.6

Volgens de tweede formule moet de marge voor een 5% BI dan zijn: 1.96 * vierkantswortel [39.6 * (100-39.6)/408)]* vierkantswortel [1-(408/11626.85)] = 4.65



