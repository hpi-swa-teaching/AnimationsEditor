accessing
selectedTreeNode: aNode
	selectedTreeNode := aNode.
	
	aNode class = AnimationsEditorProperty
		ifFalse: [self insertMorph: (aNode buildUIWith: toolBuilder)
						 Into: self propertyEditorPanel].