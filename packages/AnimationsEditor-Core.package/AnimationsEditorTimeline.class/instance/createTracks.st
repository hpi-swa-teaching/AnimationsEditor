creation
createTracks
	self deleteTracks.
	self property ifNotNil: [self addActivatedTracks].