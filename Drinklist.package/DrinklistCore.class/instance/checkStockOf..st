as yet unclassified
checkStockOf: aDrink

	aDrink isStockExhaustive
							ifTrue: [ self informAdminAboutLowStock ]