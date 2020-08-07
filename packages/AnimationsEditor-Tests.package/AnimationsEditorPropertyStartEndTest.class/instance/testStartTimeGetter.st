as yet unclassified
testStartTimeGetter
	| p |
	p := AnimationsEditorPropertyStartEnd new.
	
	self assert: (p startTime = p defaultStartTime).
