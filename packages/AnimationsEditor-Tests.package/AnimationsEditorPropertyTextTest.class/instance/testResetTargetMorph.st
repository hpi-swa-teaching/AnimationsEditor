testing
testResetTargetMorph
	| originalText dummyText |
	
	dummyText := 'Lorem Ipsum'.
	originalText :=  self morph contents asString.
	self morph contents: dummyText.
	self property resetTargetMorph.
	self assert: self morph contents asString = originalText.