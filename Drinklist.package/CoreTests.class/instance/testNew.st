as yet unclassified
testNew

	self assert: (self core users isCollection and: self core users isEmpty).
	self assert: (self core inventory isCollection and: self core inventory isEmpty)