saveJson
saveToJson: aTreeNode
	| jsonStructure jsonString |
	
	jsonStructure := self createStructure: self propertyStartEnd startTime with: self propertyStartEnd endTime.
	jsonStructure := self addMorphToJson: jsonStructure with: aTreeNode.
	
	jsonString := self dictionaryToJson: jsonStructure.
	
	self writeJsonToFile: jsonString with: self outputFileDirectory. 
	