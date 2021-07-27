animation
playAnimationWithStartEnd: aStartEndProperty
	
	self isKeyframeExistent
		ifTrue: [self executeCompositeAnimation: aStartEndProperty]
		ifFalse: [self animationsEditor updateInformationText: 'Please specify at least one keyframe to play an animation.'].