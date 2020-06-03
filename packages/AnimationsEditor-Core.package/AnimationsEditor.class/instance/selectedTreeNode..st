initialize-release
selectedTreeNode: aNode
	selectedTreeNode := aNode.
	
	aNode class = AnimationsEditorProperty
		ifFalse:[ self insertMorph: (aNode buildUIWith: toolBuilder) To: propertyEditorPanel.]