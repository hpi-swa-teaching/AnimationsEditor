saveJson
sizeTreeNode
	| aTreeNode animationsEditorProperty |

	animationsEditorProperty := self animationsEditorInstance propertyList at: 2.
	aTreeNode := AnimationsEditorPropertySize new.
	aTreeNode
		copyOfTargetMorph: animationsEditorProperty targetMorph;
		targetMorph: aTreeNode copyOfTargetMorph copy.
	aTreeNode targetMorph extent: 100 @ 200.
	aTreeNode	
		targetDuration: animationsEditorProperty defaultTargetDuration;
		targetSize: 100 @ 200.
		
	^ aTreeNode. 