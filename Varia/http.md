---
title: HTTP
---

# Beschreibung

Hypertext Transfer Protocol (HTTP) ist ein zustandsloses Protokoll zur Übertragung von Daten auf der Anwendungsschicht (s. OSI-Modell) in einem Computernetzwerk. Hauptverwendungszweck ist das laden von Webseiten aus dem WWW, es wird jedoch auch als allgemeines Dateiübertragungsprotokoll verwendet

## Zustandslosigkeit

HTTP ist zustandslos, d.h. es werden keine Sitzungsinformationen werden ausgetauscht oder gespeichert. Jede Anfrage wird unabhängig von anderen Anfragen behandelt.  Mit Cookies in den Headerinformationen können aber Status- und Sitzungsinformationen mitgegeben werden und Anwendungen wie beispielsweise Benutzerauthentifizierung und Warenkörbe implementiert werden.

## Sicherheit & Kommunikation

HTTP-Kommunikation kann von jedem Netzwerkteilnehmer gelesen werden. Mit HTTPS kann eine verschlüsselte Übermittlung erfolgen.
HTTP ist auf ein zuverlässiges Transportprotokoll angewiesen. Dies ist fast immer TCP.

## Aufbau

Es gibt zwei Arten von HTTP-Nachrichten: _Request_ und _Response_.  
Jede Nachricht besteht aus einem HTTP-Header und einem Body. Der Header enthält Metainformationen wie Kodierung oder Inhaltstyp zur korrekten Interpretation des Bodys, welcher nur Nutzdaten enthält.

# Anfragemethoden

## GET

Methode zur Anforderung einer Ressource vom Server unter Angabe eines URI. Mit der GET-Methode können auch Inhalte über die URL an den Serverübergeben werden.  

Diese sind durch die Länge der URL begrenzt.

### Argumentübertragung

Mit HTTP-GET werden Nutzerinformationen in der URL übertragen und bleiben somit in Links erhalten. Parameter-Wert-Paare werden durch das Zeichen ? in der URL eingeleitet und mit dem Zeichen & (oder ;) voneinander getrennt.

Beispiel: http://examlpe.com/hello?name=p&id=1  

## POST

Zum schicken von grösseren Datenmengen an den Server, beispielsweise zur Übermittlung von Formulardaten.

Die POST-Methode eignet sich zum Übertragen grosser Datenmengen, da sich diese nicht in der URL befinden. Die Variablen werden im Body übermittelt.

## HEAD

Anweisung an den Server, den GET-Header ohne Body zu senden. Dient z.B. zur Überprüfung der Gültigkeit einer Datei im Browser-Cache.

## PUT

Dient zum hochladen von Ressourcen auf den Server. Dadurch können neue Ressourcen erstellt werden oder alte modifiziert.

## DELETE

Löscht die Angegebene Ressource auf dem Server.

## TRACE

Liefert die gleiche Anfrage an den Client zurück. Zum debuggen der Netzwerkverbindung.

## OPTIONS

Sendet eine Liste der vom Server unterstützten Methoden und Merkmale.

## CONNECT

Für Proxyserver, welche SSL-Tunnel zur Verfügung stellen können.

# HTTP-Request

## Aufbau

```http
[METHODE] [REQUEST-URI] HTTP/[VER]
[fieldname1]: [field-value1]
[fieldname2]: [field-value2]
...
[request body (optional) ]
```

## Einfaches Beispiel

```http
GET /index.html HTTP/1.0
Host: ppsan.com
```

# Statuscode

Jede Anfrage wird mit einem Statuscode beantwortet. Diese sind in folgende Gruppen gegliedert:

| Stauscode | Bedeutung     |
|-----------|---------------|
| 1xx       | Information   |
| 2xx       | Erfolgreich   |
| 3xx       | Umleitung     |
| 4xx       | Client-Fehler |
| 5xx       | Server-Fehler |

## Beispiele

| Stauscode | Bedeutung             | Erklärung                                                                        |
|-----------|-----------------------|----------------------------------------------------------------------------------|
| 102       | Processing            | Wird verwendet um Timeouts bei zeitintensiven Anfragen zu vermeiden              |
| 200       | OK                    | Erfolgreich, Antwort im Body                                                     |
| 205       | Reset Content         | Anfrage erfolgreich, Inhalt neu aufbauen (z.B. Formularfelder zurücksetzen)      |
| 301       | Moved Permanently     | Die Ressource befindet sich an der angegebenen Adresse (im Header-Feld Location) |
| 400       | Bad Request           | Fehlerhafte Anfrage                                                              |
| 401       | Unauthorized          | Keine gültige Authentifizierung                                                  |
| 403       | Forbidden             | Fehlende Berechtigung                                                            |
| 404       | Not Found             | Die Ressource wurde nicht gefunden                                               |
| 408       | Request Timeout       | Timeout                                                                          |
| 500       | Internal Server Error | Unerwarteter Serverfehler                                                        |

[Alle Statuscodes](https://de.wikipedia.org/wiki/HTTP-Statuscode )
