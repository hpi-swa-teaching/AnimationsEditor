testing
testLeftClickShowsSelectedProperty
	
	self keyframe100 setValueAndFrame.
	self animationsEditorInstance selectedTreeNode: self keyframe100 property.
	
	self assert: self propertyRotation currentValue = self animationRotation100.
	self assert: self propertyRotation targetFrame = self frameNumber100.
	
	
	
	