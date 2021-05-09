accessing
frame: aNumber
	| value |
	
	value := aNumber asString asInteger.
	value
		ifNotNil: [self targetPositions at: value put: self targetPosition].