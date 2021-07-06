testing
testResetTargetMorph
	| originalRotation newRotation |
	
	originalRotation :=  self propertyRotation targetMorph rotationDegrees.
	newRotation := originalRotation + 60.
	self propertyRotation targetMorph rotationDegrees: newRotation.
	self propertyRotation resetTargetMorph.
	self assert: self propertyRotation targetMorph rotationDegrees = originalRotation.