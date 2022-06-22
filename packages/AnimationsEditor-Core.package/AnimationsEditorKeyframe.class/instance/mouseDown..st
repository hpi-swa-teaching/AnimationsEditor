as yet unclassified
mouseDown: anEvent
	anEvent redButtonPressed 
		ifTrue: [self animationsEditor selectedTreeNode: self selectedProperty].