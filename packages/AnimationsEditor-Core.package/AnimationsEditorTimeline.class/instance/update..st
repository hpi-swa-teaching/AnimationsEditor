updating
update: anObject 

	self startTime: anObject startTime.
	self endTime: anObject endTime.
	self createTracks.
	self addTimebar.
	self owner owner addDependent: self.
	self updateExtent.