as yet unclassified
testCreateAnimationForWithKeyWithLastKeyWithValueWithTargetValue

	| rotationProperty morph animation expectedDuration newKey lastKey newValue lastValue|
	
	rotationProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 'rotation').
	morph := (self animationsEditorInstance propertyList at: 2) targetMorph.
	
	lastValue := 20.
	newValue := 100.
	lastKey := 100.
	newKey := 1000.
	
	rotationProperty 
		targetRotation: lastValue;
		frame: lastKey;
		addKeyframe.
	
	rotationProperty 
		targetRotation: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := rotationProperty createAnimationFor: morph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	expectedDuration := newKey-lastKey.

	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = newValue).
	self assert: (animation startValue = lastValue).
	self assert: (animation property = #rotationDegrees).
	self assert: (animation target = morph).
	
