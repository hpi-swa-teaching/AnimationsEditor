as yet unclassified
testPositionAccessors
	| p testX testY |
	p := AnimationsEditorPropertyPosition new.
	self assert: (p positionX = p positionY).
	self assert: (p positionX = '0').
	
	testX := 3423.
	testY := 3243242.

	p positionX: testX.
	p positionY: testY.
	
	self assert: (p positionX = testX asString).
	self assert: (p positionY = testY asString).