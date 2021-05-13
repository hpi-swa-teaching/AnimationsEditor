initialize-release
testTreeSpecWithOneMorphPosition
	| animationsEditorInstance morph positionProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	positionProperty := ((animationsEditorInstance propertyList at: 2) subproperties at: 'rotation').
	animationsEditorInstance selectedTreeNode: positionProperty.
	
	animationsEditorInstance windowReference abandon.
	morph abandon.