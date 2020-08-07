as yet unclassified
testPositionYSetter
	| p testY |
	p := AnimationsEditorPropertyPosition new.
	
	testY := 3423.
	p positionY: testY.
	self assert: (p positionY = testY asString).