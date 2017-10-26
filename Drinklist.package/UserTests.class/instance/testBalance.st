as yet unclassified
testBalance

	self user balance: 0.
	
	self user takeDrink: #coke.
	self assert: self user balance = 1 negated.
	
	self user takeDrink: #mate.
	self assert: self user balance = 2 negated.
	
	self should: [ self user takeDrink: '' ] raise: Exception.
	self assert: self user balance = 2 negated.
	
	self user pay: 1.
	self assert: self user balance = 1 negated.
	
	self user pay: 0.
	self assert: self user balance = 1 negated.
	
	self user pay: 2.
	self assert: self user balance = 1.
	
	
	
	
	