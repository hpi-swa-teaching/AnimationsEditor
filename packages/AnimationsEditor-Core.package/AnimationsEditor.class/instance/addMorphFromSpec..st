loadJson
addMorphFromSpec: aDictionary 
	| morph morphProperty |
	morph := (self createMorphFromString: (aDictionary at: 'type')) openInWorld.
	self loadStartProperties: (aDictionary at: 'properties') with: morph.
	morphProperty := self addTargetMorph: morph.
	self loadFrames: (aDictionary at: 'frames') with: morphProperty.
	
	
			
	