as yet unclassified
testPositionAccessors
	| property |
	
	property := AnimationsEditorPropertyStartEnd new.
	property startTime: 4242.
	property endTime: 29387.
	
	self assert: (property startTime = 4242).
	self assert: (property startTimeAsString = '4242').
	self assert: (property endTime = 29387).
	self assert: (property endTimeAsString = '29387').
	