safeJson
addFrame: aTreeNode

	^ { #Position -> [self addPositionFrame: aTreeNode]. 
		#Color -> [self addColorFrame].
		#Rotation -> [self addRotationFrame]. 
		#Size -> [self addSizeFrame]. } as: IdentityDictionary.