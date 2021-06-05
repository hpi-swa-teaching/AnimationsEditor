accessing
targetSource
	targetSource
		ifNil: [self targetSource: self defaultTargetSource].
	
	 ^ targetSource.