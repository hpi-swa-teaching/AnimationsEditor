testing
testMovingLineInRightPosition

	self timeline createMovingLine.
	self movingLine: self timeline movingLine.
	self
		should: self movingLine position rounded = (self movingLine startMargin @ self timeline trackHeight);
		wait: 250;
		assert: (self movingLine position x rounded between: (self movingLine startMargin + 249) and:  (self movingLine startMargin + 251));
		wait: 250;
		assert: (self movingLine position x rounded between: (self movingLine startMargin + 499) and:  (self movingLine startMargin + 501));
		wait: 250;
		assert: (self movingLine position x rounded between: (self movingLine startMargin + 749) and:  (self movingLine startMargin + 751)).


		
	


