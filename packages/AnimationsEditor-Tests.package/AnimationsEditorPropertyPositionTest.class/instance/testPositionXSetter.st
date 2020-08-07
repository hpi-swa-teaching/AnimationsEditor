as yet unclassified
testPositionXSetter
	| p testX |
	p := AnimationsEditorPropertyPosition new.
	
	testX := 3423.
	p positionX: testX.
	self assert: (p positionX = testX asString).