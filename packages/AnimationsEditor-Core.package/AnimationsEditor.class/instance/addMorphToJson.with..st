saveJson
addMorphToJson: aJsonStructure with: aTreeNode
	| frame MorphJson |
	
	MorphJson := self createStartInformation: aTreeNode. 
    	frame := ((self addFrame: aTreeNode) at: aTreeNode title asSymbol) value.
    	MorphJson add: #frames -> {frame}.
	aJsonStructure add: #morphs -> {MorphJson}.
	
	^ aJsonStructure.