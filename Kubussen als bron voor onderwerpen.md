# Theoretische basis

Om een bepaalde categorie in de formule te krijgen moet je de kubus benoemen, de dimensie en dimensiecode(s) (dit zijn de categorieën). Concreet doe je dit zo:
 
`Cell(naam kubus , naam_dimensieniveau_itemcode, naam_dimensieniveau_itemcode)`
 
Een paar voorbeelden:

Uit de kubus “Inwoners naar nationaliteit, leeftijd (10 klassen) en geslacht” willen we de 0 tem 9-jarigen en de 10 tem 19-jarigen optellen.
- De naam van de kubus is natcube10
- De naam van de dimensie is leeft10
- De itemcodes zijn 1 (0 tem 9j) en 2 (10 tem 19j)
> De formule is dan: `cell(natcube10,leeft10_1) + cell(natcube10,leeft10_2)`

Uit dezelfde kubus willen we de Belgen van 0 tem 9 jaar optellen met de Belgen van 10 tem 19 jaar
- De naam van de kubus is natcube10
- De naam van de dimensie is voor leeftijd is leeft10, die voor nationaliteit is nat_geo_omschr2
- De itemcodes zijn 1 (0 tem 9j) en 2 (10 tem 19j) voor leeftijd en belgie voor de Belgen
> De formule is dan: `cell(natcube10,leeft10_1,nat_geo_omschr2_belgie) + cell(natcube10,leeft10_2,nat_geo_omschr2_belgie)`


# Of als het ook gemakkelijk mag zijn

* Klik op het icoontje naast "Gebruikersonderwerpen" (onderaan de themaboom; verschijnt enkel indien je Swing-versie zo is ingesteld)
* Klik op Nieuw
* Klik op Kubus onderwerp toevoegen
- Klik een kubus aan. Als je op klikt, krijg je gewoon het totaal
- Klik op "Kubus item toevoegen", kies een dimensie, vervolgens een dimensieniveau en een Dimensie-item.
- Klik op OK, en vervolgens nog eens op OK.

Je krijgt nu bij formule de code te zien om dat stukje data aan te spreken. Op deze manier kan je wel telkens maar één categorie toevoegen. Bovendien kan je zo niet kruisen (dus je kan jongens selecteren, en kinderen tot 10 jaar, maar niet  jongens tot 10 jaar). Om dat te doen, moet je de logica die hierboven staat volgen.

