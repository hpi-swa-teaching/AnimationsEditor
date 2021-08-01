saveJson
saveToJson: aTreeNode 
	| jsonStructure jsonString propertyStartEnd |
	
	propertyStartEnd := self animationsEditor propertyStartEnd.
	jsonStructure := self createStructure: propertyStartEnd startTime with: propertyStartEnd endTime.
	jsonStructure := self addMorphToJson: jsonStructure with: aTreeNode.
	jsonString := self dictionaryToJson: jsonStructure.
	self writeJsonToFile: jsonString with: self outputFileDirectory.