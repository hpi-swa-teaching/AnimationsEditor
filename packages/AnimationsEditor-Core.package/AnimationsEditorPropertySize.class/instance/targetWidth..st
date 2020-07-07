accessing
targetWidth: anInt
	| value |
	value := anInt asString asInteger.
	value
		ifNotNil: [targetSize setX: value setY: targetSize y].
			
	^ targetSize. 