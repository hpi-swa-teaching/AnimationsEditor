accessing
positionX
	position
		ifNil: [position := (42@42)].
		
	^ position x asString.