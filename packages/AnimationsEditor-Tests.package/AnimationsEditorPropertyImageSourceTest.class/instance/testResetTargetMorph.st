testing
testResetTargetMorph
	self property
		targetFrame: 0;
		currentValue: self dummyImagePathJPEG;
		addKeyframe.
	self property targetMorph image: self dummyImage.
	
	self property targetMorph image: self dummyImage2.
	self property resetTargetMorph.
	self assert: self property targetMorph image bits = self dummyImage bits.