testing
testMovingLineInRightPosition
| positionProperty delay|
positionProperty := (self animationsEditorInstance propertyList at: 2) subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: 1000;
		addKeyframe.
	
	self animationsEditorInstance playAnimations.
	self movingLine: self timeline movingLine. 
	"delay := Delay forMilliseconds: 500."
	Delay forMilliseconds: 500. 
	self movingLine: self timeline movingLine. 
	self movingLine stopStepping. 
	
	self assert: (self movingLine position x) = ((self timeline width - 150)/2+125).