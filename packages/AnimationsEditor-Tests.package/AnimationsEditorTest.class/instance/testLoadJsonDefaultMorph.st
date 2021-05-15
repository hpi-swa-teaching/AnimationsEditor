initialize-release
testLoadJsonDefaultMorph
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := animationsEditorInstance createMorphFromString: 'Klippschliefer'.
	self assert: morph class = Morph.
	animationsEditorInstance windowReference abandon.