creation
switchTimelineTo: aProperty
	
	self property: aProperty.
	self createTracks. 
	self addTimebar. 