running
tearDown

	super tearDown.
	self animationsEditorInstance propertyList first ifNotNil: [
		self morph isFlexed
			ifTrue: [self morph owner abandon]. "removes FlexShell"
		self morph abandon. ].
	self animationsEditorInstance windowReference abandon.
