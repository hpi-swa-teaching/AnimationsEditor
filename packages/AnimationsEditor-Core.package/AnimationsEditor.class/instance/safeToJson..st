safeJson
safeToJson: aTreeNode
	| jsonStructure jsonString |
	
	jsonStructure := self createStructureWith: self propertyStartEnd startTime and: self propertyStartEnd endTime.
	jsonStructure := self addMorphToJsonWith: jsonStructure and: aTreeNode.
	
	jsonString := self dictionaryToJson: jsonStructure.

	self writeJsonToFile: jsonString with: 'testColor'.
	