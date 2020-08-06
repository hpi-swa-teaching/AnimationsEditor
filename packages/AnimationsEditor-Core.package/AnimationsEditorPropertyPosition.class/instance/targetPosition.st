accessing
targetPosition
	targetPosition
		ifNil: [self targetPosition: self defaultTargetPosition].
	
	^ targetPosition.