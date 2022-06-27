loadJson
testLoadColor
	| morphProperty |
	
	morphProperty := self animationsEditorInstance propertyList second.
	self jsonHandler loadFrames: self loadColorData with: morphProperty.
	self assert: ((morphProperty subproperties at: 'color') targetValues at: 500) asString = 'Color blue'.
	self assert: ((morphProperty subproperties at: 'color') targetValues at: 1000) asString = 'Color lightGray'.