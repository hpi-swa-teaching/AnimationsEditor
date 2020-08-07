as yet unclassified
testTargetSizeGetter
	| p |
	p := AnimationsEditorPropertySize new.
	
	self assert: (p targetSize =  p defaultTargetSize).