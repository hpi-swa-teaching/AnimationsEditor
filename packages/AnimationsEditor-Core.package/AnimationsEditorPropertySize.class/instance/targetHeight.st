accessing
targetHeight
	targetSize
		ifNil: [targetSize := (42@42)].
		
	^ targetSize y asString.