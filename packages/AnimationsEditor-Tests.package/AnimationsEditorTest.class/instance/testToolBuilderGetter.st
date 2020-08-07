initialize-release
testToolBuilderGetter
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor open.
	
	self assert: (animationsEditorInstance toolBuilder = nil) not.
	animationsEditorInstance windowReference abandon.