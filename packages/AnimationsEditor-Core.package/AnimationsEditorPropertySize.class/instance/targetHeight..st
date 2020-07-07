accessing
targetHeight: anInt
	| value |

	value := anInt asString asInteger.
	value
		ifNotNil: [targetSize setX: targetSize x setY: value].
		
	^ targetSize. 