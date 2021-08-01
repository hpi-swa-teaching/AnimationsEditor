testing
testResetTargetMorph
	| originalRotation newRotation |
	
	originalRotation :=  self property targetMorph rotationDegrees.
	newRotation := originalRotation + 60.
	self property targetMorph rotationDegrees: newRotation.
	self property resetTargetMorph.
	self assert: self property targetMorph rotationDegrees = originalRotation.