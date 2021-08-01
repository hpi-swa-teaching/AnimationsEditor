testing
testAddStartFrame
	self assert: self property targetValues size = 1.
	self assert: self morph owner position = (self property targetValues at: 0).