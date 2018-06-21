# Repetitionsblatt W1 ManSec: Datenschutz I

**1) Geben Sie zwei Beispiele von Personendaten.**

> AHV-Nummer, Religionszugehörigkeit, Mobiltelefonnummer, Parteimitgliedschaft, ...

**2) Warum sind Personendaten für die Werbewirtschaft so interessant?**

> Mit Informationen über eine Person ist es möglich Zielgruppengerechte Werbung zu schalten, für die mehr bezahlt wird.

**3) Wie können Firmen wie Google, Facebook, etc. Informationen über Personen erfassen?**

> * Browser Plug-ins (Web tracker)
> * Cookies
> * JavaScript
> * Count Pixels
> * Browser fingerprinting
> * URL query strings

**4) Nennen Sie zwei Techniken zum Bestimmen der Geo-Lokation eines Nutzers.**

> * Zugriffspunkt des ISP
> * WLAN
> * GSM
> * GPS
> * Smartcard-Leser, Kameras, ...

**5) Welches sind die 5 Prinzipien des „Code of Fair Information Practices“ (1973)?**

> * Transparenz (Notice/Awareness)
> * Zustimmung und Wahl (Choice/Consent)
> * Zugang zu seinen Daten mit Korrekturmöglichkeit (Access/Participation)
> * Integrität und Sicherheit (Integrity/Security)
> * Durchsetzung (Enforcement/Redress)
>   * Selbstregulierung / Selbstverpflichtung (Self-Regulation)
>   * Rechtsmittel / Antragsdelikt (Private remedies)
>   * Strafverfolgungsbehörde / Offizialdelikt (Government Enforcement

**6) Welche drei Aspekte haben die OECD Privacy Guidelines (1980) hinzugefügt?**

> * Zweckbindung
> * Collection limitation
> * Use limitation

**7) Was ist das Problem mit Datenschutzrichtlinien (Privay Policies)?**

> * Schwer zu finden
> * zu lang und komplex
> * zu juristisch

**8) Warum fordern uns im Augenblick viele Webfirmen auf, ihre neuen Datenschutzrichtlinien
zu akzeptieren?**

> Am 25. Mai tritt die neue Datenschutz-Grundverordnung (DSGVO) der EU in Kraft, welche
verschärfte Bedingungen im Umgang mit Personendaten vorsieht.

**9) Beschreiben Sie kurz die Schwierigkeiten das Konzept „Zweckbindung“ in der Praxis
einzuhalten.**

> Die Zweckbindung definiert die Gründe für die Datenerfassung und Zugriff. Die
Verwendung von automatischen Methoden zur Durchsetzung von Datenschutzbestimmungen
erfordert, dass der Zweck eines angeforderten Zugriffes automatisch erkannt und gegen die
Policy überprüft werden kann.

**10) Wie kann verhindert werden, dass die Tester von Applikationen nicht mit den
Produktionsdaten arbeiten können und müssen?**

> Durch Maskierung von Personendaten wird der Bezug zu den Individuen in der Datenbank
zerstört. Es muss aber darauf geachtet werden, dass die Umformung so realistisch und
akkurat wie möglich ist; sie muss ebenfalls format- und linksicher sein.

**11) Warum ist k-Anonymität ein Mass, welches die „Qualität“ einer Anonymisierung beschreibt?**

> * k Datensätze bilden eine Äquivalenzklasse (bzgl. des Quasi-Identifikators)
> * schützt mit einer Konfidenz von 1/k vor einer ‘korrekten’ Verknüpfung einer Person mit
ihren sensitiven Attributen

**12) Welche Schritte müssen Sie durchführen, damit Sie eine vorgegebene „k-Anonymität“
erreichen?**

> * Bestimmung der Identifikatoren und des Quasi-Identifikators
> * Vorgabe einer Generalisierungsstrategie
> * Entfernen der Identifikatoren
> * Umformen einzelner Attribute aus dem Quasi-identifikator bis gewünschtes Mass
erreicht ist, eventuell unter Zuhilfenahme von Unterdrückung.