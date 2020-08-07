as yet unclassified
testTargetRotationSetter
	| p testRotation |
	p := AnimationsEditorPropertyRotation new.
	
	testRotation := 3423.
	p targetRotation: testRotation.
	self assert: (p targetRotation = testRotation).