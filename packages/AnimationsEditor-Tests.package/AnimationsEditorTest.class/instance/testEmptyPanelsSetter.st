initialize-release
testEmptyPanelsSetter
	| animationsEditorInstance testPanels |
	animationsEditorInstance := AnimationsEditor open.
	
	testPanels := OrderedCollection new.
	animationsEditorInstance emptyPanels: testPanels.
	self assert: (animationsEditorInstance emptyPanels = testPanels).
	
	animationsEditorInstance windowReference abandon.