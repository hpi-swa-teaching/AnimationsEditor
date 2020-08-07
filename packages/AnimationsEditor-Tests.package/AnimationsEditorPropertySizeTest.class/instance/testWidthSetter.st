as yet unclassified
testWidthSetter
	| p testWidth |
	p := AnimationsEditorPropertySize new.
	
	testWidth := 200.
	p targetWidth: testWidth.
	self assert: (p targetWidth =  testWidth asString).