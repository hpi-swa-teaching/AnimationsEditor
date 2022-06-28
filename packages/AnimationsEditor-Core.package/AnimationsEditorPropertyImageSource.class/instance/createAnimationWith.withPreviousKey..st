animation
createAnimationWith: aKey withPreviousKey: aPreviousKey
	^ self createCompositeAnimationWith:
		[self targetMorph image: (Form fromFileNamed: (self targetValues at: aKey))]
		withKey: aKey withPreviousKey: aPreviousKey.
		