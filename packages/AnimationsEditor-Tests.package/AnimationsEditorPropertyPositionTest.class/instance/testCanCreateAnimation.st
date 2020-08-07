as yet unclassified
testCanCreateAnimation
	| p |
	p := AnimationsEditorPropertyPosition new.

	self assert: (p canCreateAnimation = true).