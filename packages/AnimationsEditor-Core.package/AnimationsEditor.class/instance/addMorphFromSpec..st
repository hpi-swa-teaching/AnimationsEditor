as yet unclassified
addMorphFromSpec: aDictionary 
	| morph |
	morph := (self createMorphFromString: (aDictionary at: 'type')) openInWorld.
	(aDictionary at: 'properties')
		do: [:each | (self propertiesDictionary at: (each at: 'name') asSymbol)
				value: morph
				value: (each at: 'value')].
	self addTargetMorph: morph.