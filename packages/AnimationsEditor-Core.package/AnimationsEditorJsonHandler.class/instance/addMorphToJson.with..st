saveJson
addMorphToJson: aJsonStructure with: aTreeNode
	| MorphJson originMorph |
	
	originMorph := aTreeNode copyOfTargetMorph. 
	MorphJson := self createStartInformation: originMorph. 	
    	MorphJson add: #frames -> (self createFrameCollection: aTreeNode).
	aJsonStructure add: #morphs -> {MorphJson}.
	
	^ aJsonStructure.