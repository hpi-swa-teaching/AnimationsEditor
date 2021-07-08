accessing
targetWidth: anInt 
	| value |
	
	value := anInt asString asInteger.
	value
		ifNotNil: [self currentValue setX: value setY: self currentValue y]. 