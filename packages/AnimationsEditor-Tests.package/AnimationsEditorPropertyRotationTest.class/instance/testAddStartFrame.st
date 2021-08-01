testing
testAddStartFrame
	self assert: self property targetValues size = 1.
	self assert: self morph rotationDegrees = (self property targetValues at: 0).