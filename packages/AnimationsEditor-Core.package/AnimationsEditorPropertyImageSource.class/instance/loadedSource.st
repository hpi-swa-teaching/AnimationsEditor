accessing
loadedSource
	loadedSource
		ifNil: [self loadedSource: self defaultTargetSource].

	 ^ loadedSource.