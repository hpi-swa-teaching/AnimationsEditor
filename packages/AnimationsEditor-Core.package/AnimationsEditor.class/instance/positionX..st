accessing
positionX: anInt
	| value |

	value := anInt asString asInteger.
	value
		ifNotNil: [position setX: value setY: position y].
			
	^ position. 