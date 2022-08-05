testing
tearDown
	super tearDown.
	self propertyRotation targetMorph isFlexed
		ifTrue: [self propertyRotation targetMorph owner abandon].
	self propertyRotation targetMorph abandon.
	self animationsEditorInstance windowReference abandon.