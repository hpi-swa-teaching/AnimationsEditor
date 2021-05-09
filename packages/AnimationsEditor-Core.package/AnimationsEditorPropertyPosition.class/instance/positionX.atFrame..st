accessing
positionX: aNumber atFrame: frame
	| value |
	
	value := aNumber asString asInteger.
	value
		ifNotNil: [self targetPosition setX: value setY: (self targetPosition y)].
		self targetPositions at: frame put: ((self targetPositions at: frame) x @ (self targetPositions at: frame) y)