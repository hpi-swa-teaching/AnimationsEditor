testing
testZeroDurationAtStart
	Transcript show: self timeline timebar duration contents; cr.

	self assert: self timeline timebar duration contents = self defaultDurationString.