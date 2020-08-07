as yet unclassified
testStartTimeSetter
	| p testStartTime |
	p := AnimationsEditorPropertyStartEnd new.
	
	testStartTime := 200.
	p startTime: testStartTime.
	
	self assert: (p startTime = testStartTime).
