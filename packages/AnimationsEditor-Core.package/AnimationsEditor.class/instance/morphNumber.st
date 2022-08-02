accessing
morphNumber
	morphNumber
		ifNil:[self morphNumber: self initialMorphNumber].
	
	^ morphNumber.