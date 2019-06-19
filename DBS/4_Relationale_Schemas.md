# Relationale Schemas

## Relationen

Unter einer _Tabelle_ oder _Relation_ verstehen wir eine _Menge von Tupeln_, die Tabellenförmig dargestellt werden und folgende Anforderungen erfüllen:

* Jede Tabelle hat einen eindeutigen **Tabellennamen**
* Jedes Merkmal in der Tabelle hat einen eindeutigen **Merkmalsname**, der eine bestimmte Spalte bezeichnet
* **Keine Spaltenordnung**: Reihenfolge und Anzahl der Spalten ist beliebig
* **Keine Zeilenordnung**: Reihenfolge und Anzahl der Tupeln ist beliebig
* Ein Merkmal oder eine Kombination davon identifizert die Tabelle eindeutig und wird als **Identifikationsschlüssel** deklariert.

Dieser Identivikationsschlüssel hat folgende Eigenschaften:

* Eindeutigkeit
* Minimalität (kein Merkmal aus der Kombination kann gestrichen werden, ohne dass die Eindeutigkeit verloren geht)

## Relationenmodell

Das Relationenmodell wurde  Anfangs der siebziger Jahre entwickelt. Daraus entstanden die ersten relationalen Datenbanksysteme und SQL.

Mathematisch ist eine **Relation** _R_ nichts anderes als eine Teilmenge aus dem kartesischen Produkt von Wertebereichen

>R &sube; D<sub>1</sub> &times; D<sub>2</sub> &times; ...  D<sub>i</sub>

mit D<sub>i</sub> als Wertebereich des i-ten Attributs bzw. Merkmals.

Ein **Tupel** ist demnach eine Menge konkreter Datenwerte

>r = (d<sub>1</sub>, d<sub>2</sub>, ..., d<sub>i</sub>)

Ein Tupel darf in einer Relation nur einmal vorkommen. Daraus folgt:

>R = {r<sub>1</sub>, r<sub>2</sub>, ..., r<sub>i</sub> }

## Anomalien

Redundazen in Tabellen können zu **Anomalien** führen. Ein Merkmal ist _redundant_, wenn einzelne Werte dieses Merkmals ohne Informationsverlust weggelassen werden können.

## Normalisierung

Ziel: Analyse von Abhängigkeiten zur Vermeidung von Redundanz, denn diese führen zu Anomalien.

Arten von Mutationsanomalien:

* **Einfügeanomalie**: Einfügen von Daten ist nicht möglich
* **Löschanomalie**: ungewolltes Löschen von Daten
* **Änderungsanomalie**: Mehrfache Änderung notwendig bei Änderung eines einzelnen Objekts

Normalisierte Tabellen haben keine Anomalien.

## Normalformen

| NF | Bezeichnung | Beschreibung |
|---:|---          |---           |
|  |Nicht normalisiert | Tabelle in beliebiger(unnormalisierter) Form |
| 1NF | 1. Normalform | Alle Merkmale sind atomar (keine Wiederholung zugelassen) |
| 2NF | 2. Normalform | Nichtschlüsselmerkmale sind vom Schlüssel abhäng |
| 3NF | 3. Normalform | Es bestehen keine transitiven Abhängigkeiten |
| BCNF | Boyce-Codd-Normalform | Nur Abhängigkeiten vom Schlüssel zugelassen |
| 4NF | 4. Normalform | Keine Mehrwertabhängigkeiten |
| 5NF | 5. Normalform | Nur triviale Verbundabhängigkeit |

### Erste Normalform

Atomare Daten, **keine** Arrays, Mengen, Aufzählungen, Listen etc. als Merkmalswerte

| M# | Name | Ort | P# |
|---|---|---|---|
