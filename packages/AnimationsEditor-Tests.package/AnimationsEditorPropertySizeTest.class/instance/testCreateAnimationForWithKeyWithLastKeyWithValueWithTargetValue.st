as yet unclassified
testCreateAnimationForWithKeyWithLastKeyWithValueWithTargetValue

	| sizeProperty morph animation expectedDuration newKey lastKey newValue lastValue|
	
	sizeProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 'size').
	morph := (self animationsEditorInstance propertyList at: 2) targetMorph.
	
	lastValue := 333.
	newValue := 555.
	lastKey := 100.
	newKey := 1000.
	
	sizeProperty 
		targetHeight: lastValue;
		targetWidth: lastValue;
		frame: lastKey;
		addKeyframe.
	
	sizeProperty 
		targetHeight: newValue;
		targetWidth: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := sizeProperty createAnimationFor: morph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	expectedDuration := newKey-lastKey.
	
	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = newValue).
	self assert: (animation startValue = lastValue).
	self assert: (animation property = #extent).
	self assert: (animation target = morph).
	
