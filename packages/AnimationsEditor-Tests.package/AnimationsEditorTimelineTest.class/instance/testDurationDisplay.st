testing
testDurationDisplay
	| increasedDuration increasedDurationString decreasedDuration decreasedDurationString |
	
	increasedDuration := 3000.
	increasedDurationString := 'Duration: 3.0 s'.
	decreasedDuration := 500.
	decreasedDurationString := 'Duration: 0.5 s'.
	self animationsEditorInstance propertyStartEnd endTime: increasedDuration.
	self assert: increasedDurationString = self timeline timebar duration contents.
	self animationsEditorInstance propertyStartEnd endTime: decreasedDuration.
	self assert: decreasedDurationString = self timeline timebar duration contents.