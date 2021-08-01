testing
testOnlyPlaysAnimationInsideStartEndTime
	| positionProperty propertyStartEnd animations |
	
	positionProperty := self property subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	propertyStartEnd := self animationsEditorInstance propertyStartEnd.
	positionProperty 
		positionX: 333;
		positionY: 333;
		frame: (propertyStartEnd endTime); "within bounds"
		addKeyframe.
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: (propertyStartEnd endTime)*2; "out of bounds"
		addKeyframe.
	animations := positionProperty createAnimationSequenceWithStartEnd: propertyStartEnd.
	self assert: animations size = 2.