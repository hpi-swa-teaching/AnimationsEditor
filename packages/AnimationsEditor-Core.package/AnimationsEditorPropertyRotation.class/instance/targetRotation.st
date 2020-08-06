accessing
targetRotation
	targetRotation
		ifNil: [self targetRotation: self defaultTargetRotation].
	
	 ^ targetRotation.