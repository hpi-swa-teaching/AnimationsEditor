testing
testSetStartValue
	| newValue |
	
	newValue := 34.
	self property
		currentValue: newValue;
		frame: 0;
		addKeyframe.
	self assert: self morph rotationDegrees = newValue.