saveJson
rotationTreeNode
	|  aTreeNode animationsEditorProperty  |
	
	animationsEditorProperty := self animationsEditorInstance propertyList second.
	aTreeNode := AnimationsEditorPropertyRotation new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph rotationDegrees: 70.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetRotation: 70.
		
	^ aTreeNode. 