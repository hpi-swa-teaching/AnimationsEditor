accessing
positionX: aNumber
	| value |
	
	value := aNumber asString asInteger.

		"ifNotNil: [self targetPosition setX: value setY: (self targetPosition y)]."
	"(self targetPositions at: self frame)
		ifNotNil: [
			self targetPositions at: self frame put: ((self targetPositions at: self frame) x @ (self targetPositions at: self frame) y)]"
		
	((self targetPositions at: self frame asInteger) == -1)
		ifFalse: [
			self targetPositions at: self frame put: ((self targetPositions at: self frame) x @ (self targetPositions at: self frame) y)]