running
tearDown 
	self morph isFlexed
		ifTrue: [self morph owner abandon].
	self morph abandon. 
	self animationsEditorInstance windowReference abandon.