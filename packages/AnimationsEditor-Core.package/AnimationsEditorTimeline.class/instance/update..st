updating
update: anObject 
	self updateExtent.
	self startTime: anObject startTime.
	self endTime: anObject endTime.
	self createTracks.
	self addTimebar.