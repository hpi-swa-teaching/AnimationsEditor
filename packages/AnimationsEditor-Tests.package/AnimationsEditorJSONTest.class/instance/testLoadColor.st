loadJson
testLoadColor
	| data morphProperty |
	
	data := {{'frame' -> 500 . 'properties' -> {{'value' -> 'blue' . 'name' -> 'color'} as: Dictionary}} as: Dictionary . {'frame' -> 1000 . 'properties' -> {{'value' -> 'lightGray' . 'name' -> 'color'} as: Dictionary}} as: Dictionary} as: Array.
	
	morphProperty := self animationsEditorInstance propertyList second.
	self jsonHandler loadFrames: data with: morphProperty.
	self assert: ((morphProperty subproperties at: 'color') targetValues at: 500) asString = 'Color blue'.
	self assert: ((morphProperty subproperties at: 'color') targetValues at: 1000) asString = 'Color lightGray'.