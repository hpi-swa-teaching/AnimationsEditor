testing
testSetStartValue
	| newValue |
	
	newValue := 'Lorem Ipsum'.
	self property
		currentValue: newValue;
		frame: 0;
		addKeyframe.
	self assert: self morph contents asString = newValue.