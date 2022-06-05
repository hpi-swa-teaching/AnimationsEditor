as yet unclassified
testMovingLineInRightPosition
| positionProperty |
positionProperty := (self animationsEditorInstance propertyList at: 2) subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: 1000;
		addKeyframe.
	
	self animationsEditorInstance playAnimations.
	self wait: 500.
	self movingLine stopStepping. 
	
	self assert: (self movingLine position x) = 90.