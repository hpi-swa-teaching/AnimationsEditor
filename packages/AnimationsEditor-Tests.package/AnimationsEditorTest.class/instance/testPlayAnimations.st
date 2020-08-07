initialize-release
testPlayAnimations
	| animationsEditorInstance morph positionProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	
	self flag: #todo.
	positionProperty := ((animationsEditorInstance propertyList at: 2) subproperties at: 3).
	positionProperty positionX: 555.
	positionProperty positionY: 555.
	
	animationsEditorInstance selectedTreeNode: positionProperty.
	animationsEditorInstance playAnimations.	
	
	animationsEditorInstance windowReference abandon.
	morph abandon.
	
	self assert: true. "no errors = good"