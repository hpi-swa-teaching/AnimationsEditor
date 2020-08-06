accessing
endTime
	endTime
		ifNil: [self endTime: self defaultEndTime].
	
	^ endTime asNumber.