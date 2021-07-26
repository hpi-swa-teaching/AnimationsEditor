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
	
	animation := self propertyPosition createAnimationWith: newKey withPreviousKey: lastKey.
	
	expectedDuration := newKey-lastKey.
	
	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = (newValue @ newValue)).
	self assert: (animation startValue = (lastValue @ lastValue)).
	self assert: (animation property = #position).
	self assert: (animation target = self morph).