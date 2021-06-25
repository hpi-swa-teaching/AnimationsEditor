loadJson
testLoadStartEnd
	| data |
	
	data := {'end' -> 500 . 'start' -> 0} as: Dictionary.
	self animationsEditorInstance loadStartEnd: data.
	self assert: self animationsEditorInstance propertyList first startTime = 0.
	self assert: self animationsEditorInstance propertyList first endTime = 500.