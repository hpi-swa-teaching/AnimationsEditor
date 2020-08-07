initialize-release
testEmptyPanelsGetter
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor open.

	self assert: (animationsEditorInstance emptyPanels = animationsEditorInstance defaultEmptyPanels).
	
	animationsEditorInstance windowReference abandon.