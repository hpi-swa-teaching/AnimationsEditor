saveJson
testAddColorFrame
	| jsonFrame testFrame |
	
	jsonFrame := self animationsEditorInstance addColorFrameAt: self defaultTime with: Color red. 
	testFrame := self colorFrameDictionary. 
	
	self assert: jsonFrame equals: testFrame.