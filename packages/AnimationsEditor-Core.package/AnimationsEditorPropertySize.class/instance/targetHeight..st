accessing
targetHeight: aNumber
	| value |
	value := aNumber asString asInteger.
	value
		ifNotNil: [(self targetSize) setX: (self targetSize) x
												 setY: value].