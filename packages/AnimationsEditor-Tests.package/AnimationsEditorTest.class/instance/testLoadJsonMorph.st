initialize-release
testLoadJsonMorph
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := animationsEditorInstance createMorphFromString: 'Morph'.
	self assert: morph class = Morph.
	animationsEditorInstance windowReference abandon.