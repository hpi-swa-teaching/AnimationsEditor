as yet unclassified
testPositionXGetter
	| p |
	p := AnimationsEditorPropertyPosition new.
	self assert: (p positionX =  (p defaultTargetPosition x) asString).