as yet unclassified
testIt

| liste |
liste := {'Orangensaft'->10 . 'Cola'->2}.
DrinklistMailclient new sendOrderMailTo: 'jakob.braun@posteo.de' withStock: liste.