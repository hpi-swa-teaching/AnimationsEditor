as yet unclassified
testHeightGetter
	| p |
	p := AnimationsEditorPropertySize new.

	self assert: (p targetHeight =  (p defaultTargetSize y) asString).