# Theoretische basis

Om een bepaalde categorie in de formule te krijgen moet je de kubus benoemen, de dimensie en dimensiecode(s) (dit zijn de categorieën). Concreet doe je dit zo:
 
`Cell(naam kubus , naam_dimensieniveau_itemcode, naam_dimensieniveau_itemcode)`
 
Een paar **voorbeelden:**

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

❕ **In de afgeleide onderwerpen zal je '-' zien staan in plaats van '0'**. Vermeld dit duidelijk in de **metadatafiche**. We prefereren deze manier boven het apart aanmaken van de platte onderwerpen, omdat dit anders een te grote last meebrengt voor het databeheer.
