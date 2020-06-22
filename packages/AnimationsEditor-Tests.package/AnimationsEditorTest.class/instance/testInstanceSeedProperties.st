initialize-release
testInstanceSeedProperties
	| animationsEditorInstance |
	
	animationsEditorInstance := AnimationsEditor open.
	animationsEditorInstance seedProperties.
	self assert: (animationsEditorInstance propertyList size = 2).
	(animationsEditorInstance propertyList at: 2)
		buildUIWith: animationsEditorInstance toolBuilder.
	
	animationsEditorInstance windowReference abandon.