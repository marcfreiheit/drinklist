as yet unclassified
testAPI

	
	|user1 user2 drink1 drink2 userDict drinkDict|
	
	self flag: 'TODO DONT CODE HARD, CODE SMART AFTER MARC COMMITED'.
	
	user1 := DrinklistUser create: 'Test'.
	user2 := DrinklistUser create: 'banane'.
	
	userDict := OrderedCollection new
										add: user1;
										add: user2.	
	
	drink1 := DrinklistDrink create: #mate whichCosts: 1.
	drink2 := DrinklistDrink create: #oSaft whichCosts: 2.
	
	drinkDict := OrderedCollection new
										add: drink1;
										add: drink2.
	
	self core users: userDict.
	self core inventory: drinkDict.
	
	self assert: (self core userNamed: 'Test' = user1).
	