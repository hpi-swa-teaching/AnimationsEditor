as yet unclassified
testTargetSizeSetter
	| p testSize |
	p := AnimationsEditorPropertySize new.
	
	testSize := 200@200.
	p targetSize: testSize.
	self assert: (p targetSize = testSize).