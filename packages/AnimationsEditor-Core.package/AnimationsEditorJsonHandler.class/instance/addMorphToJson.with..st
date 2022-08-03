saveJson
addMorphToJson: aJsonStructure with: aTreeNode 
	| morphJson |
	
	morphJson := self createMorphDictionary: aTreeNode targetMorph.
	morphJson add: #frames
			-> (self createFrameCollection: aTreeNode).
	aJsonStructure add: #morphs -> {morphJson}.
	^ aJsonStructure.