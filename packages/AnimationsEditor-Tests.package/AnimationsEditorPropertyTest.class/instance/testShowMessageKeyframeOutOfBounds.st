testing
testShowMessageKeyframeOutOfBounds
	| positionProperty propertyStartEnd |
	
	positionProperty := self property subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	propertyStartEnd := self animationsEditorInstance propertyStartEnd.
	
	positionProperty positionX: 555;
		 positionY: 555;
		 frame: propertyStartEnd endTime + 1000; "out of bounds"
		 addKeyframe.
		
	positionProperty createAnimationSequenceWithStartEnd: propertyStartEnd.
	self assert: self animationsEditorInstance informationBarText = positionProperty messageKeyframeOutOfBounds.