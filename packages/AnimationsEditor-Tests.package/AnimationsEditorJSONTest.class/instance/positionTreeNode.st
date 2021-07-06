saveJson
positionTreeNode
	| aTreeNode animationsEditorProperty |
	
	animationsEditorProperty := self animationsEditorInstance propertyList second.
	aTreeNode := AnimationsEditorPropertyPosition new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode	
		targetFrame: self defaultTime;
		targetPosition: 100 @ 200;
		addKeyframe. 
	aTreeNode	
		targetFrame: self defaultNextTime; 
		targetPosition: 200 @ 250;
		addKeyframe. 
		
	^ aTreeNode.
	
