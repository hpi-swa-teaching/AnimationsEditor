testing
testPlayAnimations
	| positionProperty |
	
	positionProperty := (self animationsEditorInstance propertyList at: 1) subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: 500;
		addKeyframe.
	self animationsEditorInstance playAnimations.
	self assert: true. "no errors = good"