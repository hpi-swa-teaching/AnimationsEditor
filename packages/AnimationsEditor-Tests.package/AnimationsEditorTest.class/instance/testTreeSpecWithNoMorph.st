testing
testTreeSpecWithNoMorph
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor open.
	
	self assert: animationsEditorInstance propertyList size = 1.
	
	animationsEditorInstance windowReference abandon.