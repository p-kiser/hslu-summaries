# LINQ

**LINQ** *(Language Integrated Query)* erlaubt das Schreiben von Queries ohne die Verwendung von Query-Sprachen wie beispielsweise SQL. Abfragen können auf folgenden Datenquellen durchgeführt werden:

* Objekte
* XML
* DataSet
* SQL
* Entities


**Beispiel**:

```
string[] names = {"hubertus", "habakuk", "hans", "hermann"};

var shortnames = from n in names where name.Length <= 5 select n;
```

## Syntax

Es gibt zwei verschiedene Arten, LINQ-Queries zu schreiben:

### Lamda Syntax

```
var longWords = words.Where( w ⇒ w.length > 10);
```

### Query Syntax

```
var longwords = from w in words where w.length > 10;
```
