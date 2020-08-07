as yet unclassified
testTargetRotationGetterAsString
	| p |
	p := AnimationsEditorPropertyRotation new.
	self assert: (p targetRotationAsString =  p defaultTargetRotation asString).