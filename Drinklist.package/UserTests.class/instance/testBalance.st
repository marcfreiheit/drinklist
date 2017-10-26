as yet unclassified
testBalance
	| coke lemon |
	self user balance: 0.
	coke := DrinklistDrink create: #coke whichCosts: 1.
	lemon := DrinklistDrink create: #lemon whichCosts: 2.
	
	
	self user takeDrink: coke.
	self assert: self user balance = 1 negated.
	
	self user takeDrink: lemon.
	self assert: self user balance = 3 negated.
	
	self should: [ self user takeDrink: nil ] raise: Exception.
	self assert: self user balance = 3 negated.
	
	self user pay: 1.
	self assert: self user balance = 2 negated.
	
	self user pay: 0.
	self assert: self user balance = 2 negated.
	
	self user pay: 3.
	self assert: self user balance = 1.
	
	
	
	
	