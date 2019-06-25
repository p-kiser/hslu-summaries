# Deskriptive Statistik

## Konzeptionelle Lernziele

Sie sind fähig, ...

* die wichtigsten Methoden der deskriptiven Statistik zu erklären und zu interpretieren.
* folgende Grössen ausrechnen: arithmetisches Mittel, Standardabweichung, Varianz, Quantil, Median und Korrelationseffizienz.
* die Grundidee der einfachen linearen Regression zu erklären, insbesondere das Regressionsmodell zu definieren, die Koeffizienten zu interpretieren und zu erklären, iwe diese geschätzt werden.
* die Konstruktion von Graphen zu erklären und diese zu interpretieren, insbesondere: Histogramme, Boxplot, empirische kumulative Verteilungsfunktion und Streudiagramm.
* unterschiedliche Szenarien zu erklären, warum Datenpunkte in einem Datensatz fehlen.

## Computer-basierte Lernziele

Sie sollten fähig sein, ...

* Daten mit Hilfe von `pandas`, als `Series`oder `DataFrame`einzulesen.
* den empirischen Mittelwert und die empirishe Standardabweichung mit den `pandas`-Methoden `var()`, resp. `std()` zu berechnen.
* den empirischen Median und die Quantiulen mit den `pandas`-Methoden `median()` und `quantile`zu berechen und daraus die Quartilsdifferentz zu bestimmen.
* ein Histogramm mit Hilfe der `pandas`-Methode `plot(kind="hist")`zu erstellen.
* ein Boxplot für einen Datensatz mit Hilfe der `pandas`-Methode `plot(kind="box")`zu erstellen.
* ein Streudiagramm für einen zweidimensionalen Datensatz mit Hilfe der `pandas`-Methode `plot(kind="scatter")`zu erstellen.
* die Koeffizienten eines einfachen linearen Regressionsmodells mit Hilfe der `numpy`-Methode `np.polyfit()` zu berechnen.
* den Korrelationskoeffizienten für zwei Grössen mit Hilfe der `pandas`-Methode `corr()`zu berechnen.
* Zeilen oder Spalten in einer Datenmatrix mit Hilfe von `dropna()` zu entfernen.
* fehlende Datenpunkte mit Hilfe von `SimpleFill().fit_transform()`, `KNN(k=3).fit_transform()` und `IterativeImputer().fit_transform()` zu ersetzen (imputieren).