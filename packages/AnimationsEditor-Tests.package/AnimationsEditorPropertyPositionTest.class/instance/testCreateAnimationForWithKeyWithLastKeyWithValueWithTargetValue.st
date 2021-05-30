as yet unclassified
testCreateAnimationForWithKeyWithLastKeyWithValueWithTargetValue

	| positionProperty morph animation expectedDuration newKey lastKey newValue lastValue|
	
	positionProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 'position').
	morph := (self animationsEditorInstance propertyList at: 2) targetMorph.
	
	lastValue := 333.
	newValue := 555.
	lastKey := 100.
	newKey := 1000.
	
	positionProperty 
		positionX: lastValue;
		positionY: lastValue;
		frame: lastKey;
		addKeyframe.
	
	positionProperty 
		positionX: newValue;
		positionY: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := positionProperty createAnimationFor: morph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	expectedDuration := newKey-lastKey.
	
	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = newValue).
	self assert: (animation startValue = lastValue).
	self assert: (animation property = #position).
	self assert: (animation target = morph).
	
