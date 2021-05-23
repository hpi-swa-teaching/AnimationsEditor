initialize-release
testPlayAnimations
	| animationsEditorInstance morph positionProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	
	self flag: #todo.
	positionProperty := ((animationsEditorInstance propertyList at: 2) subproperties at: 3).
	
	animationsEditorInstance selectedTreeNode: positionProperty.
	
	positionProperty positionX: 555.
	positionProperty positionY: 555.
	positionProperty frame: 500.
	positionProperty addKeyframe.
	
	animationsEditorInstance playAnimations.	
	
	animationsEditorInstance windowReference abandon.
	morph owner abandon. 
	morph abandon.
	
	self assert: true. "no errors = good"