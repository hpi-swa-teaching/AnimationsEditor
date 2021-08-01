saveJson
testAddPositionFrame
	| jsonFrame testFrame aPosition |
	
	aPosition := 100 @ 200. 
	jsonFrame := self jsonHandler addPositionFrameAt: self defaultTime with: aPosition. 
	testFrame := self positionFrameDictionary. 
	self assert: jsonFrame equals: testFrame.