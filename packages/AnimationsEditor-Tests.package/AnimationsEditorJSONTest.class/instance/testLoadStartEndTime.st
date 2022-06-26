loadJson
testLoadStartEndTime
	self jsonHandler loadStartEnd: self loadStartEndTimeData.
	self assert: self animationsEditorInstance propertyStartEnd startTime = 0.
	self assert: self animationsEditorInstance propertyStartEnd endTime = 1000.