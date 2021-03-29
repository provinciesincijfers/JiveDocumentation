# Data > Importeren - Keuzes bij de upload

## Stap 1

![image](https://user-images.githubusercontent.com/77432663/112817072-56b85000-9082-11eb-9827-1aa2db4d2096.png)

**Via de functie Data > Importeren kan je zowat alle informatie die in Swing kan zitten importeren** (dus ook een Themaboom-structuur ofzo). Swing probeert zelf je bestand te herkennen, daarom moet je **&quot;Gegevenstype&quot; hierboven goed controleren**. Als dit niet juist is of leeg blijft, dan is de kans groot (maar niet absoluut) dat er iets mis is in je bestand.

**In dit voorbeeld gaat het om &quot;gewone gegevens**&quot;, data voor platte onderwerpen. Dit is &quot;Data – Onderwerp per kolom&quot;. 

❕ ***Als je bestand meerdere tabbladen heeft, worden deze standaard ALLEMAAL klaargezet voor upload. Ook je tabblad met testdata en instructies voor jezelf dus!***

Bij het opladen van data van dit type heb je vijf vinkjes die je aan en uit kunt zetten:

- **Perioden automatisch aanpassen**: als het onderwerp maar tot 2018 beschikbaar was, maar je bent data voor 2019 aan het inladen, dan wordt indien aangevinkt dit rechtgezet. Dat zie je dan in Data > Onderwerpen in de kolom Eindperiode. **Standaard aanzetten** dus.
- **Automatisch totaliseren**: is bijna nooit van toepassing. **Standaard uitzetten**.
- **Records met alleen NVT verwijderen**: we willen soms juist die data hard inlezen. **Standaard uitzetten**.
- **Records met onbekende kenmerken overslaan**: zet dit vinkje aan als je weet dat er foute gebieden in je bestand zitten, maar je toch wil inladen. Handig als je een set hebt met ook de Waalse gemeenten, en die er niet zelf wil uitgooien. Nadeel: als er nog andere fouten in je bestand zitten, krijg je hier geen foutmelding voor! **Standaard uit laten staan** dus.
- **Eerst alle data verwijderen**: dit wist alle data van de onderwerpen waar je aankomt. Dit is **slechts heel zelden nodig**. Voorbeeld: er is een kleine wijziging in methodologie, maar de data is niet meer beschikbaar voor de oudste drie jaar van de reeks. Als je dan de eerste optie én deze optie aanvinkt, dan verdwijnt elk spoor van die eerste drie jaar en heb je zeker alle data ververst.


## Stap 2

Je hebt **minstens de kolommen met een periode, een gebied en een gebiedsniveau nodig**. Deze mogen andere namen hebben dan hieronder gebruikt, maar dat vergroot de kans dat je dit nog moet aanduiden als dusdanig. **Zorg dat enkel je onderwerpen ook als Onderwerp zijn aangeduid.**

![image](https://user-images.githubusercontent.com/77432663/112817134-659f0280-9082-11eb-8291-5e07009df482.png)


## Stap 3

Na upload krijg je **mogelijk enkele meldingen**. Als je nieuwe onderwerpen toevoegt, iets als onderstaande:

![image](https://user-images.githubusercontent.com/77432663/112817163-6df73d80-9082-11eb-8cb7-b595d201eaf6.png)


- **Wou je eigenlijk geen onderwerpen toevoegen en kreeg je toch dit scherm?** Ga dan naar het einde van de onderwerpentabel en check wat je gedaan hebt!
- ❕ **De Toegangsgroepen staan standaard aangevinkt met system, Intern en &quot;Extern (hoger niveau dan statsec)&quot;**. Data op statsec-niveau ingelezen moet je dus nog toevoegen aan de map &quot;Extern (mag op sectoreniveau getoond)&quot;. Data voor alle Belgische gemeenten mogen we niet zomaar online zetten. Door het laatste vinkje aan te zetten, kunnen ze wel in een rapport extern gebruikt worden. **Doe dit niet zonder af te stemmen met Joost.**
- **De data staat dus steeds op een of andere manier Extern**. Ze is (voor experts) steeds terug te vinden, zélfs als ze niet in de map EXTERN staat. Wil je héél gevoelige data in Swing steken, dan moeten we de architectuur herzien.
  - Voor meer info, zie het onderdeel [Toegang beheren](https://github.com/provinciesincijfers/JiveDocumentation/tree/master/05.%20Themaboom%20-%20Toegang%20beheren).


:bulb: **Je kan je import afbreken. Let wel op dat er al data gedeeltelijk ingelezen kan zijn.**
