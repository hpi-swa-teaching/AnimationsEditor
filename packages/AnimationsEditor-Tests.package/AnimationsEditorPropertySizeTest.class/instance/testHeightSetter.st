as yet unclassified
testHeightSetter
	| p testHeight |
	p := AnimationsEditorPropertySize new.
	
	testHeight := 200.
	p targetHeight: testHeight.
	self assert: (p targetHeight =  testHeight asString).