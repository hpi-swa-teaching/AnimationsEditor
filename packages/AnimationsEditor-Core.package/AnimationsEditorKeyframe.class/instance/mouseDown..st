as yet unclassified
mouseDown: anEvent
	anEvent redButtonPressed 
		ifTrue: [
			self setValueAndFrame.
			self animationsEditor selectedTreeNode: self selectProperty.
		].