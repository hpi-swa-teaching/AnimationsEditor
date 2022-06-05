updating
addMovingLine
	| line |	
	"self movingLine: (self addLineFrom: 105@25 to: 105@125)."
	
	line := LineMorph
				from: 105@25
				to: 105@125
				color: Color black
				width: self lineWidth.
	self movingLine: line.
	self addMorph: line.