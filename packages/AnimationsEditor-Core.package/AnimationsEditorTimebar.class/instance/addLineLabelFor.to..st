updating
addLineLabelFor: aFrame to: aPosition
| label |
	
	label := StringMorph new.
	label contents: aFrame.
	label position: aPosition.
	label fontName: 'default' size: 13.
	self addMorph: label.