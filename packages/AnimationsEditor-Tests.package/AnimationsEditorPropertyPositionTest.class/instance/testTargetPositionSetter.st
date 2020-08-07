as yet unclassified
testTargetPositionSetter
	| p tempPosition |
	p := AnimationsEditorPropertyPosition new.
	tempPosition := 200@100.
	p targetPosition: tempPosition.
	
	self assert: (p targetPosition =  tempPosition).