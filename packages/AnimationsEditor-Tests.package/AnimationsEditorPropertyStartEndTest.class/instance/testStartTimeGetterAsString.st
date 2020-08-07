as yet unclassified
testStartTimeGetterAsString
	| p |
	p := AnimationsEditorPropertyStartEnd new.
	
	self assert: (p startTimeAsString = p defaultStartTime asString).
