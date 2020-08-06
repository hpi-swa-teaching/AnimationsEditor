accessing
positionX: aNumber
	| value |
	
	value := aNumber asString asInteger.
	value
		ifNotNil: [self targetPosition setX: value setY: (self targetPosition y)].