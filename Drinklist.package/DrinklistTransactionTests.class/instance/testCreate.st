as yet unclassified
testCreate 
	| trans user drink |
	
	user := DrinklistUser create: 'Test'.
	drink := DrinklistDrink create: #mate whichCosts: 1 initialStock: 10 minimumStock: 2.
	trans := DrinklistTransaction createFor: user with: drink.
	
	self assert: trans user notNil.
	self assert: trans item notNil.
	self assert: trans date <= TimeStamp now
	