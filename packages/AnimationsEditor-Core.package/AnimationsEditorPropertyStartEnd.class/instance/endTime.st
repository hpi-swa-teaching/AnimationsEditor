accessing
endTime
	endTime
		ifNil: [endTime := 500].
	^ endTime asNumber.