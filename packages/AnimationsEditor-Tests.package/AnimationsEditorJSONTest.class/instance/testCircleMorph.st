loadJson
testCircleMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'CircleMorph'.
	self assert: morph class = CircleMorph.