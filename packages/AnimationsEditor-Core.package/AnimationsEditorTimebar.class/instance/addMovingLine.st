updating
addMovingLine
	| line |	
	
	line := LineMorph
				from: 105@25
				to: 105@125
				color: Color black
				width: self lineWidth.
	self movingLine: line.
	self addMorph: line.