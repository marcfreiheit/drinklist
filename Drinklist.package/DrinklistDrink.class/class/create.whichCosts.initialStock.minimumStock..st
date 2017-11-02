as yet unclassified
create: aDrink whichCosts: anAmount initialStock: aStock minimumStock: aLimit

	^ DrinklistDrink new
						label: aDrink;
						price: anAmount;
						stockLimit: aLimit;
						stock: aStock;
						yourself 