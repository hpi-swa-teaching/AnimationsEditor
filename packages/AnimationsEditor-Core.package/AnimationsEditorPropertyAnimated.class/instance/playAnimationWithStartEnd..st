animation
playAnimationWithStartEnd: aStartEndProperty 
	self isKeyframeExceptStartFrameExistent
		ifTrue: [self executeCompositeAnimation: aStartEndProperty.
					self animationsEditor timeline createMovingLine.]
		ifFalse: [self animationsEditor updateInformationText: self messageNotEnoughKeyframes].