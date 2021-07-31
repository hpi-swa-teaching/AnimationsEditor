testing
testSetStartValue
	| newValue |
	
	newValue := 34 @ 50.
	self property
		currentValue: newValue;
		frame: 0;
		addKeyframe.
	self assert: self morph owner position = newValue.