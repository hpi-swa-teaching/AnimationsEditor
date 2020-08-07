as yet unclassified
testCanCreateAnimation
	| p |
	p := AnimationsEditorPropertySize new.

	self assert: (p canCreateAnimation = true).