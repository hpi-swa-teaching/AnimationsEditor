saveJson
testAddMorphToJson
	| aJsonStructure aDictionary anEntry |
	
	aDictionary := Dictionary
		with: #morphs -> {}. 
	aJsonStructure := self animationsEditorInstance addMorphToJson: aDictionary with: self colorTreeNode.  
	anEntry := (aJsonStructure at: #morphs) first. 
	 
	self assert: (aJsonStructure at: #morphs) size > 0. 
	self assert: (anEntry at: #properties) size > 0. 
	