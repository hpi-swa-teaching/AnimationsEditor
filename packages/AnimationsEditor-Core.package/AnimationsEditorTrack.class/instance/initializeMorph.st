initialization
initializeMorph
	| panel |
	
	panel := RectangleMorph new.
		panel 
			position: self textMargin @ self position y;
			extent: self width - self textMargin @ self height.
		self addMorph: panel.