loadJson
testLoadText
	| morphProperty |
		
	self loadTextSetUp.
	morphProperty := self animationsEditorInstance propertyList third.
	self jsonHandler loadFrames: self loadTextData with: morphProperty.
	self assert: ((morphProperty subproperties at: 'text') targetValues at: 500) = 'Klippschliefer'.
	self assert: ((morphProperty subproperties at: 'text') targetValues at: 1000) = 'Klippenadler'.
	self loadTextAndImageTearDown. 
	