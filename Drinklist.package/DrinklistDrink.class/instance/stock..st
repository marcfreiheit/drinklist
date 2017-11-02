accessing
stock: anObject

	stock := anObject.
	
	stock < self stockLimit 
					ifTrue: [ self mailClient sendOrderMailTo: self withStock: self ]
