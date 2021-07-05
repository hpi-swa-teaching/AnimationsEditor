loadJson
testImageMorph
	| morph |
	
	morph := self jsonHandler createMorphFromString: 'ImageMorph'.
	self assert: morph class = ImageMorph.