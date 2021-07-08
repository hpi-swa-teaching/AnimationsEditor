eventHandling
openFileSelection
	self currentValue: (UIManager default chooseFileMatching: '*').
	self changed: #currentValue.