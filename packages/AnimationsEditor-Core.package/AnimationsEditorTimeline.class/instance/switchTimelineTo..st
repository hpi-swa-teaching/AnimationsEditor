creation
switchTimelineTo: aProperty 
	self updateExtent.
	self property: aProperty.
	self createTracks.
	self addTimebar.