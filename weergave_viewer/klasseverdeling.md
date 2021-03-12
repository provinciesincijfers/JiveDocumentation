# Klassenverdeling in Swing


Data klassen worden berekend op basis van de standaard deviatie en een vaste stapgrootte. Er wordt hierbij afgerond naar &#39;ronde getallen. (zie ABF-melding 77698)

Berekening:

1. minimum = mean - stddev

2. maximum = mean + stddev

3. stepsize = (maximum - minimum) / classcount

4. Afronding van stepsize naar rond getal

5. Berekening van minimum en maximum op basis van stapgrootte

_Klassen bepalen aan de hand van &#39;natural breaks algoritme&#39; is als wens opgenomen._

**Of nog (ABF-melding 47986)**

Hieronder een beschrijving van hoe de grenzen van de data klassen in Jive worden berekend:
 \* De data moet worden ingedeeld in N klassen met dezelfde stapgrootte. Hiervoor moeten er N-1 grenzen worden bepaald.
 \* Bereken de stapgrootte door het bereik van de data (maximum - minimum) te delen door het aantal grenzen. De stapgrootte wordt vervolgens afgerond naar een mooi rond getal: 0.25, 0.5, 1, 5, 10 etc. Hierbij wordt rekening gehouden met de stapgrootte zelf en de afronding die is ingesteld bij het onderliggende onderwerp.
 \* De laagste datagrens wordt bepaald door het minimum naar beneden af te ronden op basis van de stapgrootte. Hier wordt 1x de stapgrootte bij opgeteld.
 \* De overige datagrenzen zijn vervolgens eenvoudig af te leiden door telkens de stapgrootte bij het minimum op te tellen.


Opgelet: de schaalverdeling wordt aangepast door het toevoegen van de vergelijkingsgebieden. (zie ABF-melding 77723)
Voorbeeld: 
het verschil tussen [deze presentaties](https://provincies.incijfers.be/jive?workspace_guid=d15cbb5c-871c-4481-8e26-19c272968347) 