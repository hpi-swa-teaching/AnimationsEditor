as yet unclassified
testResetTargetMorph
	| originalForm |
	originalForm :=  self propertyImageSource targetMorph image.
	self propertyImageSource targetMorph image: self dummyImage.
	self propertyImageSource resetTargetMorph.
	self assert: self propertyImageSource targetMorph image bits = originalForm bits.