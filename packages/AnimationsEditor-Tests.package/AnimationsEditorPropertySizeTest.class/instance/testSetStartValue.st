testing
testSetStartValue
	| newValue |
	
	newValue := 534 @ 123.
	self property
		currentValue: newValue;
		frame: 0;
		addKeyframe.
	self assert: self morph extent = newValue.