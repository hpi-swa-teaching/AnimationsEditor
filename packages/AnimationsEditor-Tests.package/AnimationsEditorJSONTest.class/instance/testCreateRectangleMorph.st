loadJson
testCreateRectangleMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'RectangleMorph'.
	self assert: morph class = RectangleMorph.