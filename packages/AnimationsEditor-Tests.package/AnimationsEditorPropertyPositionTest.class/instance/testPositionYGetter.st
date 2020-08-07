as yet unclassified
testPositionYGetter
	| p |
	p := AnimationsEditorPropertyPosition new.
	self assert: (p positionY =  (p defaultTargetPosition y) asString).