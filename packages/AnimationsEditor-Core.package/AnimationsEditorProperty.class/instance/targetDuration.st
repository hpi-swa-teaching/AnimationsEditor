accessing
targetDuration
	targetDuration
		ifNil: [self targetDuration: self defaultTargetDuration].
	
	^ targetDuration.