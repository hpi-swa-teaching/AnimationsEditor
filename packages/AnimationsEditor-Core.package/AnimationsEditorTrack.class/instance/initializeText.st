initialization
initializeText
	| text positionX offset |
	
	offset := 5. 
	text := StringMorph new
		contents: self property title;			
		font: (StrikeFont familyName: 'Arial' pointSize: 9);
		yourself.
	positionX := text width / 2 + offset. 
	text center: positionX @ self center y.
	self addMorph: text.