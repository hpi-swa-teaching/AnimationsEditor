loadJson
testLoadRotation
	| data morphProperty |
	
	data := {{'frame' -> 500. 'properties' -> {{'value' -> 40. 'name' -> 'rotation'} as: Dictionary}} as: Dictionary. {'frame' -> 1000. 'properties' -> {{'value' -> 80. 'name' -> 'rotation'} as: Dictionary}} as: Dictionary} as: Array.
	
	morphProperty := self animationsEditorInstance propertyList second.
	self jsonHandler loadFrames: data with: morphProperty.
	self assert: ((morphProperty subproperties at: 'rotation') targetValues at: 500) = 40.
	self assert: ((morphProperty subproperties at: 'rotation') targetValues at: 1000) = 80.