as yet unclassified
testCreateAnimationForWithKeyWithLastKeyWithValueWithTargetValue

	"test that it returns a composite animation according to the input values"
	| colorProperty morph compositeAnimation expectedDuration newKey lastKey newValue lastValue firstAnimation secondAnimation |
	
	colorProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 2).
	morph := (self animationsEditorInstance propertyList at: 2) targetMorph.
	
	lastValue := Color red.
	newValue := Color blue.
	lastKey := 100.
	newKey := 1000.
	
	colorProperty 
		targetColor: lastValue;
		frame: lastKey;
		addKeyframe.
	
	colorProperty 
		targetColor: newValue;
		frame: newKey;
		addKeyframe.
	
	compositeAnimation := colorProperty createAnimationFor: morph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	self assert: (compositeAnimation animations size = 2).
	firstAnimation := compositeAnimation animations at: 1.
	secondAnimation := compositeAnimation animations at: 2.
	
	expectedDuration := (newKey-lastKey)//2.
	
	self assert: (firstAnimation duration = expectedDuration).
	self assert: (firstAnimation endValue = 0.0).
	self assert: (firstAnimation startValue = 1.0).
	self assert: (firstAnimation morph = morph).
	
	self assert: (secondAnimation duration = expectedDuration).
	self assert: (secondAnimation endValue = 1.0).
	self assert: (secondAnimation startValue = 0.0).
	self assert: (secondAnimation morph = morph).

	firstAnimation finishBlock.
	self assert: (morph color = newValue)