initialize-release
testLoadJsonDefaultMorph
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := animationsEditorInstance createMorphFromString: 'AnimationsEditorKlippschliefer'.
	self assert: morph class = Morph.
	animationsEditorInstance windowReference abandon.