testing
testChangeSelectedKeyframeValue
	| oldValue oldTargetValues notChangedOldTargetValues newValue notChangedNewTargetValues|
	
	self selectKeyframe100.
	
	oldValue := self propertyRotation targetValues at: (self frameNumber100).
	oldTargetValues := self propertyRotation targetValues deepCopy.
	notChangedOldTargetValues := oldTargetValues removeKey: self frameNumber100; yourself.
	
	self createKeyframeWith: self animationRotation200 on: self frameNumber100.
	
	newValue := self propertyRotation targetValues at: self frameNumber100.
	notChangedNewTargetValues := self propertyRotation targetValues removeKey: self frameNumber100; yourself.
		
	self deny: oldValue equals: newValue.
	self assert: notChangedOldTargetValues equals: notChangedNewTargetValues.
	