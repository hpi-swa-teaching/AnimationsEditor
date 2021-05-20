eventHandling
handleLoadJsonButton
	| path |
	path := UIManager default chooseFileMatching: '*.json'.
	path isString
		ifTrue: [self loadJson: (FileStream fileNamed: path) contents].
	