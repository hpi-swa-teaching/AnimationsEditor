as yet unclassified
testEndTimeSetter
	| p testEndTime |
	p := AnimationsEditorPropertyStartEnd new.
	
	testEndTime := 500.
	p endTime: testEndTime.
	
	self assert: (p endTime = testEndTime).
