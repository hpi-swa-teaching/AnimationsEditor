initialize-release
testTreeSpecPropertyStartEnd
	| animationsEditorInstance |
	
	animationsEditorInstance := AnimationsEditor open.
	self assert: (animationsEditorInstance propertyList size = 1).
	 
	animationsEditorInstance seedProperties.
	self assert: (animationsEditorInstance propertyList size = 2). 
	
	animationsEditorInstance windowReference abandon.