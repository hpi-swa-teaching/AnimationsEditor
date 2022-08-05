updating
update: aStartEndProperty 
	self 
		startTime: aStartEndProperty startTime;
		endTime: aStartEndProperty endTime;
		updateExtent;
		createTracks;
		addTimebar.
