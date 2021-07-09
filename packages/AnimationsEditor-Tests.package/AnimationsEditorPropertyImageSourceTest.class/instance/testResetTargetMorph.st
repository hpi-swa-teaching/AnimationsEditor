testing
testResetTargetMorph
	self propertyImageSource
		targetFrame: 0;
		currentValue: self dummyImagePathJPEG;
		addKeyframe.
	self propertyImageSource targetMorph image: self dummyImage.
	
	self propertyImageSource targetMorph image: self dummyImage2.
	self propertyImageSource resetTargetMorph.
	self assert: self propertyImageSource targetMorph image bits = self dummyImage bits.