loadJson
testLoadSize
	| morphProperty |
	
	morphProperty := self animationsEditorInstance propertyList first.
	self jsonHandler loadFrames: self loadSizeData with: morphProperty.
	self assert: ((morphProperty subproperties at: 'size') targetValues at: 500) = (50 @ 40).
	self assert: ((morphProperty subproperties at: 'size') targetValues at: 1000) = (87 @ 500).