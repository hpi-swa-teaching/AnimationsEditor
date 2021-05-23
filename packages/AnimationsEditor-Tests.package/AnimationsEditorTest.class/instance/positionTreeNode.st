saveJson
positionTreeNode
	| aTreeNode animationsEditorProperty |
	
	animationsEditorProperty := self animationsEditorInstance propertyList at: 2.
	aTreeNode := AnimationsEditorPropertyPosition new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph position: 100 @ 200.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetPosition: 100 @ 200.
		
	^ aTreeNode.
	
