as yet unclassified
testInstanceCreation
	| animationsEditorPropertyWrapper |
	animationsEditorPropertyWrapper := AnimationsEditorPropertyWrapper new.
	
	self assert:
		(animationsEditorPropertyWrapper = nil) not.