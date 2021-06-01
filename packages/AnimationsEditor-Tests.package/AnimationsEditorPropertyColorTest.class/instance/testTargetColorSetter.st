as yet unclassified
testTargetColorSetter
	| p testColor |
	p := AnimationsEditorPropertyColor new.
	
	testColor := 'red'.
	p targetColorFromString: testColor.
	self assert: (p targetColor = Color red).