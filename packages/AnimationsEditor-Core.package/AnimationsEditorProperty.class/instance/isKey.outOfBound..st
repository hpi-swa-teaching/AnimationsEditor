accessing
isKey: aNumber outOfBound: aStartEndProperty

	^ aNumber <= aStartEndProperty endTime and: [aNumber >= aStartEndProperty startTime].