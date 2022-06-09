testing
testMovingLineInRightPosition
| movingLine |

	movingLine:= Morph new  extent: 3@100;
				color: Color black;
				position: 105@25.
	5 timesRepeat: [self moveMovingLine: movingLine]. 
	Transcript show: movingLine position x.
	movingLine comeToFront.
	

	Transcript show: ' '.
	Transcript show: ((self timeline width - 130)/2+105). 
	self assert: ((movingLine position x) between:   ((self timeline width - 130)/2+105 - (5*self inaccuracyFactor)) and:  ((self timeline width - 130)/2+105)).


		
	


