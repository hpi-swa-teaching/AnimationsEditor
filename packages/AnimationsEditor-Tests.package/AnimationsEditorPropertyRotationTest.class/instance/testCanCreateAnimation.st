as yet unclassified
testCanCreateAnimation
	| p |
	p := AnimationsEditorPropertyRotation new.

	self assert: (p canCreateAnimation = true).