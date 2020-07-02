accessing
endTimeAsString
	endTime
		ifNil: [endTime := 0].
	^ endTime asString.