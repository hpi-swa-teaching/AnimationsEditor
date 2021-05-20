saveJson
testAddPositionFrame
	| jsonFrame aTreeNode testFrame |
	
	aTreeNode := self positionTreeNode. 
	jsonFrame := self animationsEditorInstance addPositionFrame: aTreeNode.
	testFrame := self positionFrameDictionary. 
		
	self assert: jsonFrame equals: testFrame.