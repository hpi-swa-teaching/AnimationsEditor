as yet unclassified
testTargetRotationGetter
	| p |
	p := AnimationsEditorPropertyRotation new.
	self assert: (p targetRotation =  p defaultTargetRotation).