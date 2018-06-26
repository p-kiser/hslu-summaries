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

* **Kopplung** (Kommunikation zwischen Modulen) sollte möglichst klein gehalten werden.
* **Kohäsion** (Kommunikation innerhalb eines Moduls) maximieren.

Arten von Modulen:

* **Bibliotheken**: Sammlungen thematisch zusammengehörender Funktionen (Mathematik-Modul, Datums-Modul)
* **Abstrakte Datentypen**: Implementierung eines neuen Datentyps mit dazugehörigen Operationen (verkettete Liste, Hashtabelle)
* **Physische Systeme**: Hardwaremodul (Anzeigemodul, Sensormodul)
* **Logisch-konzeptionelles System**: Modellierung von Funktionalität auf hoher Abstraktionsebene (Datenbankmodul, Bildverarbeitungsmodul)

Entwurfskriterien:

* **Zerlegbarkeit**: Probleme (rekursiv) in weniger komplexe Teilprobleme, die unabhängig gelöst werden können
* **Kombinierbarkeit**: Module sind unabhängig voneinander wiederverwendbar und frei kombinerbar
* **Verständlichkeit**: Module sollten unabhängig voneinander verständlich und wartbar sein.
* **Stetigkeit**: Änderungen der Anforderungen sollten sich nur auf ein Teilsystem auswirken

Entwurfsprinzipien:

* **Lose Koppelung**, schlanke Schnittstellen, nur nötigstes austauschen
* **Starke Kohäsion**, hoher Zusammenhalt innerhalb des Moduls
* **Wenige Schnittstellen**
* **explizite Schnittstellen**, Aufrufe und gemeinsam genutzte Daten sind im Code ersichtlich

Vorgehen bei der Modularisierung:

* **Basikonzepte**: Kopplung & Kohäsion
* **Kriterien**: Zerlegbarkeit, Kombinierbarkeit, Verständlichkeit, Stetigkeit
* **Modularten**: Bibliotheken, abstrakte Datentypen, physische und logische Systeme
* **Prinzipien**: geringe Kopplung, hohe Kohäsion, Geheimnisprinzip, wenige & logische Schnittstellen

**Layer**: öffentliche Methoden eines tieferen Layers dürfen vom höherstehenden Layer benutzt werden.

* _call_-Beziehung: höherer Layer verwendet Funktionalität von tieferem Layer
* _use_-Beziehung: korrektes Verhalten vom höherstehenden hängt von der korrekten Implementierung des tieferen Layers ab (Initialsierung eines Devices, Netzewerkverbindung, erstellte Datei)

**Tier**:

* Presentation Tier
* Business Logic (Tier)
* Data Tier

**Packages**: Implementierung des Layer-Konzepts, abstrakt mit UML und konkret mit Java-Packages.

## Parnas: On the Criteria to be Used in Decomposing Systems into Modules (1972)

Ziele der Modularisierung:

* Verbesserung von Flexibilität & Verständlichkeit
* die Verkürzung der Enwicklungszeit

Voraussetzungen für modulares Programmieren:

* Module können mit wenig Kenntnis von anderen Modulen geschrieben werden
* Module können frei kombiniert und ersetzt werden

Nutzen der Modularisierung:

* Verkürzte Entwicklungszeit durch Aufteilung der Arbeit
* Erhöhte Flexibilität, weil Module unabhängig voneinander geändert werden können
* Bessere Verständlichkeit, weil Programme stückweise analysiert werden können

Ansätze der Modularisierung:

* Flowchart-Analyse (Klassisch): Jeder grosse Verarbeitungschritt wird als Modul implementiert
* Information Hiding (neuer Ansatz): Jede Design-Entscheidung wird in einem Modul versteckt

# Entwicklungsprozess

## Versionskontrolle

**Source Code Management (SCM)**:

* Zugriff auf frühere Revisionen
* Ermöglicht Zusammenarbeit
* Automatisches Zusammenführen (Merging)
* zentrale und/oder verteilte Datenhaltung
* Änderungen nachvollziehbar

In ein Repository gehören:

* Quellcode
* Konfigurationsdatein
* Dokumentation

Nicht in ein Repo gehören Kompilate und generierte Dokumente.

Unterscheidungsmerkamle von SCM:

* zentral / verteilt
* optimistisches / pessimistisches Lockverfahren
* Versionierung von Datei / Verzeichnisstruktur / Changeset
* mit / ohne Transaktionsuntertützung
* weitere Features: Zugriffsprotokolle, Sicherheitsmassnahmen, Webserver-Integration

Beispiele:

* **CVS**: zentral, robust, stabil, alt
* **Subversion**: zentral, transaktionsorientiert, Versionierung auf Verzeichnisebene
* **git**: dezentral, skalierbar, weit verbreitet



Grundsätzliche Operationen:

* **checkout**: lokale Arbeitskopie von Repository erstellen erstellen
* **update**: Änderungen des Repository in lokaler Kopie aktualisieren
* **log**: Revisionen ansehen
* **diff**: Zwei Revisionen eines Artefakts vergleichen
* **commit**: Änderungen in das Repository schreiben

Operationen verteiler SCM:

* **clone**: lokale Kopie eines entfernten Repos erstellen
* **fetch**: Änderungen des entfernten Repos herunterladen
* **pull**: Änderungen des entfernten Repos einpflegen
* **push**: lokale Anderungen in entferntes Repo schreiben

**Branching**: Erstellen unabhängiger Entwicklungszweige (Tests, Prototypen, Bugfixing, neue Features ...), die später wieder mit dem Hauptzweig zusammengeführt werden können.

## Buildautomatisierung

**Buildprozess**: aus Quellartefakten ein fertiges Produkt erstellen (kompilieren, generieren, testen, packen, JavaDoc erzeugen etc).

* Manuell: abhängig von der IDE, mühsam und fehleranfällig
* Script: automatisiert, reproduzierbar, unabhängig von der IDE, unflexibel, abhängig von Shell / OS, aufwändige Wartung und Erweiterung
* Build-Werkzeug: vereinfachte Handhabung von Ressourcen, automatische Prüfung von Abhängigkeiten, plattformunabhäning durch Abstraktionsebene

Beispiele für Build-Werkzeuge:

* make: alt, vor allem für C/C++, sehr flexibel
* Ant: alt, für Java, mit XML
* Maven: etabliert, für Java, mit XML
* Gradle: jung, mit Groovy-Script und DSL

### Build Tool: Apache Maven

Deklaratives Build-Tool für Java, weit verbreitet:

* schlank, zusätzliche Funktionalität mit Plugins
* zentrales Repository zum einbinden von Libraries
* Project Object Model: pom.xml, deklarierte Metainformationen (Targets, Plugins, Dependencies) für ein Projekt
* Build-Phasen: validate, compile, test, package, verify (Integrationstests), install, deploy

## Dependency Management

Organisation und Techniken für dem Umgang mit Abhängigkeiten zu anderen Modulen.

**Abhängigkeiten** sind oft in Binärform, können _intern_ (Module im selben Projekt) oder _extern_ (Module aus anderen Projekten / von anderen Organisationen) sein.

Merkmale von **Dependency-Management-Software**:

* zentrale Ablage
* standardisiertes Paketformat
* zusätzliche Metainformationen
* definierte Abhängigkeiten
* Konsistenzsicherung mit Prüfsummen
* Suchfunktionen und andere Hilfswerkzeuge

Beispiele für Dependency-Management-Software:

- _apt_
- _pip_
- _npm_

Dependency-Management in Java:

* Binäre Module
* Keine Definition von Abhängigkeiten
* ab 2001: Dependency Management mit Maven

### Dependency Management mit Apache Maven

* Maven Repository: öffentliche Repositories (Maven Central), interne Repositories bei professionellen Organisationen
* Weltweit eindeutige Identifikation:


    reverse-domain-name:project-name:version
    ch.hslu.vsk.g05:logger-server:1.1.3

* Dependency Scopes: compile, test, runtime
* Transitive Abhängigkeiten, automatische Erkennung und Lösung von Konfliken und zyklischen Abhängigkeiten
* Versionierung und Snapshots: Angaben zur Kompatibilität, automatische Aktualisierung, nachvollziehbarkeit

### Buildserver

Serversoftware zur Erstellung von Builds:

* automatisch aufgrund von Änderungen im SCM
* automatisch zu bestimmten Zeitpunkten
* manuell durch den Anwender

Vorteile von Build-Servern:

* Entlastung von Entwicklern und ihrer Rechner
* regelmässige Verifikation
* statistische Informationen zu Projektzustand / Entwicklungsprozess

Produkte und Dienste:

* Jenkins / Hudson: sehr verbreitet, Open Source
* Continuum: speziell für Maven-Projekte, Open Source
* Bamboo: mit JIRA verknüpft
* Gitlab: Kombination von SCI, CI und Cloud
* Travis: Komibinerbar mit Github u.a.

Konfiguration:

* Klassisch: Vom Projekt getrennt, vom Server vorgegeben
* DevOps-Ansatz: Konfiguration durch Entwickler im Projekt (.yml-Datei)

Voraussetzungen:

* Automatisierung des Build-Prozesse (Maven, Ant, Gradle)
* Einsatz eines Versionsverwaltungssystems (Git, Subversion, CVS)

Aufgabentrennung im CI-Prozess:

* Wann wird ein Build durchgeführt: Buildserver, Benutzer
* Was wird gebaut: Versionskontrollsysteme
* Wie wird gebaut: Buildautomatisierung (nicht Buildserver!)
* Wohin gelangen die Artefakte: Binary-Repo, Testsystem

Verschiedene Buildszenarien:

* Continuous Build
* Nightly Build: Zeitlich gesteuert, meistens nachts
* Release Build: manuell für auslieferbares Produkt

Integration und Verknüpfung von Buildservern

* Buildtool
* Versionskontrollsysteme
* Kommunikationstechnologien für Notifikation
* Auswertung und Visualisierung
* Issue-Tracking, Code-Review-Systeme

## Continuous Integration

Ziele:

* immer ein Lauffähiges Produkt vorhanden, kontinuierliche Tests möglich
* schnelleres Feedback bei Fehlern
* parallele Entwicklung im Team
* agile Software-Entwicklung ermöglichen

Zehn Praktiken der Continuous Integration:

1. **Einsatz eines zentralen SCM**, sinnvolle Commit-Kommentare, Referenz auf Issue
2. **Automatisierter Buildprozess**, auf einer kontrollierten, stabilen Umgebung
3. **Automatisierte Testfälle**, möglichst hohe Abdeckung durch automatisierte Tests, ständige Performance-Tests
4. **Änderungen des Quellcodes auf dem Hauptzweig**, Feature-Branches oft mergen
5. **Automatischer Build bei Änderungen**, Änderungen im SCM per  push (Hook) oder polling ermitteln und Build starten, Ergebnisse kommunizieren
6. **Schneller Build-Prozess**, schnelles Feedback, nicht alle Tests werden lokal vor dem Commit ausgeführt
7. **Test auf Produktivumgebung** oder auf einer Kopie davon, Testumgebung möglichst gleich wie Produktivumgebung
8. **Einfacher Zugriff auf Buildartefakte**, Bereitstellung von Buildresultaten, Archivierung von Build-Artefakten, Deployment in binäres Repository
9. **Offensive Informationen über den aktuellen Zustand**, Änderungen nachvollziehbar
10. **Automatisches Deployment**, Buildergebnisse auf Zielsysteme verteilen

## Integrations- und Systemtesting

Zu jeder Disziplin gibt es eine Art von Test:

![Integrations- und Systemtesting](./img/Testing.png)

* **Unit Test**: Überprüfung konkreter Implementierungen
* **Integrationstest**: Zusammenspiel der Implementierungen
* **Systemtest**: Zusammenarbeit verschiedener Systemkomponenten
* **Akzeptanztest**: Wurde das entwickelt, was verlangt wurde

Vollständiges Testen ist nicht machbar, es gilt eine optimales Verhältnis zwischen Aufwand und entdeckten Fehlern zu finden.

### Integrationstest

Integrationstests prüfen die Schnittstellen und das Zusammenspiel von Systemkomponenten.

* Ziel: stabiles System, stabile Teilsysteme
* Komponenten sollten bereits getestet sein mit Unit-Tests
* gewisse Fehler können nur statistisch ermittelt werden (Race Conditions, Performance)

Integrationsstrategien:

* Bottom-Up: Integration kleinerer Teilsysteme
* Top-Down: Integration aufwändiger Kontrollstrukturen
* Bing-Bang
* Continuous Integration: iterativ-inkrementelle Entwicklung

Noch nicht vorhandene Komponenten werden mit Test Doubles ersetzt:

* Stubs: Identisches Interface, statisches Verhalten
* Mocks: Intelligenter Stub mit zusätzlicher Logik

### Systemtests

Systemtests prüfen die gesamte Wirkungskette im Softwareprodukt.

* Ziel: potentiell auslieferbares Produkt nach jedem Sprint
* Lauffähig ausserhalb der Entwicklungsumgebung
* Interaktion imit anderen Systemen möglich

Systemtests sollten in einer möglichst realitätsnahen Testumgebung ausgeführt werden. und mit verschiedenen Konfigurationen ausgeführt werden.

Systemtest zum Testen nicht funktionaler Anforderungen wie Performance, Sicherheit, Robustheit

## Regressionstests

Wiederholtes Ausführen bestehender Testfälle zur einem späteren Zeitpunkt, um sicherzustellen, dass keine Funkktionalität durch Neuentwicklungen beeinträchtigt wurde.

## Agiles Testing

Die vier Quadranten des agilen Testens:

1. **Automatisierte Unit- & Komponententests**: Vertrauen in den Code, Verifikation, Test durch Team erstellt und im SCM. Werkeuge: JUnit, Stubs, Mocks
2. **Funktionale Tests** (automatisch und manuell): Nach jedem Sprint, durch Team und Product Owner. Werkzeuge: Prototypen, Mockups
3. **Abnahmetests** (manuell): Bei der Abnahme durch den Kunden durch Product Owner und Team, Werkzeuge: Testdaten, Logs
4. **Performance-, Last-, Sicherheitstests**: Stabilität und Leistung prüfen

### Testing in SoDa

Testplanung und Organisation:

* Abnahmetests am Ende des Sprints
* Einplanung von Tests zu jeder User Story
* Durchführung von Regressionstests

Testaufgaben im Scrum-Team:

* Planning-Meeting: Aufwandabschätzung für Testing
* Sprint: Tests möglichst bald ausführen
* Sprint-Abnahme: Demonstration getesteter Features
* Retrospektive: Stolpersteine ermitteln, Verbesserungsvorschläge erarbeiten

# Entwurfsmuster

Design Pattern: bewährte Schablone für wiederkehrende Entwurfsprobleme.

Wiederverwendung von bewährter Lösungen, Klassen zur Reduktion der Entwicklungszeit und Fehlerrate. Die Wiederverwendung von Code ist schwierig, da der Kontext, Technologien und Designkonzepte verschieden sind. Stattdessen: Wiederverwendung von Konzepten: diese sind gut erprobt, unabhängig von Sprache und Implementierung und ändern sich selten.

## Klassifizierung von Entwurfsmustern

**Creational Patterns**: Erzeugung von Objekten abstrahieren, delegieren, Details auslagern:

* Abstract Factory
* Builder
* Factory Method
* Prototype
* Singleton

**Structural Patterns**: Objekte / Klassen zu neuen Strukturen zusammenfassen, verschiedene Strukturen aneinander anpassen und verbinden:

* Adapter
* Bridge
* Composite
* Decorator
* Facade
* Flyweight
* Proxy

**Behavioral Patterns**: Interakton zwischen Objekten beschreiben, Kontrollflüsse festlegen, Zuständigkeiten und Kontrolle delegieren:

* Chain of Responsibility
* Interpreter
* Iterator
* Mediator
* Memento
* Observer
* State
* Template Method
* Visitor

Zusätzlich können Entwurfsmuster auch in **Klassenmuster** (Beziehung zu Kompilierzeit festgelegt) und **Objektmuster** (Beziehung zur Laufzeit dynamisch veränderbar) eingeteilt werden.

### Singleton

Objektbasiertes Erzeugungsmuster.

Ein Singleton (Einzelstück) gewährleistet, dass es von einer Klasse nur eine Instanz geben kann und stelle einen globalen Zugriffspunkt bereit.

**Merkmale**:

* Eine Objektinstanz wird als privates, statisches Attribut abgespeichert
* Ein privater Konstruktor verhindert die Neuinstanziierung von aussen
* Zugriff auf Instanz über öffentliche, statische Methode

Nachteil: Dies führt zu einer starken Kopplung und lässt sich schwer austauschen.

**UML**:

![UML Singleton](./img/singleton.png)

**Implementierung**:

```java

public class Singleton {
  private static final Singleton instance = new Singleton();
  private Singleton() {  }
  public static Singleton getInstance() {
    return instance;
  }
  public void operation() {
    // ...
  }
}
```

### Facade

Objektbasiertes Strukturmuster.

**Merkmale**:

Bietet ein einheitliche Schnittstelle für eine Reihe von Schnittstellen in einem Untersystem an. Definiert eine Schnittsttelle auf einer höheren Abstraktionsstufe, welche die Handhabung des Untersystems einfacher macht.

Problem: Sollte weder zum reinen Durchlauferhitzer verkommen noch wesentliche Logik beinhalten.

**UML**:

![UML Facade](./img/facade.png)

**Implementierung**:

```java
public class BuildFacade {
  private Compiler compiler = new Compiler();
  pricate TestExecutor TestExecutor = new TestExecutor();
  private DocumentationGenerator documentationGenerator = new DocumentationGenerator();
  public void quickBuild() {
    compiler.compileSources();
    testExecutor.runUnitTests();
  }
  public void fullBuild() {
    quickBuild();
    testExecutor.runIntegrationTests();
    documentationGenerator.createJavaDoc();
  }
  public void releaseBuild() {
    fullBuild();
    documentationGenerator.createSysSpec();
    documentationGenerator.createClassDiagrams();
  }
  // ...
}
```

### Strategy

Objektbasiertes Verhaltensmuster.

Definiert eine Familie von Algorithmen, kapsel jeden davon und macht sie austauschbar. Mit einer Strategie kann der Algorithmus unabhängig von Client, der ihn verwendet, ausgetauscht werden.

**Merkmale**: Bietet unterschiedliche Varianten / Implementierungen von Algorithmen an. Fasst Klassen mit gleichem Interface zusammen, die sich in ihrem Verhalten unterscheiden und erlaubt das Hinzufügen weiterer Implementierungen ohne Änderungen am bestehenden Code.

**Problem**: Der oftmals lohnende Einsatz bei kleinen Methoden wird gerne übersehen.

**UML**:

![UML Strategy](./img/strategy.png)

**Implementierung**:

```java
public interface SortingStrategy {
  public <T> void sort(List<T> items);
}
public class QuickSort implements SortingStrategy {
  public <T> void sort(List<T> items) { /* ... */ }
}
public class MergeSort implements SortingStrategy {
  public <T> void sort(List<T> items) { /* ... */ }
}
public class BubbleSort implements SortingStrategy {
  public <T> void sort(List<T> items) { /* ... */ }
}
```

### Observer

Objektbasiertes Verhaltensmuster.

Definiert eine 1:m-Abhängigkeit zwischen Objekten, damit bei der Änderung des Zustands des einen Objekts alle von ihm abhängigen Objekte automatisch benachrichtigt und aktualisiert werden.

**Merkmale**: Realisiert eine lose Kopplung zwischen einem Subjekt und einer beliebigen Anzahl Beobachtern. Erlaubt Kommunikation entgegen der Abhängigkeitsrichtung, bildet die Grundlage fpr das MVC-Pattern und das Event-Handling in Java-GUI-Frameworks.

**Problem**: Eine enge funktionale Kopplung von Subjekt und Beobachter führt zu grossen Schnittstellen.

![UML Observer](./img/observer.png)

**Implementierung**:

```java
public interface Observable {
  public void subscribe(Observer observer);
  public void unsubscribe(Observer observer);
}
public interface Observer {
  public void update(Object state);
}
public class Subject implements Observable {
  private List<Observer> subscribers = new ArrayList<Observer>;
  private Object state = null;
  pubic void subscribe(Observer observer) {
    subscribers.add(observer);
  }
  public void unsubscribe(Observer observer) {
    subscribers.remove(observer);
  }
  public void setState(Object state) {
    this.state = state;
    notifySubscribers();
  }
  public Object getState() {
    return state;
  }
  private void notifySubscribers() {
    subscribers.stream().forEach(s -> s.update(state));
  }
}
public class SUbscriber implements Observer {
public void update(Object state) { /* ... */ }
}
```

### Adapter

Klassen- oder objektbasiertes Strukturmuster.

Konvertiert die Schnittstelle einer Klasse in eine andere Schnittstelle, die von einem Client erwartet wird. Ein Adapter lässt Klassen zusammenarbeiten, die es ansonsten aufgrund von inkompatiblen Schnittstellen nicht könnten.

**Merkmale**: Erlaubt Wiederverwendung bestehender Klassen trotz inkompatibler Schnittstellen. Erlaubt die Definition einer möglichst allgemeinen Schnittstelle und die spätere Anpassung für die Bedürfnisse unterschiedlicher Clients.

**Problem**: Ein Adapter ist kein Ersatz für sinnvolle Schnittstellen und sollte vor allem im Umgang mit APIs von Dritten verwendet werden.

**UML**:

![UML Adapter](./img/adapter.png)

```java
public interface MessageStore {
  public void store(Message message);
}
public interface KeyValueStore {
  public void put(String id, String message);
}
public class MessageStoreAdapter implements MessageStore {
  private KeyValueStore keyValueStore = KeyValueStore.getInstance("messages");
  public void store (Message message) {
    keyValueStore.put(message.getId(), message.getPayload());
  }
}
```

### Factory Method

Klassenbasiertes Erzeugungsmuster.

**Merkmale**: Erlaubt das Erstellen von Instanzen der Klassen einer bestehenden Klassenhierarchie, stellt eine einheitliche Schnittstelle zur Erzeugung dieser Klassen zur Verfügung, Delegiert die Details der Objekterzeugung and ide Implementierungen.

**Problem**: Bei einer Erweiterung der Klassenhierarchie muss auch die Hierarchie der Factory-Klassen erweitert werden. Erweiterungen wirken sich auf mehrere Stellen im Code aus.

**UML**:

![UML Factory Method](./img/fact-meth.png)

**Implementierung**:

```java
publich interface Document {
  public String getMimeType();
  public String getExtension();
}
public class JsonDocument implements Document {
  public String getMimeType() { return "application/json"; }
  public String getExtension() { return ".json"; }
}
public class XmlDocument implements Document {
  public String getMimeType() { return "application/xml"; }
  public String getExtension() { return ".xml"; }
}
public interface DocumentCreator {
  public Document createDocument();
}
public class JsonCreator {
  public Document createDocument() { return new JsonDocument(); }
}
public class XmlDocumentCreator {
  public Document createDocument() { return new XmlDocument();}
}
```

### Prototype

Objektbasiertes Erzeugungsmuster.

Entkoppelt die Objekterzeugung von eigentlichen System und gibt die Möglichkeit, komplexe Prototypen aus einzelnen, einfachen Prototymen zusammenzubauen.

**Merkmale**: Erlaubt die Erzeugung neuer Objekte aufgrund bereits existierender Objekte, indem diese kopiert und nicht komplett neu gebaut werden.

**UML**:

![UML Prototype](./img/prototype.png)

**Implementierung**:

```java
public interface MessagePrototype {
  public String getPayload();
  public MessagePrototype clone();
}
public class TextMessage implements MessagePrototype {
  public String getPayload() { return payload; }
  public MessagePrototype clone() { return super.clone(); }
}
public class EmailMessage implements MessagePrototype {
  public String getPayload() { return payload; }
  public MessagePrototype clone() { return super.clone(); }
}
public MessageClient() {
  // provide new instances of MessagePrototype by cloning the existing ones
}
```

## Einsatz von Entwurfsmustern

Zuerst muss man Entwurfsmuster

* **verstehen**: [GoF - Design Patterns](http://www.uml.org.cn/c++/pdf/DesignPatterns.pdf), Interwebz
* **auswählen**: Erzeugung/Struktur/Verhalten, Vor- und Nachteile abwägen
* **abwägen**: Macht der Einsatz eines Entwurfsmuster den Code besser und verständlicher oder nur aufgebläht und unflexibel

Im Zweifelsfall sollte man auf den Einsatz eines Entwurfsmusters besser verzichten, und vielleicht sogar ab und zu die alte Denkrübe benutzen.

Der Vorteil von Entwurfsmustern liegt nicht nur in besser strukturiertem Code, sondern auch darin, dass Entwickler eine _gemeinsame Sprache_ für schwer verständliche Konzepte haben

# Automatisches Testing

Testen wird oft vernachlässigt:

* Entwickler wollen lieber programmieren als testen
* Entwickler glauben, sie machen keine Fehler
* Projektleiter sehen das Testen als unnötig und ohne Mehrwert

Beim Testen wird oft ein falscher Ansatz verwendet:

* Getestet wird am Schluss, Suche nach Fehlern
* Es wird schlecht getestet, Fehler werden verschwiegen
* Entwickler verhalten sich defensiv

Deshalb sollte **kontiniuerlich getestet** werden, nicht nur um Fehler zu finden sondern auch um sicherzustellen, dass alles funktioniert.

Test-First-Ansatz (Test Driven Development):

* Fehler finden, bevor sie gemacht werden
* Fehler korrigieren, bevor sie implementiert werden

Testfälle zuerst schreiben, dann den produktiven Code. Dadurch kann sofort automatisch getestet werden, sobald der produktive Code geschrieben werden.

## Unit- und Integrationstests

### Unit-Tests

Unit-Tests (Komponenten-, Modul- oder Entwicklertests) sind funktionale Tests einzelner, in sich geschlossener Einheiten wie beispielsweise Klassen, Komponenten und Module.

Unit-Tests sind

* schnell
* einfach ausführbar
* selbstvalidierend (Assertions)
* automatisiert

und können in der Entwicklungsumgebung durch den Entwickler und in der CI-Umgebung während des Buildprozesses ausgeführt werden.

**Probleme**:

* Für GUI-Komponenten aufwändig
* Qualitätssicherung und Nachvollziehbarkeit sind zeitaufwändig
* können nicht alles abdecken

**JUnit** ist das am häufigsten eingesetzte Test-Framework in Java. JUnit Namenskonvention: Suffix `Test` für Unit-Tests.

### Integrationstests

Integrationstests testen das Zusammenspiel verschiedener Komponenten. Die Abgrenzung zu Unit-Tests ist nicht immer eindeutig. Die Verwendung von Umgebungsressourcen (Netzwerk, Dateisystem) und immer wenn das Fehlschlagen aufgrund von Fremdeinflüssen möglich ist, handelt es sich um einen Integrationstest.

JUnit Namenskonvention: Suffix `IT` für Integrationstests.

## Codeabdeckung

Das Ziel ist es, mit möglichst wenig Aufwand möglichst umfassende Tests zu erreichen. Dazu helfen das Messen von Codeabdeckung und damit eine gezielte Entwicklung von Tests.

Messtechniken:

* Line Coverage (Welche Zeilen / Statements wurden ausgeführt)
* Branch Coverage (Welche Verzweigungen wurden genommen)
* Decision Coverage (Welche Bedingungen wurden evaluiert)
* Path Coverage (Programmlaufpfade)
* Function Coverage
* Race Coverage (Welche stellen laufen parallel)

# Dependency Injections

Komponenten sind aufgrund hoher Kopplung schlechter testbar, weil Unit-Tests auch die Abhängigkeiten benötigen.

Mit **Dependency Injection** werden die Komponenten nicht mehr verdrahtet (A instanziert B, B instanziert C) sondern werden über einen zusätzlichen Konstruktor mitgegeben werden, was die Kopplung reduziert. Die Testbarkeit wird erhöht, erfordert aber die Entwicklung von _Test-Doubles_, die als abhängige Komponenten eingesetzt werden können.

# Test Doubles

Test-Doubles müssen das gleiche Interface implementieren wie die Produktivkomponente, die sie imitieren. Zur Laufzeit kann mittels _Dependency Injection_ die Komponente gewechselt werden. Es muss sichergestellt werden, dass die Test-Doubles nicht in der Produktivumgebung verwendet werden können.

* **Dummy**: Funktionslose Attrappe, häufig eine "leere" Implementierung des Interfaces
* **Stub**: Implementierung eines Interfaces mit vordefinierten, statischen Rückgabewerten
* **Spy**: Alternative Implementierung, die dynamische Werte zurückliefert und sich Methodenaufrufe merkt (Anzahl, Häufigkeit, Parameter, Zeitpunkt, Exceptions)
* **Mock**: Spezialisierung von _Spy_, kann Verifikation der gesammelten Daten selber vornehmen.
* **Fake**: Vollständige und korrekte, aber einfachere Implementierung einer Komponente

**Einsatzzweck**:

* _Dummies_ und _Stubs_ helfen, eine bessere Testisolation zu erreichen.
* _Spies_ und _Mocks_ sind ein universeller Ansatz zur Durchführung von Behaviour-Testing.
* _Fakes_ sind aufwändige Implemtierungen zur vollständigen Entkopplung vom Original.

# Review

Ein **Review** ist eine _öffentliche_, _verbale_, _zwischenmenschliche_ Untersuchung eines Artefakts.

Ein **Audit** ist eine _unpersönliche_ Überprüfung eines konkreten Belegs für einen Prozess (z.B. eine Dokumentation).

Ein **Acceptance Test** ist die Validierung einer Anforderung mittels Black-Box-Tests auf einem System vor einer Übergabe. In Scrum werden diese missverständlicherweise als _Reviews_ bezeichnet.

## Arten von Reviews

**Management Review**: Aspekte, die das Projektmanagement, den Projektverlauf, die Planung etc. betreffen.

**Technisches Review**:  Review von technischen Dokumenten, Source, Design, Anforderungen an die Architektur, Systemspezifikation.

**Scrum-Review**: Untersuchung des Produkt-Inkrements, im Sprint erledigte Aufgaben,  Anpassungen am Produkt-Backlog. Im _SoDA als _Sprint-Abnahme_ bezeichnet, da es kein Review in engeren Sinne ist.

Artem von Reviews nach absteigender Formalität:

* **Inspection**: strenger, wohldefinierter Prozess
* **Team Review**: geplant und strukturiert, weniger formal
* **Walkthrough**: Autor stellt sein Artefakt einer Gruppe von Fachollegen vor
* **Pair Programming**: Gemeinsames, gleichzeitiges Arbeiten am selben Artefakt
* **Peer Deskcheck**: Überprüfung des Arbeitsergebnisses durch andere Person
* **Passaround**: Kopien werden versandt und Feedbacks eingeholt
* **Ad Hoc Review**: Bestandteil der täglichen Teamarbeit

| Review Type | Planning | Preparation | Meeting | Correction | Verification |
|---|---|---|---|---|---|
| Inspection | Yes | Yes | Yes | Yes | Yes |
| Team Review | Yes | Yes | Yes | Yes | No |
| Walkthrough | Yes | No | Yes | Yes | No |
| Pair Programming | Yes | No | Continuous | Yes | Yes |
| Peer Review | No | Yes | Perhaps | Yes | No |
| Passaround | No | Yes | No | Yes | No |
| Ad Hoc Review | No | No | Yes | Yes | No |

Reviews helfen, Fehler zu entdecken und reduzieren dadurch den Nachbearbeitungsaufwand in der Produktentwicklung.

# Konfigurationsmanagement

Konfigurations-Items (Hardware, Firmware, Software und die dazugehörigen Einstellungen) sind ständigen Änderungen unterworfen. Nicht alle Versionen aller Komponenten funktionieren korrekt zusammen. Deshalb ist bei Systemen mit mehreren Komponenten ein Funktionsmanagement nötig.

Darin werden die einzelnen Systemkonfigurationen zu verschiedenen Zeitpunkten identifiziert und eine kontrollierte Durchführung von Konfigurationsänderungen unter Sicherstellung von Integrität und Rückverfolgung ermöglicht.

Konfigurationsmanagent ist eine Führungsaufgabe:

* Indentifikation und Dokumentation der Eigenschaften jedes Configuration Items
* Steuerung der nötigen Änderungen dieser Eigenschaften
* Erfassung des Umsetzungsstandes von Änderungen
* Überprüfung der Einhaltung festgelegter Anforderungen
* Organisation von Zuständigkeiten, Ressourcen und Terminplänen
* Auswahl von Werkzeugen und Implementierungen
* Überwachung der Lieferanten und Schnittstellen
* SCMP

## Software Configuration Management Plan (SCMP)

**Software Configuration Management Plan**: Festhalten der Erkenntnisse und Ergebnisse:

* Einführung: _Zweck, Gültigkeitsbereich, Begriffsdefinitionen_
* SCM-Management: _Wer?_
* SCM-Tätigkeiten: _Was?_
* SCM-Termine: _Wann?_
* SCM-Ressourcen: _Wie/Womit?_
* SCM-Aktualisierung: _Sicherstellung der Nachführung_

**Software Configuration Items**: Gruppierungen von Software, die im Konfigurationsmanagementprozess als Einheit betrachtet werden:

* Quellcode
* Pläne
* Libraries
* Daten und Datenkataloge
* Anleitungen für Installation, Wartung, Betrieb

**Version**: Spezifisches, identifizerbares Artefakt auf einem bestimmten Entwicklungsstand.

**Revision**: Neue Version eines Artefakts zur Ablösung einer älteren Version

**Baseline**: Satz von Revisionen, Momentaufnahme der Konfiguration

**Release**: Getestete und freigegebene Baseline

# Deployment

Deployment ist die Bereitstellung / Auslieferung von Software und findet am Ende eines Projektes statt, oder bei iterativen Modellen kontinuierlich (Continuous Delivery erfordert Continuous Deployment).

Aspekte von Deployment:

* **Verteilung** von Software und Dokumentation per Datenträger oder Web
* **Installation**: Software auf Zielsystem kopieren
* **Konfiguration**: Einstellung der Software auf jeweilige Anforderungen
* **Organisation**: Information, Schulung, Support, Planung, Produktion

Die Deployment-Dokumentation umfasst:

* Technische Aspekte
  * Deploymentdiagramme (Zuordnung der Komponenten zu Systemen / Hardware)
  * Installations- und Deinstallationsprogramme bzw. -skripte
  * Konfigurationen (Standard, Beispiele, kundenspezifisch usw.)
  * Installationsmedium / Bezugsquelle
  * Repositories zur Ablage der Binaries
* Organisatorische Aspekte
  * Konfigurationsmanagement
  * Installations- und Bedienungsanleitung
  * Erwartungsmanagement: Welche Funktionalität ist vorhanden?
  * Bereitstellung von Support

## Aspekte des Deployments

### Installation und Deinstallation

* Möglichst automatisierbar und dadurch reproduzierbar
* Vollständige und saubere Deinstallation muss möglich sein
* Vollautomatische Softwareverteilung
* Unterschiedliche Bedürfnisse: Wizard für Endbenutzer, Automatisierbarkeit für Administrator

### Konfiguration von Anwendungen

* Zielkonflikt: Muss out-of-the-box laufen und auf die eigenen Bedürfnisse anpassbar sein
* Konfigurationsmanagement: Versionen, Lizenzen, Umgebungen: Lauffähige Kombinationen, welche Update-Schritte sind lauffähig, welche Szenarien wurden getestet?

### Deployment-Manuals

* Installationsanleitung
* Bedienungsanleitung (+ Release Notes)

### Deployment Support

Muss in jedem Fall erbracht werden.

### Release und Versionierung

Eindeutige Versionsbezeichnung:

* Technische Version
* Tag im Versionskontrollsystem
* Evt. zusätzliche "Marketing-Versionierung"

Semantic Versioning:

    Major.Minor.Patch

* Major: Inkompatible Änderungen
* Minor: Rückwärtskompatible FUnktionalität hinzugefügt
* Patch: Fehlerkorrekturen

Alternativ: Zeitbasierte Modelle (Ubuntu)

## Deployment in Java

* Verteilung einzelner `.class`-Files ist fehleranfällig und deshalb inakzeptabel.
* Die Verteilung von `.jar`-Archiven (gezippte `.class`-Files mit zusätzlichen Ressourcen und Metadaten)

[Deployment Diagramm](./img/Deployment-Diagram.png)
