as yet unclassified
testCreateAnimation

	| animation expectedDuration newKey lastKey newValue lastValue|
	
	lastValue := 333.
	newValue := 555.
	lastKey := 100.
	newKey := 1000.
	
	self propertySize 
		targetHeight: lastValue;
		targetWidth: lastValue;
		frame: lastKey;
		addKeyframe.
	
	self propertySize 
		targetHeight: newValue;
		targetWidth: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := self propertySize createAnimationFor: self morph withKey: newKey withLastKey: lastKey withValue: newValue withLastValue: lastValue.
	
	expectedDuration := newKey-lastKey.
	
	self assert: (animation duration = expectedDuration).
	self assert: (animation endValue = newValue).
	self assert: (animation startValue = lastValue).
	self assert: (animation property = #extent).
	self assert: (animation target = self morph).
	
