initialize-release
testPlayAnimations
	| positionProperty |
	
	positionProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 3).
	self animationsEditorInstance selectedTreeNode: positionProperty.
	
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: 500;
		addKeyframe.
	
	self animationsEditorInstance playAnimations.	
	
	self assert: true. "no errors = good"