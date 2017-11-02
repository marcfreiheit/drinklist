as yet unclassified
update: anObject
	
	anObject isDrinklistDrink 
							ifTrue: [ self checkStockOf: anObject ]