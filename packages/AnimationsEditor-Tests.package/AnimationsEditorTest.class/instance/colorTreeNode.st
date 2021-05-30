saveJson
colorTreeNode
	| aTreeNode animationsEditorProperty |
	
	animationsEditorProperty := self animationsEditorInstance propertyList second.
	aTreeNode := AnimationsEditorPropertyColor new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph color: Color red.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetColor: 'red'.
		
	^ aTreeNode. 