updating
update: aStartEndProperty 
	self startTime: aStartEndProperty startTime.
	self endTime: aStartEndProperty endTime.	
	self updateExtent.
	self createTracks.
	self addTimebar.