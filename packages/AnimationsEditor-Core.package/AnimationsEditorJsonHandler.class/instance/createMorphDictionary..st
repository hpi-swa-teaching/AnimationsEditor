saveJson
createMorphDictionary: aMorph
	
	^ Dictionary
		with: #type -> aMorph class asString.