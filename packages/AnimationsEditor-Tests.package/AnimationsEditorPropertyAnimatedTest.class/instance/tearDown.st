running
tearDown
	super tearDown.
	self morph isFlexed
		ifTrue: [self morph owner abandon].
	self morph abandon.