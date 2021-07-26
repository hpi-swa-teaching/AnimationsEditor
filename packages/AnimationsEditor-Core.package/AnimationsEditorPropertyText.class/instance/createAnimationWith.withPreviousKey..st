animation
createAnimationWith: aKey withPreviousKey: aPreviousKey
	^ self createCompositeAnimationWith: [self targetMorph contents: (self targetValues at: aKey)] withKey: aKey withPreviousKey: aPreviousKey.