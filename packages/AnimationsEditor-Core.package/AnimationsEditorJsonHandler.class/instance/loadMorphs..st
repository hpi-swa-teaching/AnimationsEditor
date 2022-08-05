loadJson
loadMorphs: anArray
	anArray do: [ :each | 
		self addMorphFromSpec: each].