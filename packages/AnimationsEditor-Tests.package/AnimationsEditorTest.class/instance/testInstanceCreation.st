initialize-release
testInstanceCreation
	| animationsEditorInstance |
	
	animationsEditorInstance := AnimationsEditor open.
	self assert: (animationsEditorInstance windowReference = nil) not.
	animationsEditorInstance windowReference abandon.