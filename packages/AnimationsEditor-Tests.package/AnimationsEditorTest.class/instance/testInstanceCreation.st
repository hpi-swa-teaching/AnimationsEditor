initialize-release
testInstanceCreation
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor open.
	self assert:
		(animationsEditorInstance = nil) not.
	
	animationsEditorInstance abandon.