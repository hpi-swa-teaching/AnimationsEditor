accessing
setFrame: aNumber
	| value |
	
	value := aNumber asString asInteger.
	value
		ifNotNil: [self frame: value]
