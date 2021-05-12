safeJson
addFrame: aTreeNode

	^ { #Position -> [self addPositionFrame: aTreeNode]. 
		#Color -> [self addColorFrame: aTreeNode].
		#Rotation -> [self addRotationFrame: aTreeNode]. 
		#Size -> [self addSizeFrame: aTreeNode]. } as: IdentityDictionary.