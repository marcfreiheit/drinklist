as yet unclassified
testAPI

	
	|user1 user2 tmp drink1 drink2 userDict drinkDict|
	
	self flag: 'TODO DONT CODE HARD, CODE SMART AFTER MARC COMMITED'.
	
	user1 := DrinklistUser create: 'Test'.
	user2 := DrinklistUser create: 'banane'.
	
	userDict := (Dictionary new)
										at: user1 name put: user1;
										at: user2 name put: user2;
										yourself.	
	
	drink1 := DrinklistDrink create: #mate whichCosts: 1.
	drink2 := DrinklistDrink create: #oSaft whichCosts: 2.
	
	drinkDict := (Dictionary new)
										at: drink1 name put: drink1 price;
										at: drink2 name put: drink2 price;
										yourself.
	
	self core users: userDict.
	self core inventory: drinkDict.
	tmp := self core userNamed: 'Test'.
	self assert: (tmp = user1).
	