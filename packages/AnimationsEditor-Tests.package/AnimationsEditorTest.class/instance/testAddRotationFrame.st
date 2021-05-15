saveJson
testAddRotationFrame
	| rotationProperty jsonFrame aTreeNode |
	
	rotationProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 1). "1: Rotation, 2: Color, 3: Position, 4: Size"
	rotationProperty targetRotation: 45. 

	self animationsEditorInstance selectedTreeNode: rotationProperty.
	self animationsEditorInstance playAnimations.	
	aTreeNode := self animationsEditorInstance selectedTreeNode. 
	
	jsonFrame := self animationsEditorInstance addRotationFrame: aTreeNode.
	self assert: (jsonFrame at: #frame) equals: aTreeNode targetDuration.
	self assert: (((jsonFrame at: #properties) at: 1) at: #name) equals: 'Rotation'.  
	self assert: (((jsonFrame at: #properties) at: 1) at: #value) equals: 45.  