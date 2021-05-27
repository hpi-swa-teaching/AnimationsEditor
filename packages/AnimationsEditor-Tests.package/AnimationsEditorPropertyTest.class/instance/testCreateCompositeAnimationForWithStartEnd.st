as yet unclassified
testCreateCompositeAnimationForWithStartEnd
	
	"test that orderedColl containing all the animations is generated correctly based on a given key-value array"
	| positionProperty propertyStartEnd morph animations |
	
	positionProperty := ((self animationsEditorInstance propertyList at: 2) subproperties at: 3).
	self animationsEditorInstance selectedTreeNode: positionProperty.
	
	morph := (self animationsEditorInstance propertyList at: 2) targetMorph.
	
	propertyStartEnd := AnimationsEditorPropertyStartEnd new
		animationsEditor: self animationsEditorInstance;
		startTime: 0;
		endTime: 1000.
		
	self animationsEditorInstance propertyStartEnd: propertyStartEnd.
	
	positionProperty 
		positionX: 333;
		positionY: 333;
		frame: (propertyStartEnd endTime)/4; 
		addKeyframe.
	
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: (propertyStartEnd endTime)/2; 
		addKeyframe.
		
	
	animations := positionProperty createCompositeAnimationFor: morph withStartEnd: propertyStartEnd.
	
	self assert: (animations size = 2). "WIP"

	
	
