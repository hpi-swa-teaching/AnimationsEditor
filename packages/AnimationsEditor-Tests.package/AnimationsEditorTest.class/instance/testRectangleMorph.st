loadJson
testRectangleMorph
	| morph |
	
	morph := self animationsEditorInstance createMorphFromString: 'RectangleMorph'.
	self assert: morph class = RectangleMorph.