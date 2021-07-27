testing
testCreateAnimation

	| animation newKey lastKey newValue lastValue|
	
	lastValue := 333 @ 333.
	newValue := 555 @ 555.
	lastKey := 100.
	newKey := 1000.
	
	self property 
		currentValue: lastValue;
		frame: lastKey;
		addKeyframe.
	self property 
		currentValue: newValue;
		frame: newKey;
		addKeyframe.
	
	animation := self property createAnimationWith: newKey withPreviousKey: lastKey.
	self assert: animation endValue = newValue.
	self assert: animation startValue = lastValue.
	self assert: animation property = #extent.
	self assert: animation target = self morph.