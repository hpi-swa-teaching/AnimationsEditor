testing
testMovingLineInitializedInRightPosition
	self timeline createMovingLine.
	self movingLine: self timeline movingLine.
	self assert: (self movingLine position ) = (self movingLine startMargin @ self timeline trackHeight).