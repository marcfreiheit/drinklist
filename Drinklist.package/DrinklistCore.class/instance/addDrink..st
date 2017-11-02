as yet unclassified
addDrink: aDrink

	inventory at: aDrink label put: aDrink.
	aDrink addDependent: self.
	self flag: #fishy. "remove methods"