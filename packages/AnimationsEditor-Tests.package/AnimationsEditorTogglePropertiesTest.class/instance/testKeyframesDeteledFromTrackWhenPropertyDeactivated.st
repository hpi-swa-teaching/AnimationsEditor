testing
testKeyframesDeteledFromTrackWhenPropertyDeactivated  
	| property |   
	 
	property := self animationsEditorInstance selectedTreeNode.  
	property activateProperty.  
	property   
		positionX: 555;   
		positionY: 555;   
		frame: 500.
	self animationsEditorInstance addKeyframe.  
	property deactivateProperty.  self assert: (property targetValues at: 500 ifAbsent: true).