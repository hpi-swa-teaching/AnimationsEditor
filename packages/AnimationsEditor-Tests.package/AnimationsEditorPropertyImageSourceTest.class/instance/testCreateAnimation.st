as yet unclassified
testCreateAnimation

	"test that it returns a composite animation according to the input values"
	| compositeAnimation expectedDuration newKey lastKey newValue lastValue firstAnimation secondAnimation |
	
	JPEGReadWriter2 putForm: self dummyImage onFileNamed: self dummyImagePathJPEG.
	self propertyImageSource targetSource: self dummyImagePathJPEG.
	
	lastValue := ''.
	newValue := self dummyImagePathJPEG.
	lastKey := 100.
	newKey := 1000.
	
	self propertyImageSource
		targetSource: newValue;
		frame: newKey;
		addKeyframe.
	
	compositeAnimation := self propertyImageSource createAnimationFor: self imageMorph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	self assert: (compositeAnimation animations size = 2).
	firstAnimation := compositeAnimation animations at: 1.
	secondAnimation := compositeAnimation animations at: 2.
	
	expectedDuration := (newKey-lastKey)//2.
	
	self assert: (firstAnimation duration = expectedDuration).
	self assert: (firstAnimation endValue = 0.0).
	self assert: (firstAnimation startValue = 1.0).
	self assert: (firstAnimation morph = self imageMorph).
	
	self assert: (secondAnimation duration = expectedDuration).
	self assert: (secondAnimation endValue = 1.0).
	self assert: (secondAnimation startValue = 0.0).
	self assert: (secondAnimation morph = self imageMorph).

	firstAnimation evaluateFinishBlock.
	self assert: (self imageMorph image bits = self dummyImage bits).
	FileDirectory default deleteFileNamed: self dummyImagePathJPEG.