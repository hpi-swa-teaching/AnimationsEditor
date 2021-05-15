load-json
createMorphFromString: aString
	^ (self morphTypes at: aString asSymbol ifAbsent: [Morph new]) value.