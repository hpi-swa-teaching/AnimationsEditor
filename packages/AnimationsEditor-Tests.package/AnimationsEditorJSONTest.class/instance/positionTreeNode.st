saveJson
positionTreeNode
	| aTreeNode animationsEditorProperty |
	
	animationsEditorProperty := self animationsEditorInstance propertyList second.
	aTreeNode := animationsEditorProperty subproperties at: 'position'. 
	
	aTreeNode	
		targetFrame: self defaultTime;
		currentValue: 100 @ 200;
		addKeyframe. 
	aTreeNode	
		targetFrame: self defaultNextTime; 
		currentValue: 200 @ 250;
		addKeyframe. 	
	^ aTreeNode.
	
