as yet unclassified
testTransactionsFor
	| user1 user2 drink1 drink2 |
	user1 := DrinklistUser create: 'First User'.
	user2 := DrinklistUser create: 'Second User'.
	drink1 := DrinklistDrink create: #mate whichCosts: 1.
	drink2 := DrinklistDrink create: #coke whichCosts: 2.
	
	self core 
		add: (DrinklistTransaction createFor: user1 with: drink1);
		add: (DrinklistTransaction createFor: user1 with: drink2);
		add: (DrinklistTransaction createFor: user1 with: drink2);
		add: (DrinklistTransaction createFor: user1 with: drink1);
		add: (DrinklistTransaction createFor: user2 with: drink1);
		add: (DrinklistTransaction createFor: user2 with: drink1);
		add: (DrinklistTransaction createFor: user2 with: drink1).
		
	self assert: (self core transactionsFor: user1) size = 4.
	self assert: (self core transactionsFor: user2) size = 3
	
	
	
	
	