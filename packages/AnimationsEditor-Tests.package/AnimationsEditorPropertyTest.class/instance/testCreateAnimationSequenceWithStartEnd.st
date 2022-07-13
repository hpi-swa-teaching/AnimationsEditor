testing
testCreateAnimationSequenceWithStartEnd
	| positionProperty propertyStartEnd animations |
	
	positionProperty := self property subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	propertyStartEnd := self animationsEditorInstance propertyStartEnd.
	
	positionProperty positionX: 333;
		 positionY: 333;
		 frame: 100;
		 addKeyframe.	
	positionProperty positionX: 555;
		 positionY: 555;
		 frame: 200;
		 addKeyframe.	
	
	animations := positionProperty createAnimationSequenceWithStartEnd: propertyStartEnd.
	self assert: animations size = 3.