accessing
endTime
	endTime
		ifNil: [self endTime: 500].
	
	^ endTime asNumber.