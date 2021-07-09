saveJson
testAddMorphToJson
	| aJsonStructure aDictionary anEntry |
	
	aDictionary := Dictionary
		with: #morphs -> {}. 
	aJsonStructure := self jsonHandler addMorphToJson: aDictionary with: self positionTreeNode.  
	anEntry := (aJsonStructure at: #morphs) first. 

	self assert: (aJsonStructure at: #morphs) size > 0.
	