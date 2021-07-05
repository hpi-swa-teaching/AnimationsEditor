saveJson
testAddColorFrame
	| jsonFrame testFrame |
	
	jsonFrame := self jsonHandler addColorFrameAt: self defaultTime with: Color red. 
	testFrame := self colorFrameDictionary. 
	self assert: jsonFrame equals: testFrame.