accessing
emptyPanels
	emptyPanels
		ifNil: [self emptyPanels: self defaultEmptyPanels].
	^ emptyPanels.