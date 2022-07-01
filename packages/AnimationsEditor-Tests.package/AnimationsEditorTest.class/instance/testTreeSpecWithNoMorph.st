testing
testTreeSpecWithNoMorph
	| animationsEditorInstance |
	
	animationsEditorInstance := AnimationsEditor open.
	self assert: animationsEditorInstance propertyList size = 0.
	animationsEditorInstance windowReference abandon.