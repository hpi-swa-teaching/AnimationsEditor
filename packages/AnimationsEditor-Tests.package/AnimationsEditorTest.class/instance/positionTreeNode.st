saveJson
positionTreeNode
	| aTreeNode animationsEditorProperty |
	
	animationsEditorProperty := self animationsEditorInstance propertyList second.
	aTreeNode := AnimationsEditorPropertyPosition new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph position: 100 @ 200.
	aTreeNode	
		targetFrame: animationsEditorProperty defaultFrame;
		targetPosition: 100 @ 200.
		
	^ aTreeNode.
	
