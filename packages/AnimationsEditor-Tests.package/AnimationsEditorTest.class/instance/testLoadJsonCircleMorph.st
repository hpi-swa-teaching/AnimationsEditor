initialize-release
testLoadJsonCircleMorph
	| animationsEditorInstance morph |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := animationsEditorInstance createMorphFromString: 'CircleMorph'.
	self assert: morph class = CircleMorph.
	animationsEditorInstance windowReference abandon.