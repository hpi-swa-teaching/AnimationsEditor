accessing
initializeTrack
	| text panel |
	
	text := StringMorph new
		contents: self property title;
		yourself.
	text center: ((text width/2)+10 @ (self center y)).
	self addMorph: text.
	
	panel := RectangleMorph new.
	panel 
		position: 75 @ self position y;
		extent: self width - 75 @ self height.
	self addMorph: panel.
			
	
	
	