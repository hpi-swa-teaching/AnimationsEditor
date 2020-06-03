accessing
loadAnimationsObjectWithName: aString
	^ Compiler evaluate: (self animationStore at: #aString).