loadJson
testDefaultMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'AnimationsEditorKlippschliefer'.
	self assert: morph class = Morph.