saveJson
testAddRotationFrame
	| jsonFrame aTreeNode testFrame |
	
	aTreeNode := self rotationTreeNode.
	jsonFrame := self animationsEditorInstance addRotationFrame: aTreeNode.
	testFrame := self rotationFrameDictionary. 
		
	self assert: jsonFrame equals: testFrame.