testing
testMovingLineStoppedAtEndMargin
|movingLine|
	movingLine:= Morph new  extent: 3@100;
				color: Color black;
				position: self startMargin @self timeline trackHeight.
	1000 timesRepeat: [self moveMovingLine: movingLine]. 
	self assert: (movingLine position) = ((self timeline width - self endMargin)@ self timeline trackHeight). 


		
	


