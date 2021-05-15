initialize-release
testLoadJsonRectangleMorph
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := animationsEditorInstance createMorphFromString: 'RectangleMorph'.
	self assert: morph class = RectangleMorph.
	animationsEditorInstance windowReference abandon.