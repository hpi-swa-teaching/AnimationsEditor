testing
testCreateCompositeAnimationForWithStartEnd
	
	| positionProperty propertyStartEnd morph animations |
	
	positionProperty := (self animationsEditorInstance propertyList at: 2) subproperties at: 'position'.
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
		
	animations := positionProperty createAnimationSequenceFor: morph withStartEnd: propertyStartEnd.
	
	self assert: (animations size = 3). "WIP"
	self animationsEditorInstance.
	morph
	"test position of morph after animation"