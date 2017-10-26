as yet unclassified
testManageDrinks

	self inventory: DrinklistInventory new.
	self inventory add: (DrinklistDrink create: #coke whichCosts: 1).
	
	self assert: self inventory size = 1.
	
	self inventory add: (DrinklistDrink create: #mate whichCosts: 2).
	self assert: self inventory size = 2.
	
	self assert: (self inventory get: #coke) label = #coke.