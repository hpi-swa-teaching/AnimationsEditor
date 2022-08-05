testing
testNoKeyframeAddedToDeactivatedProperty
	| property | 

	property := self animationsEditorInstance selectedTreeNode.  
	property deactivateProperty.
	property 
		positionX: 555;
		positionY: 555;
		frame: 500.
	self animationsEditorInstance addKeyframe.  
	self assert: (property targetValues at: 500 ifAbsent: true).