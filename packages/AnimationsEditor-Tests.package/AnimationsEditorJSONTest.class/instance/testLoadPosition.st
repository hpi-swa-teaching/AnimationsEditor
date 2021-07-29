loadJson
testLoadPosition
	| morphProperty |
	
	morphProperty := self animationsEditorInstance propertyList second.
	self jsonHandler loadFrames: self loadPositionData with: morphProperty.
	self assert: ((morphProperty subproperties at: 'position') targetValues at: 500) = (48 @ 104).
	self assert: ((morphProperty subproperties at: 'position') targetValues at: 1000) = (3 @ 42).