as yet unclassified
testEndTimeGetterAsString
	| p |
	p := AnimationsEditorPropertyStartEnd new.
	
	self assert: (p endTimeAsString = p defaultEndTime asString).
