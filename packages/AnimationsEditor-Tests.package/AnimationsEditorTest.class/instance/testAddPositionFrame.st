saveJson
testAddPositionFrame
	| positionProperty jsonFrame aTreeNode |
	
	positionProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 3). "1: Rotation, 2: Color, 3: Position, 4: Size"
	positionProperty targetPosition: 100 @ 200.
	  
	self animationsEditorInstance selectedTreeNode: positionProperty.
	self animationsEditorInstance playAnimations.	
	aTreeNode := self animationsEditorInstance selectedTreeNode. 
	
	jsonFrame := self animationsEditorInstance addPositionFrame: aTreeNode.
	self assert: (jsonFrame at: #frame) equals: aTreeNode targetDuration.
	self assert: (((jsonFrame at: #properties) at: 1) at: #name) equals: 'PositionX'.  
	self assert: (((jsonFrame at: #properties) at: 1) at: #value) equals: 100.  
	self assert: (((jsonFrame at: #properties) at: 2) at: #name) equals: 'PositionY'.  
	self assert: (((jsonFrame at: #properties) at: 2) at: #value) equals: 200.