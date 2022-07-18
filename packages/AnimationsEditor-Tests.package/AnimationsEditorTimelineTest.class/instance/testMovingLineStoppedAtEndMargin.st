testing
testMovingLineStoppedAtEndMargin
	self timeline createMovingLine.
	self movingLine: self timeline movingLine.
	self
		wait: 1500;
		should: self movingLine position x = (self movingLine startMargin + 1000).


		
	


