accessing
frame: aNumber

	| value |
	
	value := aNumber asString asInteger.
	value
		ifNotNil: [self targetFrame: value].