testing
testCreateAnimation

	| animation expectedDuration newKey lastKey newValue lastValue|
	
	lastValue := 20.
	newValue := 100.
	lastKey := 100.
	newKey := 1000.
	
	self propertyRotation
		currentValue: lastValue;
		frame: lastKey;
		addKeyframe.
	
	self propertyRotation
		currentValue: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := self propertyRotation createAnimationWith: newKey withPreviousKey: lastKey.
	
	expectedDuration := newKey-lastKey.

	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = newValue).
	self assert: (animation startValue = lastValue).
	self assert: (animation property = #rotationDegrees).
	self assert: (animation target = self morph).
	
