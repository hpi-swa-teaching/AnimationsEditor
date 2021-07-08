accessing
positionX: aNumber
	| value |
	
	value := aNumber asString asInteger.
	value
		ifNotNil: [self currentValue setX: value setY: (self currentValue y)].