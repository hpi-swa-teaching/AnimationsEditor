updating
update: aStartEndProperty 
	self startTime: aStartEndProperty startTime.
	self endTime: aStartEndProperty endTime.	
	self updateExtent.
	self createTracks.
	Transcript show: 'update'.
	self addTimebar.
