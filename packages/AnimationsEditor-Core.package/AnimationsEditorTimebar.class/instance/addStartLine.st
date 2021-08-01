updating
addStartLine
	| startPoint endPoint |
	
	startPoint := self startMargin @ self height.
	endPoint := self startMargin @ (self height - self startEndLineHeight). 
	self addLineFrom: startPoint to: endPoint.