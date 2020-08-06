accessing
emptyPanels
	emptyPanels
		ifNil: [self emptyPanels: OrderedCollection new].
	
	^ emptyPanels.