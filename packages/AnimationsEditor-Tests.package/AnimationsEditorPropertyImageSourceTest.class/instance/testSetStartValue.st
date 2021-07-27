testing
testSetStartValue
	| newValue |
	
	newValue := self dummyImagePathJPEG.
	self property
		currentValue: newValue;
		frame: 0;
		addKeyframe.
	self assert: self morph image bits = self dummyImage bits.