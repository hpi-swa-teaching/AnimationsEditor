as yet unclassified
testCanCreateAnimation
	| p |
	p := AnimationsEditorPropertyColor new.

	self assert: (p canCreateAnimation = true).