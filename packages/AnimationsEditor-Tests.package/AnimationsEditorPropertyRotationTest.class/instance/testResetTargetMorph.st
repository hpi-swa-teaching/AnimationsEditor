as yet unclassified
testResetTargetMorph
	| originalRotation |
	originalRotation :=  self propertyRotation targetMorph rotationDegrees.
	self propertyRotation targetMorph rotationDegrees: self dummyRotationDegrees.
	self propertyRotation resetTargetMorph.
	self assert: self propertyRotation targetMorph rotationDegrees = originalRotation.