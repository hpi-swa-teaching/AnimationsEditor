events
mouseDown: anEvent
	anEvent redButtonPressed 
		ifTrue: [self setValueAndFrame.
			self animationsEditor selectedTreeNode: self property].