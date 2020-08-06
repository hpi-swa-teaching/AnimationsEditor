accessing
targetSize
	targetSize 
		ifNil: [self targetSize: self defaultTargetSize].
		
	^ targetSize.