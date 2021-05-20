saveJson
testAddColorFrame
	| jsonFrame aTreeNode testFrame |
	
	aTreeNode := self colorTreeNode. 
	jsonFrame := self animationsEditorInstance addColorFrame: aTreeNode.
	testFrame := self colorFrameDictionary. 
	
	self assert: jsonFrame equals: testFrame.