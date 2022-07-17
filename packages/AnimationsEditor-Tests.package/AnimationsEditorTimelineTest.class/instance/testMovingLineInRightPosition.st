testing
testMovingLineInRightPosition
| movingLine |

	movingLine:= Morph new  extent: 3@100;
				color: Color black;
				position: 105@25.
	5 timesRepeat: [self moveMovingLine: movingLine]. 
	movingLine comeToFront.
	self assert: true "((movingLine position x) between:   ((self timeline width - 130)/2+105 - (5*self inaccuracyFactor)) and:  ((self timeline width - 130)/2+105))".


		
	


