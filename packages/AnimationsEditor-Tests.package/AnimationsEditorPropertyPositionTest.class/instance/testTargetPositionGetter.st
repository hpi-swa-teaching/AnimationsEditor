as yet unclassified
testTargetPositionGetter
	| p |
	p := AnimationsEditorPropertyPosition new.
	self assert: (p targetPosition =  p defaultTargetPosition).