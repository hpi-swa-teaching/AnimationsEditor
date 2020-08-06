accessing
startTime
	startTime
		ifNil: [self startTime: self defaultStartTime].
		
	^ startTime asNumber.