# Grundlegende Struktur der Lektion
```
#import "../lib/??.typ"
```
Importiere die nötigen module aus lib.


```
== Lektionsname
```
Name der Lektion. Lektionen sind Level 2 Heading und kommen direkt unter den Kaptiteln. Die Nummerierung wird automatisch Generiert nach der Reihenfolge wie die Lektionen in `main.typ` includiert werden.


## Aufteilung
Wie beim alten Skript haben wir eine Uterteilung in *Theorie*, *Spass*, *Quiz*, und *Praxis*. Diese Aufteilung ist eventuell sinnvoll, aber Hauptgrund ist das ich bis jetzt zu faul war das zu ändern


### Implementierung in Typst
Für jeden Punkt gibt es eine Funktion die wie folgt benutzt werden kann
```typst

#import "../lib/helper.typ": Quiz
#Quiz()[
Die Antwort auf alles ist:
- 42
- 69
- 420
- 67
]

```

Typst funktionen können mit einem nachgestellten `[ ]` Block aufgrufen werden. Dieser sogenannter Content block beinhaltet dann als Argument Content der Dargestellt werden soll. Zusätzliche Argumente können wie gewohnt über die Runden klammern übergeben werden.

Was diese Funktionen machen kann sich noch ändern. Aktuell bereiten sie lediglich die Überschriften.
