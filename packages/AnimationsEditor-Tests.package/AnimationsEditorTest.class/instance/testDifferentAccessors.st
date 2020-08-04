initialize-release
testDifferentAccessors
	| animationsEditorInstance |
	
	self flag: #todo.
	animationsEditorInstance := AnimationsEditor open.
	
	animationsEditorInstance emptyPanels: 42.
	self assert: (animationsEditorInstance emptyPanels = 42).
	
	self assert: (animationsEditorInstance toolBuilder = nil) not.
	
	animationsEditorInstance toolBuilder: nil.
	self assert: (animationsEditorInstance toolBuilder = nil).
		
	animationsEditorInstance windowReference abandon.