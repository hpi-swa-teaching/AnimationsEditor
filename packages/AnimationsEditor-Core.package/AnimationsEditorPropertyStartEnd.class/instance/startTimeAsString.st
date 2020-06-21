accessing
startTimeAsString
	startTime
		ifNil: [startTime := 0].
	^ startTime asString.