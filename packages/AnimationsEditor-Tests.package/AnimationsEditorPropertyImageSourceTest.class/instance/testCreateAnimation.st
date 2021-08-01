testing
testCreateAnimation
	| compositeAnimation newKey lastKey newValue firstAnimation |

	newValue := self dummyImagePathJPEG.
	lastKey := 0.
	newKey := 1000.
	
	self property
		currentValue: newValue;
		frame: newKey;
		addKeyframe.
	
	compositeAnimation := self property createAnimationWith: newKey withPreviousKey: lastKey.
	firstAnimation := compositeAnimation animations at: 1.
	firstAnimation evaluateFinishBlock.
	
	self assert: compositeAnimation animations size = 2.
	self assert: self morph image bits = self dummyImage bits.