saveJson
testAddSizeFrame
	| jsonFrame testFrame anExtent |
	
	anExtent := 100 @ 200. 
	jsonFrame := self jsonHandler addSizeFrameAt: self defaultTime with: anExtent. 
	testFrame := self sizeFrameDictionary. 
		
	self assert: jsonFrame equals: testFrame.