accessing
createAnimationWith: aKey withPreviousKey: aPreviousKey
	^ self createCompositeAnimationWith: [self targetMorph color: (Color colorFrom: (self targetValues at: aKey))] withKey: aKey withPreviousKey: aPreviousKey.