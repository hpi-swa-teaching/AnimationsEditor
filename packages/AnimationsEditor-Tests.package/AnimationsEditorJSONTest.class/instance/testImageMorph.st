loadJson
testImageMorph
	| morph |
	
	morph := self animationsEditorInstance createMorphFromString: 'ImageMorph'.
	self assert: morph class = ImageMorph.