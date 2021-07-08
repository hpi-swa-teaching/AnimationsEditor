testing
testCreateAnimation

	"test that it returns a composite animation according to the input values"
	| compositeAnimation expectedDuration newKey lastKey newValue lastValue firstAnimation secondAnimation dummyText |
	
	dummyText := 'Lorem ipsum'.
	
	lastValue := self textMorph contents asString.
	newValue := lastValue.dummyText.
	lastKey := 100.
	newKey := 1000.
	
	self propertyText
		currentValue: newValue;
		frame: newKey;
		addKeyframe.
	
	compositeAnimation := self propertyText createAnimationFor: self textMorph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	self assert: (compositeAnimation animations size = 2).
	firstAnimation := compositeAnimation animations at: 1.
	secondAnimation := compositeAnimation animations at: 2.
	
	expectedDuration := (newKey-lastKey)//2.
	
	self assert: (firstAnimation duration = expectedDuration).
	self assert: (firstAnimation endValue = 0.0).
	self assert: (firstAnimation startValue = 1.0).
	self assert: (firstAnimation morph = self textMorph).
	
	self assert: (secondAnimation duration = expectedDuration).
	self assert: (secondAnimation endValue = 1.0).
	self assert: (secondAnimation startValue = 0.0).
	self assert: (secondAnimation morph = self textMorph).

	firstAnimation evaluateFinishBlock.
	self assert: (self textMorph contents asString = newValue).