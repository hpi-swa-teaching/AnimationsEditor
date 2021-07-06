testing
testTreeSpecWithOneMorphPosition
	| animationsEditorInstance morph positionProperty |
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new openInWorld.
	
	animationsEditorInstance addTargetMorph: morph.
	positionProperty := (animationsEditorInstance propertyList at: 2) subproperties at: 'position'.
	animationsEditorInstance selectedTreeNode: positionProperty.
	self assert: animationsEditorInstance selectedTreeNode = positionProperty.
	
	animationsEditorInstance windowReference abandon.
	morph abandon.