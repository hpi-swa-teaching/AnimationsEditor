initialize-release
testLoadJsonCircleMorph
	| morph |
	
	morph := self animationsEditorInstance createMorphFromString: 'CircleMorph'.
	self assert: morph class = CircleMorph.