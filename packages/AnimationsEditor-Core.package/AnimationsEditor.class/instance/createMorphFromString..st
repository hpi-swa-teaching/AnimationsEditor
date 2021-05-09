as yet unclassified
createMorphFromString: aString
	
	^(self morphTypes at: (aString asSymbol)) value.
	
	
	