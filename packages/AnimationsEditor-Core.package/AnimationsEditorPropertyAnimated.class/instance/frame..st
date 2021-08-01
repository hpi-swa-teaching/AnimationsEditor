accessing
frame: aText
	| value |
	
	value := aText asString asInteger.
	value
		ifNotNil: [self targetFrame: value].