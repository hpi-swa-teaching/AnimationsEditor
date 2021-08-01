saveJson
addMorphToJson: aJsonStructure with: aTreeNode 
	| MorphJson |
	
	MorphJson := self createMorphDictionary: aTreeNode targetMorph.
	MorphJson add: #frames
			-> (self createFrameCollection: aTreeNode).
	aJsonStructure add: #morphs -> {MorphJson}.
	^ aJsonStructure.