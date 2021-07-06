testing
testResetTargetMorph
	| originalText dummyText |
	dummyText := 'Lorem Ipsum'.
	originalText :=  self propertyText targetMorph contents asString.
	self propertyText targetMorph contents: originalText.dummyText.
	self propertyText resetTargetMorph.
	self assert: self propertyText targetMorph contents asString = originalText.