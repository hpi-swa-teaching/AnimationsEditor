accessing
positionY: anInt
	| value |

	value := anInt asString asInteger.
	
	value
		ifNotNil: [position setX: position x setY: value].
		
	^ position. 