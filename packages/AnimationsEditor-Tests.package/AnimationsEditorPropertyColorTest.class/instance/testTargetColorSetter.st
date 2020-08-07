as yet unclassified
testTargetColorSetter
	| p testColor |
	p := AnimationsEditorPropertyColor new.
	
	testColor := 'red'.
	p targetColor: testColor.
	self assert: (p targetColor = Color red).