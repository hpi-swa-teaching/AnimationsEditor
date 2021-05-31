animation
playAnimationWithStartEnd: aStartEndProperty
	| animations comp |
	
	(self isKeyframeExistent)
		ifTrue: [
			self copyOfTargetMorph: self targetMorph copy.
			animations := (self createCompositeAnimationFor: self targetMorph withStartEnd: aStartEndProperty).
	
			comp := AnimCompositeAnimation new.
			animations do: [:each | comp add: each.].
			comp start.]
	
		ifFalse: [self animationsEditor updateInformationText: 'Please specify at least one keyframe to play an animation.'].

												