updating
addEndLine
	| startPoint endPoint positionX |
	
	positionX := self startMargin + self lineSegmentWidth. 
	startPoint := positionX @ self height. 
	endPoint := positionX @ (self height - self startEndLineHeight). 
	self addLineFrom: startPoint to: endPoint.