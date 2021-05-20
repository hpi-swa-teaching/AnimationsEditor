initialize-release
testLoadJsonStartEnd
	| animationsEditorInstance data |
	
	animationsEditorInstance := AnimationsEditor open.
	data := {'end' -> 500 . 'start' -> 0} as: Dictionary.
	animationsEditorInstance loadStartEnd: data.
	self assert: animationsEditorInstance propertyList first startTime = 0.
	self assert: animationsEditorInstance propertyList first endTime = 500.
	animationsEditorInstance windowReference abandon.