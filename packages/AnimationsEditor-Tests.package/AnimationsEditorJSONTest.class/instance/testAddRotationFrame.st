saveJson
testAddRotationFrame
	| jsonFrame testFrame aRotationDegree|
	
	aRotationDegree := 20. 
	jsonFrame := self jsonHandler addRotationFrameAt: self defaultTime with: aRotationDegree. 
	testFrame := self rotationFrameDictionary. 
		
	self assert: jsonFrame equals: testFrame.