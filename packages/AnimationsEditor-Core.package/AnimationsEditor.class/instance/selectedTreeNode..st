initialize-release
selectedTreeNode: aNode
	selectedTreeNode := aNode.
	aNode class = AnimationsEditorProperty
		ifFalse:[ aNode buildUI.]