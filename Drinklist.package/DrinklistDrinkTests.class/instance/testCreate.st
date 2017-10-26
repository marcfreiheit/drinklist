as yet unclassified
testCreate 
	| juice lemonade |
	
	juice := DrinklistDrink create: #juice whichCosts: 1.
	lemonade := DrinklistDrink create: #lemonade whichCosts: 2.
	
	self assert: (juice label = #juice and: juice price = 1).
	self assert: (lemonade label = #lemonade and: lemonade price = 2).
	
	