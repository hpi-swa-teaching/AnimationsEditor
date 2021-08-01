loadJson
testCreateDefaultMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'AnimationsEditorKlippschliefer'.
	self assert: morph class = Morph.