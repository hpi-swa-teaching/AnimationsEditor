as yet unclassified
testEndTimeGetter
	| p |
	p := AnimationsEditorPropertyStartEnd new.
	
	self assert: (p endTime = p defaultEndTime).
