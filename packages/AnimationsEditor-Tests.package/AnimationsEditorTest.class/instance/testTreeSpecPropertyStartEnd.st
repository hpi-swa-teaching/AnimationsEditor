testing
testTreeSpecPropertyStartEnd
	| animationsEditorInstance |
	
	animationsEditorInstance := AnimationsEditor open.
	animationsEditorInstance seedProperties.
	self assert: animationsEditorInstance propertyList size = 2.
	animationsEditorInstance windowReference abandon.