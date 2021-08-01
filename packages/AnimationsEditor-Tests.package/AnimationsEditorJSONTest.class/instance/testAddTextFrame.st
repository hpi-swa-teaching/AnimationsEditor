saveJson
testAddTextFrame
	| jsonFrame testFrame |
	
	jsonFrame := self jsonHandler addTextFrameAt: self defaultTime with: 'abc'. 
	testFrame := self textFrameDictionary. 
	self assert: jsonFrame equals: testFrame.