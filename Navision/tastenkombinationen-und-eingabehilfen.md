---
title:  Navision Programmieren
date:   2018-04-18
author: pki
style: ./css/style.css
---

<style>
kbd {
  background: lightgray;
  padding: 3px;
  border: 1px solid gray;
  box-shadow: 2px 1px darkgray;
  border-radius: 3px;
}
</style>


# Funktionstasten und Eingabehilfen

## Tastenkombinationen

### F-Tasten

| Tasten         | Funktion                                                                   |
|----------------|----------------------------------------------------------------------------|
| <kbd>F1</kbd>  | Hilfetext für aktuelles Feld                                               |
| <kbd>F2</kbd>  | 1x = Feldinhalt am Anfang bearbeiten<br>2x = Feldinhalt am Ende bearbeiten |
| <kbd>F3</kbd>  | Einfügen eines neuen Datensatzes                                           |
| <kbd>F4</kbd>  | Löschen eines Datensatzes                                                  |
| <kbd>F5</kbd>  | Liste anzeigen                                                             |
| <kbd>F6</kbd>  | Auswahlfenster anzeigen                                                    |
| <kbd>F7</kbd>  | Feldfilter setzen                                                          |
| <kbd>F8</kbd>  | Feldinhalt von oben kopieren (in Tabellen und Journalen)                   |
| <kbd>F9</kbd>  | Statistikfenster anzeigen                                                  |
| <kbd>F10</kbd> | Menüleiste anwählen                                                        |
| <kbd>F11</kbd> | Buchen                                                                     |
| <kbd>F12</kbd> | Hauptmenü                                                                  |

### F+Ctrl Tastenkombinationen

| Tasten                          | Funktion                                             |
|---------------------------------|------------------------------------------------------|
| <kbd>Ctrl</kbd> + <kbd>F1</kbd> | Datensatz-Markierung ein/aus                         |
| <kbd>Ctrl</kbd> + <kbd>F2</kbd> | Designer-Modus starten                               |
| <kbd>Ctrl</kbd> + <kbd>F4</kbd> | Fenster schliessen                                   |
| <kbd>Ctrl</kbd> + <kbd>F5</kbd> | Buchungsübersicht                                    |
| <kbd>Ctrl</kbd> + <kbd>F6</kbd> | Nächstes Fenster                                     |
| <kbd>Ctrl</kbd> + <kbd>F7</kbd> | Tabellenfilter setzen                                |
| <kbd>Ctrl</kbd> + <kbd>F8</kbd> | Zoom = Anzeigen aller verfügbaren Felder             |
| <kbd>Ctrl</kbd> + <kbd>F9</kbd> | Neu berechnen und abstimmen (in Erfassungsjournalen) |

### F+Shift Tastenkombinationen

| Tasten                            | Funktion                                                 |
|-----------------------------------|----------------------------------------------------------|
| <kbd>Shift</kbd> + <kbd>F1</kbd>  | Kontexthilfe                                             |
| <kbd>Shift</kbd> + <kbd>F5</kbd>  | Kartenfenster aufrufen von Liste aus                     |
| <kbd>Shift</kbd> + <kbd>F6</kbd>  | DrillDown (zeigt Datensätze, die zum Resultat beitragen) |
| <kbd>Shift</kbd> + <kbd>F7</kbd>  | FlowFilter setzen                                        |
| <kbd>Shift</kbd> + <kbd>F8</kbd>  | Sortieren                                                |
| <kbd>Shift</kbd> + <kbd>F9</kbd>  | Buchungen ausgleichen                                    |
| <kbd>Shift</kbd> + <kbd>F10</kbd> | Kontextmenü aufrufen                                     |
| <kbd>Shift</kbd> + <kbd>F11</kbd> | Buchen und Drucken                                       |
| <kbd>Shift</kbd> + <kbd>F12</kbd> | Object Designer                                          |

### Spezielle Tastenkombinationen

| Tasten                                | Funktion                                              |
|---------------------------------------|-------------------------------------------------------|
| <kbd>Ctrl</kbd> + <kbd>PageDown</kbd> | Auf Karte vorwärts von Register zu Register springen  |
| <kbd>Ctrl</kbd> + <kbd>PageUp</kbd>   | Auf Karte rückwärts von Register zu Register springen |
| <kbd>Ctrl</kbd> + <kbd>O</kbd>        | Mandanten öffnen / wechseln                           |
| <kbd>Alt</kbd> + <kbd>F1</kbd>        | Object Designer                                       |

## Datumseingaben

Datumseingaben sind zwei, vier- oder sechsstellig möglich. Verwendbare Trennzeichen sind:

* Punkt
* Leerschlag
* Bindestrich
* Slash
* Doppelpunkt
* Komma

| Eingabe im Datumsfeld | Beschreibung                                                  |
|-----------------------|---------------------------------------------------------------|
| 26.05.2018            | Datumseingabe                                                 |
| h                     | Heute (Systemzeit)                                            |
| A                     | Arbeitsdatum (Festgelegt unter _Extras > Arbeitsdatum_)       |
| Mo21                  | Wochentag gefolgt von Kalenderwoche und optional Jahresangebe |
| p1..p6                | In _Buchhaltungsperioden_ definerte Perioden                  |
| J                     | Aktuelles Geschäftsjahr (_01.01.2018..31.12.18_)              |
| j-1                   | Vorjahr                                                       |

## Formeln für Filter

| Beispiel         | Angezeigte Datensätze                                  |
|------------------|--------------------------------------------------------|
| 10000            | Datensatz mit Nummer 10000                             |
| 10000..40000     | Datensätze 10000 bis 40000                             |
| ..31.12.18       | Datensätze bis und mit 31.12.2018                      |
| 01.01.18         | Datensätze ab 01.01.18                                 |
| 10000&#124;40000 | 10000 und/oder 40000                                   |
| <>0              | ungleich 0                                             |
| >100             | Grösser als 100                                        |
| >=100            | Grösser oder gleich 100                                |
| <100             | Kleiner als 100                                        |
| *AG*             | Enthält _AG_                                           |
| AG*              | Beginnt mit _AG_                                       |
| @huber           | Beginnt mit _huber_ oder _Huber_ (@: case insensitive) |

### Kombinierte Formeln

| Beispiel             | Angezeigte Datensätze    |
|----------------------|--------------------------|
| 5800&#124;6000..6999 | 5800 und 6000 bis 6999   |
| ..100&#124;400..     | Alles ausser 101 bis 399 |
| >50&<100             | 51 bis 99                |
