loadJson
testMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'Morph'.
	self assert: morph class = Morph.