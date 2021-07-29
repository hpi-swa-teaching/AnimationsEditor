saveJson
testAddImageSourceFrame
	| jsonFrame testFrame |
	
	jsonFrame := self jsonHandler addImageSourceFrameAt: self defaultTime with: 'dummy.png'. 
	testFrame := self imageFrameDictionary. 
	self assert: jsonFrame equals: testFrame.