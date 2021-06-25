loadJson
testMorph
	| morph |
	
	morph := self animationsEditorInstance createMorphFromString: 'Morph'.
	self assert: morph class = Morph.