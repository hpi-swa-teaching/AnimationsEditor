loadJson
testLoadStartEndTime
	self jsonHandler loadStartEnd: self loadStartEndTimeData.
	self assert: self animationsEditorInstance propertyList first startTime = 0.
	self assert: self animationsEditorInstance propertyList first endTime = 500.