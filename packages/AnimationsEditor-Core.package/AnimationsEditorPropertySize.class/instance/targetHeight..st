accessing
targetHeight: anInt
	| value |
	value := anInt asString asInteger.
	value
		ifNotNil: [(self targetSize) 
												setX: (self targetSize) x
												setY: value].