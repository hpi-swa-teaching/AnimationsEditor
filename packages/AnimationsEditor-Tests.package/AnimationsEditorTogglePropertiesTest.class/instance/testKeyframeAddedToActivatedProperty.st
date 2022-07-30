testing
testKeyframeAddedToActivatedProperty
	| property keyPreexists| 

	property := self animationsEditorInstance selectedTreeNode.  
	property activateProperty.
	keyPreexists := property targetValues at: 500 ifAbsent: [false].
	property 
		positionX: 555;
		positionY: 555;
		frame: 500.
	self animationsEditorInstance addKeyframe.  
	self assert: ((property targetValues at: 500) notNil and: keyPreexists not).