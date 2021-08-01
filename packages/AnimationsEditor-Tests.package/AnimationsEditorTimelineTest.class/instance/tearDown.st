testing
tearDown
	super tearDown.
	self propertyPosition targetMorph isFlexed
		ifTrue: [self propertyPosition targetMorph owner abandon].
	self propertyPosition targetMorph abandon.
	self animationsEditorInstance windowReference abandon.