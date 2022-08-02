testing
testChangeSelectedKeyframeValue
	| sizeBeforeChange oldValue oldTargetValues|
	
	self selectKeyframe100.
	
	sizeBeforeChange := self propertyRotation targetValues size.
	oldValue := self propertyRotation targetValues at: (self frameNumber100).
	oldTargetValues := self propertyRotation targetValues deepCopy.
	self createKeyframeWith: self animationRotation200 on: self frameNumber100.
		
	self assert: sizeBeforeChange = self propertyRotation targetValues size.
	self deny: oldValue equals: (self propertyRotation targetValues at: self frameNumber100).
	self deny: oldTargetValues equals: self propertyRotation targetValues.
	self assert: (oldTargetValues removeKey: self frameNumber100; yourself) equals: (self propertyRotation targetValues removeKey: self frameNumber100; yourself).
	