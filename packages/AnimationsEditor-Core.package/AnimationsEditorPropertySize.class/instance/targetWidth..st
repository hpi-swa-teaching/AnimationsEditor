accessing
targetWidth: anInt
	| value |
	value := anInt asString asInteger.
	value
		ifNotNil: [(self targetSize) 
												setX: value
												setY: (self targetSize) y].