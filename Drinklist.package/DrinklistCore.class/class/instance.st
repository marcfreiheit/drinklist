as yet unclassified
instance

	self instance isNil 
					ifTrue: [ self instance: DrinklistCore new ].
					
	^ self instance 
	