accessing
positionY
	position
		ifNil: [position := (42@42)].
		
	^ position y asString.