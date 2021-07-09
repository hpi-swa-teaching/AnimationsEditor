saveJson
createFrameCollection: aTreeNode 
	| frameCollection frame |
	
	frameCollection := #().
	aTreeNode subproperties
		do: [:each | each targetValues
				keysAndValuesDo: [:aKey :aValue | 
					frame := ((self addFrameAt: aKey with: aValue) at: each title asSymbol) value.
					frameCollection := frameCollection , {frame}]].

	^ frameCollection