saveJson
testAddColorFrame
	| colorProperty jsonFrame aTreeNode |
	
	colorProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 2). "1: Rotation, 2: Color, 3: Position, 4: Size"
	colorProperty targetColor: 'red'. 

	self animationsEditorInstance selectedTreeNode: colorProperty.
	self animationsEditorInstance playAnimations.	
	aTreeNode := self animationsEditorInstance selectedTreeNode. 
	
	jsonFrame := self animationsEditorInstance addColorFrame: aTreeNode.
	self assert: (jsonFrame at: #frame) equals: aTreeNode targetDuration.
	self assert: (((jsonFrame at: #properties) at: 1) at: #name) equals: 'Color'.  
	self assert: (((jsonFrame at: #properties) at: 1) at: #value) equals: 'Color red'.  