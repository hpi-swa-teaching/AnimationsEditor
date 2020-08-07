as yet unclassified
testWidthGetter
	| p |
	p := AnimationsEditorPropertySize new.
	
	self assert: (p targetWidth =  (p defaultTargetSize x) asString).