eventHandling
handleLoadJsonButton
	| path |
	path := UIManager default chooseFileMatching: '*.json'.
	path isString
		ifTrue: [self loadJsonWithExceptionHandling: (FileStream fileNamed: path) contents].
	