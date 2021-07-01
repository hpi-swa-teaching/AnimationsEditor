initialization
initializeText
	| text |
	
	text := StringMorph new
		contents: self property title;
		yourself.
	text center: ((text width/2)+10 @ (self center y)).
	self addMorph: text.