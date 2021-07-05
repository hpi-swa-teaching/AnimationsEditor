saveJson
createFrameCollection: aTreeNode
	| frameCollection frame |
	
	frameCollection := #(). 
	aTreeNode targetValues keysAndValuesDo: [:aKey :aValue | 
		frame := ((self addFrameAt: aKey with: aValue ) at: aTreeNode title asSymbol) value.
		frameCollection := frameCollection, {frame}. 
	]. 	
	
	^ frameCollection. 