accessing
targetPosition
	targetPosition
		ifNil: [self targetPosition: (0@0)].
	
	^ targetPosition.