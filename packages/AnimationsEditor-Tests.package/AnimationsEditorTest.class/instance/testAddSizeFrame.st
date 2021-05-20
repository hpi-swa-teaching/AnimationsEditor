saveJson
testAddSizeFrame
	| jsonFrame aTreeNode testFrame |
	
	aTreeNode := self sizeTreeNode. 
	jsonFrame := self animationsEditorInstance addSizeFrame: aTreeNode.
	testFrame := self sizeFrameDictionary. 
		
	self assert: jsonFrame equals: testFrame.