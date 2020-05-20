accessing
loadAnimationsObjectWithName: aString
	^ Compiler evaluate: (self animationsStore at: #aString).