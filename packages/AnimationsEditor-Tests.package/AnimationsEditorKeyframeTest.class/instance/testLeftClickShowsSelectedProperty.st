testing
testLeftClickShowsSelectedProperty
	self selectKeyframe100.
	self assert: self propertyRotation currentValue = self animationRotation100.
	self assert: self propertyRotation targetFrame = self frameNumber100.
	
	
	
	