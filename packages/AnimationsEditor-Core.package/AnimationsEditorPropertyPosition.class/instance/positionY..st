accessing
positionY: anInt
	| value |
	position
		ifNil: [position := (42@42)].
		
	value := anInt asString asInteger.
	value
		ifNotNil: [position setX: position x setY: value].
		
	^ position. 