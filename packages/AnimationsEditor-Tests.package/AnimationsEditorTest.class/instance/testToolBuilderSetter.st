initialize-release
testToolBuilderSetter
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor open.

	animationsEditorInstance toolBuilder: nil.
	self assert: (animationsEditorInstance toolBuilder = nil).
		
	animationsEditorInstance windowReference abandon.