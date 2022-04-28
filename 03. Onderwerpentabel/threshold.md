# Gebruik van de functie threshold

## Over drempelwaarden

- De drempelwaarde is **de laagste waarde die door Swing getoond mag worden**. De waarde “0” (nul) vormt hier een uitzondering op, deze wordt wél getoond (dit is een algemene instelling).
- De drempelwaarde is **geldig op alle gebiedsniveaus**. We moeten dus de strengste drempel hanteren. 
- **Meest gebruikt is drempelwaarde 5**. 
- We **volgen de drempelwaarde van de bron**, ook als die er zelf géén instelt. 
- **Bij formuleonderwerpen moet je kiezen**. Voor een som kan je gewoon de drempel op het resultaat zetten. Bij breuken hanteer je een Drempelonderwerp, waarbij we de drempel van de teller instellen.
- Het is ook mogelijk om via de **functie threshold(onderwerp_x)** de drempel van dit onderwerp te laten doorwerken. **We gebruiken dit NIET** omdat het ongewenste collateral damage heeft, zie hieronder.

❕ ***Met Drempelonderwerpen kan je ook creatieve uitzonderingen bedenken.***


## Ter info: drempelwaarden strikter toepassen met de functie *Threshold*

Het volgende deel is ter info. Er werd beslist om de functie threshold **niet** te gebruiken.

Binnen Swing was het tot nu toe onmogelijk om (automatisch) een drempelwaarde te zetten op zowel teller als noemer van een percentage. Dit kan nu wel.  

### Probleemstelling

Stel: appelgraad = appelbomen / fruitbomen  
We zetten dan op appelbomen de drempel 5, om de privacy van die appelbomen te beschermen. Als je geen drempel instelt op appelgraad, ga je ook een resultaat zien als je maar 4 appelbomen hebt. Dat is onaanvaardbaar, aangezien je uit dit percentage (en gegeven het aantal fruitbomen) kan herrekenen over hoeveel appelbomen het gaat. Dit kan ook niet swing-technisch opgelost worden (“respecteer ten allen tijde de privacy van appelbomen”), want dan zou je de “grootfruitgraad” (=(appelbomen+perenbomen)/fruitbomen) ook niet kunnen laten zien, terwijl de som van appelbomen en fruitbomen misschien wel ruim boven de drempel ligt.  
  
Dus is de huidige oplossing: appelgraad heeft als drempelonderwerp appelbomen en als drempelwaarde 5. Dus Swing gaat kijken naar het onderwerp appelbomen en als er daar minstens 5 zijn, wordt het resultaat getoond.  
  
Er is echter een tweede probleem: als je inzoomt op de data (bijvoorbeeld op statsec niveau, of door naar gedetailleerde cijfers te kijken), dan wordt misschien ook het aantal fruitbomen heel klein. Stel dat in gemeenten met veel fruitbomen het aandeel appelbomen varieert tussen 40 en 60%, dan is het een beetje raar om gemeenten met maar 10 fruitbomen zeer fel in te kleuren, gewoon omdat die toevallig alle 10 appelboom zijn. In de meeste omstandigheden ga je in visualisaties dat soort cijfers willen verwijderen. Maar dat is niet eenvoudig in Swing, en bovendien zou het kunnen dat eindgebruikers gewoon naar het kaartje kijken en niet de reflex hebben om even na te denken over hoe groot de noemer is. Je krijgt dan foute interpretaties als “oh, dus daar is de appelstreek”, terwijl het misschien maar over een minimaal aandeel van de totale appelbomenvoorraad gaat.


### Oplossing
Eindelijk, er is een oplossing!
In Swing is het sinds kort mogelijk om de functie “threshold()” te gebruiken. Stel dat we in Swing hebben ingesteld dat de drempelwaarde van appelbomen = 5. Dan kunnen we nu appelgraad=threshold(appelbomen)/fruitbomen berekenen, en wordt steeds de privacy van appelbomen gerespecteerd op basis van het onderwerp appelbomen zelf. Dat laat ons toe om op het onderwerp appelgraad nog een ándere drempelwaarde in te stellen, bijvoorbeeld een op basis van het aantal fruitbomen om geen percentages op kleine aantallen te berekenen.

Dit stelt ons voor de keuze:
-	Willen we dit doen?
-	Hoe groot moet de noemer zijn?

Nadelen van dit doen:
-	Meer metadata nodig om te begrijpen waarom bepaalde waarden niet getoond worden
-	Je beslist voor de eindgebruiker wat relevant is om te zien of niet
-	Je kan dit voor jezelf niet "snel even overrulen"
-	Swing Connector kan hier nog niet echt mee om, en de eenvoudigste oplossing is dat wij de formules dubbel beheren
- Er wordt meer gecensureerd dan we eigenlijk willen: als je binnen Swing a+b+c+d optelt, dan zal de som van a+b+c+d steeds gecensureerd worde, ook als er ergens maar eentje gecensureerd moet worden. Dat betekent dus dat je voor een ad hoc gebied op maat (op basis van enkele kleinere gebieden) je heel vaka geen resultaat gaat krijgen. ABF is niet op de vraag ingegaan om dit te herbekijken.

Voordelen:
-	Je beschermt mensen tegen foute interpretatie
-	Het is eenvoudiger om een kaartje of presentatie te maken waar de onzin-cijfers al uit weggefilterd zijn
-	Wie hier last van heeft, kan zelf nog altijd rekenen in Excel of een gebruikersonderwerp maken

Achter deze link enkele voorbeelden (eerst inloggen!):
https://provincies.incijfers.be//databank?workspace_guid=493b7a43-636b-40b2-a799-d37c2a22afce
Let hierbij op het verschil tussen wanneer je noemer totale bevolking hebt vs noemer NWWZ.

1)	Tabel gesorteerd op ongecensureerd percentage (dit toont hoe de meeste extreme percentages weggefilterd worden door noemer-drempel)
2)	Relatief kleine impact bij kaart op sectorniveau; vooral extreme waarden verdwijnen
3)	Tabel; veel meer censuur indien drempel op basis van aantal NWWZ
4)	Kaart die hetzelfde effect toont. Vooral de meer extreme waarden worden gefilterd
5)	Maar op sectorniveau kan je plots zelf in een grotere stad niets meer zeggen
6)	Bekijk samen met 
7)	vergelijk de scatterplots om te zien hoe de gigantische spreiding in % bij de kleine aantallen wordt verwijderd
8) Maar op sectorniveau zal bijna alles gecensureerd worden.
