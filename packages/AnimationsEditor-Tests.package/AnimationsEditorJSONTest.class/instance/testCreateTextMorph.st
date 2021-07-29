loadJson
testCreateTextMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'TextMorph'.
	self assert: morph class = TextMorph.