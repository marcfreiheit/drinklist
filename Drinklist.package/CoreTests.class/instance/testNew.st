as yet unclassified
testNew

	self assert: (self core users isCollection and: self core users isEmpty).
	self assert: self core inventory notNil.
	self assert: (self core transactions isCollection and: self core transactions isEmpty)