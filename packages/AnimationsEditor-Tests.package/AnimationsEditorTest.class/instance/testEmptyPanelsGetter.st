initialize-release
testEmptyPanelsGetter
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor open.
	
	self assert: (animationsEditorInstance emptyPanels = nil) not.
	
	animationsEditorInstance windowReference abandon.