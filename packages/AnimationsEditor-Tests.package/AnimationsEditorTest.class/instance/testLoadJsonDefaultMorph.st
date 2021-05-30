initialize-release
testLoadJsonDefaultMorph
	| morph |
	
	morph := self animationsEditorInstance createMorphFromString: 'AnimationsEditorKlippschliefer'.
	self assert: morph class = Morph.