creation
switchTimelineTo: aProperty 
	self 
		updateExtent;
		property: aProperty;
		createTracks;
		addTimebar;
		updateStartEndProperty.
