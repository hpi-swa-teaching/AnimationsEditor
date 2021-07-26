eventHandling
addSubPropertiesOn: aProperty.
	aProperty targetMorph isImageMorph
		ifTrue: [^ self addPropertiesToImageMorphOn: aProperty].
	aProperty targetMorph isTextMorph
		ifTrue: [^ self addPropertiesToTextMorphOn: aProperty].
	self addPropertiesToMorphOn: aProperty.