loadJson
addMorphFromSpec: aDictionary 
	| morph morphProperty |
	
	morph := (self createMorphFromString: (aDictionary at: 'type')) openInWorld.
	morphProperty := self animationsEditor addTargetMorph: morph.
	self loadFrames: (aDictionary at: 'frames') with: morphProperty.
