accessing
targetFrame

	targetFrame
		ifNil: [self targetFrame: self defaultFrame].
	
	^ targetFrame.