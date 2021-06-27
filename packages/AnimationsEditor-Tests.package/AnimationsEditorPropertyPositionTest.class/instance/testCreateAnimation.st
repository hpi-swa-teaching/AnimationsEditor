testing
testCreateAnimation

	| animation expectedDuration newKey lastKey newValue lastValue|
	
	lastValue := 333.
	newValue := 555.
	lastKey := 100.
	newKey := 1000.
	
	self propertyPosition
		positionX: lastValue;
		positionY: lastValue;
		frame: lastKey;
		addKeyframe.
	
	self propertyPosition 
		positionX: newValue;
		positionY: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := self propertyPosition createAnimationFor: self morph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	expectedDuration := newKey-lastKey.
	
	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = newValue).
	self assert: (animation startValue = lastValue).
	self assert: (animation property = #position).
	self assert: (animation target = self morph).