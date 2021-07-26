loadJson
testLoadSize
	| data morphProperty |
	
	data := {{'frame' -> 500. 'properties' -> {{'value' -> 50. 'name' -> 'width'} as: Dictionary. {'value' -> 40. 'name' -> 'height'} as: Dictionary}} as: Dictionary. {'frame' -> 1000. 'properties' -> {{'value' -> 87. 'name' -> 'width'} as: Dictionary. {'value' -> 500. 'name' -> 'height'} as: Dictionary}} as: Dictionary} as: Array.
	
	morphProperty := self animationsEditorInstance propertyList second.
	self jsonHandler loadFrames: data with: morphProperty.
	self assert: ((morphProperty subproperties at: 'size') targetValues at: 500) = (50 @ 40).
	self assert: ((morphProperty subproperties at: 'size') targetValues at: 1000) = (87 @ 500).