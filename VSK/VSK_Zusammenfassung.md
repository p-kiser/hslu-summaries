# Zusammenfassung VSK

Modul HSLU.I VSK (Verteilte Systeme und Komponenten)

Gestohlen vom [Pädi](https://github.com/patrickbucher/inf-stud-hslu/blob/master/vsk/zusammenfassung/vsk.pdf) und aus den Folien VSK.

# Komponenten

Eine Software-Komponente ist ein Teil einer Software, der gemäss den Regeln eines _Komponentenmodell_ zusammenwirken kann und ohne Änderungen mit anderen Komponenten verknüpft und ausgführt werden kann.

Eine Komponente ist also ein Element einer komponentenbasieren Anwendung
mit definierten Schnittstellen zur Verbindung mit anderen Komponenten.

Darstellung im UML:

![UML Komponentendiagramm](./img/com-uml.png)

Komponentenmodelle definieren die strukturellen Anforderungen im Bezug auf die Verknüpfung von Komponenten und implementieren Mechanismen wie Verteilung, Persistenz, Nachrichtenaustausch und Versionierung.

Komponentenmodelle legen die Eigenschaften und die Form einer Komponente fest sowie die Kommunikation zwischen Komoponenten  über Schnittstellen. Beispeile für Komponentenmodelle:

- Microsoft .NET
- DCOM
- Enterprise Java Beans

## Vorteile von Komponenten

* Reduktion der Komplexität durch Aufteilen
* Wiederverwendbarkeit
* Konsistenz durch Verwendung von Standardkomponenten
* Verbesserte Wartbarkeit durch Kapselung
* Parallele und verteilte Entwicklung möglich

Aufgrund steigender Komplexität werden Eigenentwicklungen weniger wirtschaftlich und unsicherer. Software wird vermehrt aus bestehenden Komponenten konstruiert.

Weil die Kommunikation nur über spezifizierte Schnittstellen erfolgt, muss man nur diese kennen, um eine Komponente einsetzen zu können. Komponenten mit gleichen Schnittstellen sich deshalb austauschbar.

## Schnittstellen

Schnittstellen sind Verbindungsstellen, die sicherstellen das zwei Komponenten kombiniert werden können, indem sie Methodensignaturen vorgibt. Sie sollten aus wenigen Methoden mit wenigen Überschneidungen und wenigen Parametern bestehen. Ausserdem sollten sie gut dokumentiert und einfach verständlich sein.

## Modularisierung

Ein Modul ist ein in sich geschlossener Teil des Programmcodes.

**Kopplung** (Kommunikation zwischen Modulen) sollte möglichst klein gehalten werden.

**Kohäsion** (Kommunikation innerhalb eines Moduls).

Arten von Modulen:

* Bibliotheken: Sammlungen thematisch zusammengehörender Funktionen (Mathematik-Modul, Datums-Modul)
* Abstrakte Datentypen: Implementierung eines neuen Datentyps mit dazugehörigen Operationen (verkettete Liste, Hashtabelle)
* Physische Systeme: Hardwaremodul (Anzeigemodul, Sensormodul)
* Logisch-konzeptionelles System: Modellierung von Funktionalität auf hoher Abstraktionsebene (Datenbankmodul, Bildverarbeitungsmodul)

Entwurfskriterien:

* **Zerlegbarkeit**: Probleme (rekursiv) in weniger komplexe Teilprobleme, die unabhängig gelöst werden können
* **Kombinierbarkeit**: Module sind unabhängig voneinander wiederverwendbar und frei kombinerbar
* **Verständlichkeit**: Module sollten unabhängig voneinander verständlich und wartbar sein.
* **Stetigkeit**: Änderungen der Anforderungen sollten sich nur auf ein Teilsystem auswirken

Entwurfsprinzipien:

* Lose Koppelung, schlanke Schnittstellen, nur nötigstes austauschen
* Starke Kohäsion, hoher Zusammenhalt innerhalb des Moduls
* Wenige Schnittstellen, explizite Schnittstellen (Aufrufe und gemeinsam genutzte Daten sind im Code ersichtlich)

Vorgehen bei der Modularisierung:

*

sHAKIRA <3
