as yet unclassified
testOnlyPlaysAnimationInsideStartEndTime
	
	"test that createCompositeAnimationFor:withStartEnd: only inserts those animations that are inside our time bounds"
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
		frame: (propertyStartEnd endTime); "inside of bounds"
		addKeyframe.
	
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: (propertyStartEnd endTime)*2; "out of bounds"
		addKeyframe.
	
	animations := positionProperty createCompositeAnimationFor: morph withStartEnd: propertyStartEnd.
	
	self assert: (animations size = 1).