updating
update: aStartEndProperty 
	self updateExtent.
	self startTime: aStartEndProperty startTime.
	self endTime: aStartEndProperty endTime.
	self createTracks.
	self addTimebar.