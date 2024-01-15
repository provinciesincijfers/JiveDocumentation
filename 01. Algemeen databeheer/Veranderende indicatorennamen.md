# Hoe omgaan met indicatoren die van naam veranderen

Wanneer een indicator van naamt verandert, kan het zijn dat titels of beschrijvingen van de indicator niet meer kloppen in rapporten of in het Dashboard.
Doe daarom de volgende checks:

## Dashboard (Mosaic)

* Ga naar Studio >Viewer > CategoryTree en zoek de map die gebruikt wordt voor Dashboard. Edit deze map en wijzig de CategoryCode en Name van die map. Op die manier creëer je een backup van je huidige indeling.
* Ga naar Studio > Mosaic > Start en klik op de Sync knop. Zet zeker de functie "Add used indicators" aan.
![afbeelding](https://user-images.githubusercontent.com/10122639/223678624-5e55844d-34d6-4fb8-88fa-74079a1a7f09.png)
* Ga naar Studio > Viewer > Category tree en klik op de nieuwe map voor Dashboard die de stap hierboven heeft gecreëerd. OPGELET: zet deze nieuwe map op de juiste plaats, en maak hem indien gewenst onzichtbaar.
* Klik op “Export” > select all indicators in this category. Na een paar minuten krijg je een excel. Je krijgt een volledig overzicht, maar de onderwerpnamen ontbreken. Zoek vervolgens op je indicator code.
* Laat de verantwoordelijke van het dashboard weten dat de naam van de indicator veranderd is.

Opgelet: je hebt mogelijk meerdere Mosaics actief staan. Je moet deze operatie voor elk Mosaic afzonderlijk doen. Omgekeerd kunnen er binnen je specifiek Mosaic tegels of figuren verborgen staan. Deze gaan uiteraard wel in de resultaten opduiken.


## Rapporten
Ga naar Studio>Data>"Consistency checks" en maak het rapport “Indicators used in reports”. Filter in de “VarCode” op de indicator code.
Opgelet: je krijgt hier een overzicht van alle indicatoren die je rapport nodig heeft, zelfs als deze enkel als aggregatieonderwerp, drempelonderwerp of in een formule gebruikt worden.

Laat de verantwoordelijke van het rapport/de rapporten weten dat de naam van de indicator veranderd is.
