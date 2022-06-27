loadJson
testLoadRotation
	| morphProperty |
	
	morphProperty := self animationsEditorInstance propertyList second.
	self jsonHandler loadFrames: self loadRotationData with: morphProperty.
	self assert: ((morphProperty subproperties at: 'rotation') targetValues at: 500) = 40.
	self assert: ((morphProperty subproperties at: 'rotation') targetValues at: 1000) = 80.