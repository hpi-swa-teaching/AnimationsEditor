animation
playAnimationWithStartEnd: aStartEndProperty
	
	self isKeyframeExceptStartFrameExistent
		ifTrue: [self executeCompositeAnimation: aStartEndProperty]
		ifFalse: [self animationsEditor updateInformationText: self messageNotEnoughKeyframes].