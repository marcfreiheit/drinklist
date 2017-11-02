as yet unclassified
sendOrderMailTo: adminAddress withStock: stockList

|text|
text := 'Lieber Getränke-Gott,
<br><br>
es ist wieder soweit! Du darfst bestellen!!!
<br><br>
Hier eine hübsche Übersicht mit den Getränken:
<br><br>
<table border="1">
<tr><th>Getränk</th><th>verbliebene Anzahl</th>
'.
stockList do: [ :drink |  text := text, '<tr><td>',(drink key),'</td><td>',(drink value),'</td></tr>'.].
text := text, '</table>'.
self sendEmailTo: adminAddress withText: text withSubject: 'Getränkebestellung' andType: 'text/html'.

