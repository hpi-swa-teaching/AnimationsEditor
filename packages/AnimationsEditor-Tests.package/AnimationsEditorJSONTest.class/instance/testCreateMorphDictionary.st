saveJson
testCreateMorphDictionary
	| json |
	
	json := self jsonHandler createMorphDictionary: self dummyProperty targetMorph. 
	self assert: (json at: #type) = 'Morph'. 
	
	