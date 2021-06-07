eventHandling
openFileSelection
	self targetSource: (UIManager default chooseFileMatching: '*').
	self changed: #targetSource.