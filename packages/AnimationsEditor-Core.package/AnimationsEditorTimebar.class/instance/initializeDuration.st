initialization
initializeDuration
	self
		duration: StringMorph new;
		addMorph: self duration.
	self duration 
		position: 5 @ 7;
		fontName: ('Bitmap DejaVu Sans') pointSize: 9;
		color: Color black.
	