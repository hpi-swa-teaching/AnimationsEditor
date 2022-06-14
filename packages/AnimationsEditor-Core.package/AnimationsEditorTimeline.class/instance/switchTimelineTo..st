creation
switchTimelineTo: aProperty 
Transcript show: self endTime.
	self updateExtent.
	self property: aProperty.
	self createTracks.
	self addTimebar.