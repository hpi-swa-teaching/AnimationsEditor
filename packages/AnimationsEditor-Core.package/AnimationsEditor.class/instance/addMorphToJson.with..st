saveJson
addMorphToJson: aJsonStructure with: aTreeNode
	| frame MorphJson originMorph |
	
	originMorph := aTreeNode copyOfTargetMorph. 
	MorphJson := self createStartInformation: originMorph. 
    	frame := ((self addFrame: aTreeNode) at: aTreeNode title asSymbol) value.
    	MorphJson add: #frames -> {frame}.
	aJsonStructure add: #morphs -> {MorphJson}.
	
	^ aJsonStructure.