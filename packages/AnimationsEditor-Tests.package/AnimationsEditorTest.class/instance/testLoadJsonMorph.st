initialize-release
testLoadJsonMorph
	| morph |
	
	morph := self animationsEditorInstance createMorphFromString: 'Morph'.
	self assert: morph class = Morph.