as yet unclassified
addMorphFromSpec: aDictionary 
	| morph morphProperty |
	morph := (self createMorphFromString: (aDictionary at: 'type')) openInWorld.
	self loadStartProperties: (aDictionary at: 'properties') with: morph.
	morphProperty := self addTargetMorph: morph.
	self loadFramesFromJSON: (aDictionary at: 'frames') with: morphProperty.
	
	
			
	