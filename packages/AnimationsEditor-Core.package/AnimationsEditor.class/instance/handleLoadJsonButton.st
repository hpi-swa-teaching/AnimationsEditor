eventHandling
handleLoadJsonButton
	| path |
	
	path := UIManager default chooseFileMatching: '*.json'.
	path isString
		ifTrue: [self loadJsonWithExceptionHandling: (FileStream readOnlyFileNamed: path) contents].