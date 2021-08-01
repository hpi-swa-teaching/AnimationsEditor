testing
testSetStartValue
	| newValue |
	
	newValue := Color green.
	self assert: (self morph color = newValue) not.
	self property 
		currentValue: newValue;
		frame: 0;
		addKeyframe.
	self assert: self morph color = newValue.