loadJson
testLoadImage
	| morphProperty |
	
	self loadImageSetUp. 
	morphProperty := self animationsEditorInstance propertyList third.
	self jsonHandler loadFrames: self loadImageData with: morphProperty.
	self assert: ((morphProperty subproperties at: 'imageSource') targetValues at: 500) = 'cat1.png'.
	self assert: ((morphProperty subproperties at: 'imageSource') targetValues at: 1000) = 'cat2.png'.
	self loadTextAndImageTearDown. 