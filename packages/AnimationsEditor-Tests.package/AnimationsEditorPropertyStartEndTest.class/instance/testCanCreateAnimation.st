as yet unclassified
testCanCreateAnimation
	| p |
	p := AnimationsEditorPropertyStartEnd new.
	
	self assert: (p canCreateAnimation = false).