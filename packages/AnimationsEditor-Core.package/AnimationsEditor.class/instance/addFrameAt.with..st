saveJson
addFrameAt: aTime with: aValue 

	^ { #Position -> [self addPositionFrameAt: aTime with: aValue ]. 
		#Color -> [self addColorFrameAt: aTime with: aValue ].
		#Rotation -> [self addRotationFrameAt: aTime with: aValue ]. 
		#Size -> [self addSizeFrameAt: aTime with: aValue ].
		#'Image Source' ->  [self addImageSourceFrameAt: aTime with: aValue ].  } as: IdentityDictionary.