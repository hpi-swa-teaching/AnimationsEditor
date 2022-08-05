testing
testZeroDurationAtStart
	self assert: self timebar duration contents = (self timebar getDurationString: 0).