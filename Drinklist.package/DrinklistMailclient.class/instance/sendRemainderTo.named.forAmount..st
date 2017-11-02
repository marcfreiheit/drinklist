as yet unclassified
sendRemainderTo: anEmailAddress named: aName forAmount: aMoneyAmount
"sends a reminder"

| text |
text := 'Hallo ', aName, '
Du hast Rekordschulden beim Getränkekühlschrank.
Betrag: ', aMoneyAmount asString, '
Bitte denke mal wieder daran zu bezahlen.

Viele Grüße
Dein Kühlschrank'.

self sendEmailTo: anEmailAddress withText:  text withSubject: 'Schulden beim Getränkekühlschrank'.