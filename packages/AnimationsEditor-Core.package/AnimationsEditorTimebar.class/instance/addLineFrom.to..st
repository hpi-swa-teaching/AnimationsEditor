updating
addLineFrom: aStartPoint to: anEndPoint 
	| line |
	
	line := LineMorph
				from: aStartPoint
				to: anEndPoint
				color: Color black
				width: self lineWidth.
	self addMorph: line.