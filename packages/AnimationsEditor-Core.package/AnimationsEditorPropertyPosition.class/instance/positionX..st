accessing
positionX: anInt
	| value |
	position
		ifNil: [position := (42@42)].
		
	value := anInt asString asInteger.
	value
		ifNotNil: [position setX: value setY: position y].
			
	^ position. 