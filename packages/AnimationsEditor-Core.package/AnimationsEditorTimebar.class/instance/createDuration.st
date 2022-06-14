initialization
createDuration

	self deleteDuration.
	self initializeDuration. 
	self duration acceptValue: (self getDurationString: self endTime).
	self duration comeToFront.