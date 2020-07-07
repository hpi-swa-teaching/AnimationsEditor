accessing
targetWidth
	targetSize
		ifNil: [targetSize := (42@42)].
		
	^ targetSize x asString.