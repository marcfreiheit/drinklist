as yet unclassified
testAPI

	
	|user1 user2 tmp drink1 drink2| 
	
	user1 := DrinklistUser create: 'Test'.
	user2 := DrinklistUser create: 'banane'.
	
	drink1 := DrinklistDrink create: #mate whichCosts: 1 initialStock: 10 minimumStock: 2.
	drink2 := DrinklistDrink create: #oSaft whichCosts: 2 initialStock: 10 minimumStock: 2.
	
	self core
			add: user1;
			add: user2;
			add: drink1;
			add: drink2.
	
	

	tmp := self core userNamed: 'Test'.
	self assert: (tmp = user1).
	