as yet unclassified
testShowMessageKeyframeOutOfBounds

	| positionProperty propertyStartEnd morph |
	
	positionProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 'position').
	self animationsEditorInstance selectedTreeNode: positionProperty.
	
	morph := (self animationsEditorInstance propertyList at: 2) targetMorph.
	
	propertyStartEnd := AnimationsEditorPropertyStartEnd new
		animationsEditor: self animationsEditorInstance;
		startTime: 0;
		endTime: 1000.
		
	self animationsEditorInstance propertyStartEnd: propertyStartEnd.
	
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: (propertyStartEnd endTime)*2; "out of bounds"
		addKeyframe.
	
	positionProperty createCompositeAnimationFor: morph withStartEnd: propertyStartEnd.
	
	self assert: ((self animationsEditorInstance informationBarText) = (positionProperty messageKeyframeOutOfBounds)).