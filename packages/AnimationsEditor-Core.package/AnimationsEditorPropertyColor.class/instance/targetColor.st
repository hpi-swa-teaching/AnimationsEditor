accessing
targetColor
	targetColor
		ifNil: [self targetColor: self defaultTargetColor].
	
	 ^ targetColor.