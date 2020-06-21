accessing
emptyPanels
	emptyPanels
		ifNil: [emptyPanels := OrderedCollection new].
	
	^ emptyPanels.