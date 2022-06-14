testing
testMovingLineInRightPosition
| positionProperty d|
positionProperty := (self animationsEditorInstance propertyList at: 2) subproperties at: 'position'.
	self animationsEditorInstance selectedTreeNode: positionProperty.
	positionProperty 
		positionX: 555;
		positionY: 555;
		frame: 1000;
		addKeyframe.
	
	"self animationsEditorInstance playAnimations."
	"self timeline createMovingLine."
	d:= Morph new  extent: 3@100;
				color: Color black;
				position: 105@25.
	1000 timesRepeat: [self moveMovingLine: d]. 
	Transcript show: d position x.
	d comeToFront.
	"delay := Delay forMilliseconds: 500."
	"Delay forMilliseconds: 500. "

	"self movingLine stopStepping. "

	self assert: (d position) = ((self timeline width - 25)@ self timeline trackHeight). 


		
	


