saveJson
testAddSizeFrame
	| sizeProperty jsonFrame aTreeNode |
	
	sizeProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 4). "1: Rotation, 2: Color, 3: Position, 4: Size"
	sizeProperty targetSize: 200 @ 100. 

	self animationsEditorInstance selectedTreeNode: sizeProperty.
	self animationsEditorInstance playAnimations.	
	aTreeNode := self animationsEditorInstance selectedTreeNode. 
	
	jsonFrame := self animationsEditorInstance addSizeFrame: aTreeNode.
	self assert: (jsonFrame at: #frame) equals: aTreeNode targetDuration.
	self assert: (((jsonFrame at: #properties) at: 1) at: #name) equals: 'Width'.  
	self assert: (((jsonFrame at: #properties) at: 1) at: #value) equals: 200.  
	self assert: (((jsonFrame at: #properties) at: 2) at: #name) equals: 'Height'.  
	self assert: (((jsonFrame at: #properties) at: 2) at: #value) equals: 100. 