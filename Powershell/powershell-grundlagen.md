---
title: Grundlagen Powershell
author: pki
---

# Inhalt

- [Was ist PowerShell](#was-ist-powershell)
- [Hosts](#hosts)
- [PowerShell Hilfe](#powershell-hilfe)
- [Cmdlets](#cmdlets)
- [Variablen](#variablen)
- [Datentypen](#datentypen)
- [Operatoren](#operatoren)
- [Input und Output](#input-und-output)
- [Aliasse](#aliasse)
- [Provider und PSDrives](#provider-und-psdrives)
- [Execution Policies](#execution-policies)
- [Scope](#scope)
- [Module](#module)
- [PowerShell-Objekte](#powershell-objekte)
- [PowerShell Remoting](#powershell-remoting)

# Was ist PowerShell

PowerShell ist eine von Microsoft entwickelte Alternative zum
Windows-Kommandozeilenprogramm CMD.exe und zum Windows Script Host.

# Hosts

PowerShell.exe ist der Standard-Host für PowerShell. Die
PowerShell-Konsole unterstützt Autovervollständigung (Tabulatortaste)
und mit F7 kann eine Liste der letzten Befehle aufgerufen werden. Die
PowerShell ISE enthält neben einem Skript-Bereich und einem
Konsolenfenster auch das Show-Command Add-On, in welchem alle
verfügbaren Befehle Befehle durchsucht werden können.

# PowerShell Hilfe

## Hilfe anzeigen

Um Hilfe zu einem Befehl zu erhalten:

```powershell
Get-Help <Befehl>
```

Um die Hilfe seitenweise anzuzeigen:

```powershell
Help <Befehl>
```

oder

```powershell
Get-Help <Befehl> | more
```

## Parameter von Get-Help

Der Get-Help Befehl kann mit folgenden Paramentern aufgerufen werden:

| Parameter | Beschreibung                |
|-----------|-----------------------------|
| -Full     | Vollständige Hilfe anzeigen |
| -Example  | Beispiele anzeigen          |
| -Detailed | Ausführliche Hilfe anzeigen |
| -Online   | Online-Hilfe öffnen         |

## Hilfe aktualisieren

```powershell
Update-Help
```

Falls keine deutschen Helpfiles vorhanden sind, führt
dieser Befehl zu einer Fehlermeldung. Um englischen Helpfiles
herunterzuladen:

```powershell
Update-Help -UICulture en-us
```

## About-Files

About-Files enthalten weiterführende Informationen zu bestimmten
Themenbereichen und können mit dem `Get-Help` Befehl angezeigt werden.
Beispiele:

```powershell
Get-Help about_PowerShell.exe | more Get-Help
about _PowerShell _Ise.exe | more
Get-Help about _Command _Syntax |more
```

# Cmdlets

Cmdlets sind PowerShell-Befehle. Sie sind nach folgendem Muster
aufgebaut:

```powershell
verb-Noun <String>  [-Parameter <String> ]
```

Kommentare:

```powershell
# Kommentar

<#
mehr-
zeiliger
Kommentar
#>
```

## Befehle anzeigen

Verfügbare Befehle können mit dem Get-Command Befehl angezeigt werden.
Beispiele:

```powershell
# Alle verfügbaren Befehle
Get-Command
#Alle Befehle, die mit Show beginnen
Get-Command Show*
```

Um das Show-Command Add-on in einem neuen Fenster
zu öffnen:

```powershell
Show-Command
```

# Variablen

Variablennamen in PowerShell beginnen immer mit dem Zeichen `$`. Mit
diesem Befehl können alle Variablen angezeigt werden:

```powershell
Get-Variable
```

## Typen von Variablen

PowerShell unterscheidet drei Typen von Variablen:

### Benutzerdefinierte Variablen

Diese können vom Benutzer erstellt werden und werden nach dem Beenden
der PowerShell-Session verworfen.

```powershell
$String = "Test"
```

Variablennamen mit Leerzeichen sind möglich, wenn der Namen in geschweiften Klammern
angegeben wird:

```powershell
${Name mit Leerzeichen} = 100
```

In der PowerShell müssen Variablen vor ihrer Verwendung nicht deklariert werden. Eine
explizite Typzuweisung kann wie folgt gemacht werden:

```powershell
$a = [string ] 6
```

About-File:

```powershell
Get-Help about _Variables | more
```

### Automatische Variablen

Speichern den Status von PowerShell und werden von der PowerShell automatisch erstellt und geändert.

```powershell
PSHome # Pfad des PowerShell Installationsverzeichnisses
$PSScriptRoot # Pfad des aktuell ausgeführten Scripts
```

About-File:

```powershell
Get-Help about_Automatic_Variables | more
```

### Einstellungsvariablen

Speichern die Benutzereinstellungen für PowerShell und können vom Benutzer verändert werden.

```powershell
$MaximumHistoryCount # max. Anzahl der Einträge im Sitzungsverlauf
```

About-File:

```powershell
Get-Help about_Preference_Variables | more
```

# Datentypen

Einige häufige Datentypen in PowerShell:

| Datentyp    | Beschreibung                         |
|-------------|--------------------------------------|
| `string`    | Zeichenkette                         |
| `char`      | 16-Bit Unicode Zeichen               |
| `byte`      | 8-Bit unsigned Character             |
| `int`       | 32-Bit signed Integer                |
| `long`      | 64-Bit signed Integer                |
| `bool`      | Boolean                              |
| `decimal`   | 128-Bit Gleitkommazahl               |
| `single`    | Einfache Genauigkeit, Gleitkommazahl |
| `double`    | Doppelte Genauigkeit, Gleitkommazahl |
| `DateTime`  | Datum und Zeit                       |
| `xml`       | XML-Objekt                           |
| `array`     | Array                                |
| `hashtable` | Hashtable                            |


Wird beim Erstellen einer Variablen kein Datentyp angegeben, erfolgt eine implizite Typzuweisung.

## Typecasting

Die explizite Zuweisung eines bestimmten Datentyps kann mit dem Typecast-Operator gemacht werden. Beispiele:

```powershell
$a = 12; [string] $a += 3 # $a = 123
[int] $a = Read-Host "Zahl eingeben"
[void] $arr.Add(1)
```

# Operatoren

## Vergleichsoperatoren


| Operator | Bedeutung                                      |
|----------|------------------------------------------------|
| `-eq`    | gleich                                         |
| `-lt`    | kleiner                                        |
| `-le`    | kleiner oder gleich                            |
| `-gt`    | grösser als                                    |
| `-ge`    | grosser oder gleich                            |
| `-like`  | Übereinstimmung mit dem Platzhalterzeichen (*) |

```powershell
Get-Help about_Comparison_Operators | more
```

## Logische Operatoren

| Operator     | Bedeutung                 |
|--------------|---------------------------|
| `-and`       | logisches UND             |
| `-or`        | logisches ODER            |
| `-xor`       | logisches exklusives ODER |
| `-not` / `!` | logisches NICHT           |

```
Get-Help about_Logical_Operators | more
```

## Weitere Operatoren

```powershell
Get-Help about_Operators | more
Get-Help about_Arithmetic_Operator | more
Get-Help about_Assignment_Operators | more
Get-Help about_Type_Operators | more
```

# Input und Output

Cmdlets in PowerShell haben folgende Input- und Output-Streams:

| Name      | Bedeutung                  |
|-----------|----------------------------|
| `StdIn`   | Standard-Input             |
| `Debug`   | Debugging-Informationen    |
| `Verbose` | Ausführliche Informationen |
| `Warning` | Warnungen                  |
| `StdErr`  | Fehlermeldungen            |
| `StdOut`  | Standard-Output            |


## Pipelines

Mit dem Pipeline-Operator `|` können mehrere Cmdlets so miteinander verbunden werden, dass der Output eines Befehls als Input an einen anderen Befehl gesendet werden. Beispiel:

```powershell
Get-Process | Get-Member
```

About-File:

```powershell
Get-Help about_Pipelines | more
```

## Umleitungsoperatoren

| Operator  | Bedeutung                                 |
|-----------|-------------------------------------------|
| `1>`/ `>` | Umleitung des `StdIn` in Textdatei        |
| `2>`      | Umleitung des `StdErr` in Textdatei       |
| `3>`      | Umleitung `Warungen` in Textdatei         |
| `4>`      | Umleitung `Verbose` in Textdatei          |
| `5>`      | Umleitung `Debug` in Textdatei            |
| `*>`      | Umleitung aller Streams in Textdatei      |
| `>>`      | Umleitung an vorhandene Textdatei anfügen |

```powershell
Get-Help about_Redirection | more
```


## Input-Befehle

| Befehl         | Bedeutung                         |
|----------------|-----------------------------------|
| `Read-Host`    | Eingabe des Hosts                 |
| `Get-Content`  | Liest Textdateien zeilenweise ein |
| `Import-CSV`   | Erzeugt Objekte aus CSV-Dateien   |
| `Imprt-Clixml` | Erzeugt Objekte aus XML-Dateien   |

## Output-Befehle

| Befehl          | Bedeutung                                      |
|-----------------|------------------------------------------------|
| `Out-Default`   | Sendet Output and Standardausgabe (`Out-Host`) |
| `Out-Host`      | Sendet Output an Host                          |
| `Out-File`      | Sendet Output an Textdatei                     |
| `Out-Printer`   | Sendet Output an Drucker                       |
| `Out-Gridview`  | Zeigt Output in Gridview an                    |
| `Out-Null`      | Vernichtet Output                              |
| `Export-CSV`    | Speichert Objekte als CSV-Datei                |
| `Export-Clixml` | Speichert Objekte als XML-Datei                |

# Aliasse

Aliasse sind alternative Namen für Cmdlets. Dies können Beispielsweise die Namen ähnlicher CMD.exe Befehle oder Abkürzungen sein. Einige Beispiele:

| Cmdlet          | Aliasse             |
|-----------------|---------------------|
| `Get-ChildItem` | `ls`, `dir`, `gci`  |
| `Set-Location`  | `cd`, `chdir`, `sl` |

Alle Aliasse anzeigen lassen:

```powershell
Get-Alias
```

oder

```powershell
Set-Location Alias:
Get-ChildItem
```

Aliasse eines Befehls anzeigen lassen:

```powershell
Get-Alias <Befehl>
```

Alias erstellen:

```powershell
Set-Alias [-Name] <String> [-Value] <String>
```

# Provider und PSDrives

PowerShell Provider stellen einen Datenspeicher als PowerShell-Laufwerk (PSDrive) zur Verfügung. Das Dateisystem, die Registry, das Active Directory und SQL-Datenbanken werden als PSDrives zur Verfügung gestellt und können mit den gleichen Befehlen bearbeitet werden.

Beispiele für PSDrives:

| Name    | Provider    | Root              |
|---------|-------------|-------------------|
| `Alias` | Alias       |                   |
| `Env`   | Environment |                   |
| `C`     | Filesystem  | C:\               |
| `HKCU`  | Registry    | HKEY_CURRENT_USER |

Mit dem Befehl

```powershell
Set-Location <Drive>:; Get-ChildItem
```

können sowohl Ordner und Dateien in einem Dateisystem angezeigt werden wie auch Umgebungsvariablen oder Registry-Einträge.

```powershell
Get-Help about_Providers
```

# Execution Policies

Execution Policies regeln welche Skripts in PowerShell ausgeführt werden können. Default ist Restricted.

| Name           | Bedeutung                                                           |
|----------------|---------------------------------------------------------------------|
| `Restricted`   | Keine Skripts.                                                      |
| `AllSigned`    | Nur signierte Skripts.                                              |
| `RemoteSigned` | Alle lokalen Skripts und alle signierten Skripts.                   |
| `Unrestricted` | Alle Skripts können ausgeführt werden.                              |
| `Bypass`       | Alle Skripts können ohne Bestätigung und Warnung ausgeführt werden. |
| `Undefined`    | Keine Execution Policy definiert, default gilt.                     |

```powershell
Get-Help about_Execution_Policies | more
```

# Scope

Execution Policies haben verschiedene Geltungsbereiche (Scopes). Default Scope ist LocalMachine.

| Name           | Bedeutung                       |
|----------------|---------------------------------|
| `Process`      | Gilt für den aktuellen Prozess  |
| `CurrentUser`  | Gilt für den aktuellen Benutzer |
| `LocalMachine` | Gilt für den lokalen Computer   |


```powershell
Get-Help about_Scopes | more
```

Execution Policy anzeigen:

```powershell
Get-ExecutionPolicy [-Scope <Scope>]
```

Execution Policy ändern:

```powershell
Set-ExecutionPolicy <String> [-Scope <Scope>]
```

Beispiel:

```powershell
# Unsignierte, lokale Skripts für diesen Prozess zulassen:
Set-ExecutionPolicy RemoteSigned –Scope Process
```

# Module

Module sind Sammlungen von PowerShell-Funktionalitäten wie Beispielsweise Cmdlets, Funktionen und Variablen. Verfügbare Module anzeigen:

```powershell
Get-Module –ListAvailable
```

Modul laden:

```powershell
Import-Module –Name <String>
```

Befehle eines geladenen Moduls anzeigen:

```powershell
Get-Command –Module <String>
```

# PowerShell-Objekte

PowerShell produziert und verarbeitet Objekte. Objekte bestehen aus Methoden (Methods) und Eigenschaften (Properties). Um diese anzuzeigen:

```powershell
Get-Member –InputObject <string>
```

Nur Eigenschaften / Methoden anzeigen:

```powershell
Get-Member –InputObject <string> –MemberType Properties
Get-Member –InputObject <string> –MemberType Methods
```

##	Methoden und Eigenschaften von Objekten

Methoden und Eigenschaften von Objekten können mit dem Punkt-Operator aufgerufen werden. Beispiel:

```powershell
$String.ToUpper() #ToUpper Methode des String-Objekts
$String.Length #Length Property
```

```powershell
Get-Help about_Objects | more
```

# PowerShell Remoting

## Vorbereiten des Zielrechners

PSRemoting ist auf Windows Servern standardmässig aktiviert. Auf Clients muss es zuerst aktiviert werden:

```powershell
Enable-PSRemoting
```

Für Remoteverbindungen in einem öffentlichen Netz muss ein zusätzlicher Parameter angegeben werden:

```powershell
Enable-PSRemoting -SkipNetworkProfileCheck
```

Dieser Befehl passt automatisch die Windows Firewall-Einstellungen, so dass PSRemote-Verbindungen innerhalb einer Domäne möglich sind. Deaktivieren von PSRemoting:

```powershell
Disable-PSRemoting
```

##	WS-MAN Provider

Remoting-Einstellungen werden als PSDrive angezeigt und können dort gesetzt werden.

```powershell
Get-Help WSMan
```

## Sessions

Eine Verbindung zu einem anderen Recher herstellen:

```powershell
Enter-PSSession <Computername>
```
Verbindung beenden:

```powershell
Exit-PSSession
```

Help-File:

```powershell
Help about_PSSessions
```

### Temporäre Sessions

Temporäre Sessions können mit dem Invoke-Command Befehl aufgebaut werden. Damit kann ein Skript-Block übergeben werden. Die Session wird anschliessend automatisch beendet.

```powershell
Invoke-Command –Computername <computername> -Scriptblock { … }
```

## About-Files

```powershell
Help about_Remote
Help about_Remote_Disconnected_Sessions
Help about_Remote_FAQ
Help about_Remote_Jobs
Help about_Remote_Output
Help about_Remote_Requirements
Help about_Remote_Troubleshooting
Help about_Remote_Variables
```