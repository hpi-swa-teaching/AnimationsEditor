accessing
selectedTreeNode: aNode

	selectedTreeNode := aNode.
	aNode canRenderUI
		ifTrue: [self insertMorph: (aNode buildUIWith: self toolBuilder)
						 Into: self propertyEditorPanel.		
						].
	(aNode isKindOf: AnimationsEditorProperty)
		ifTrue: [self switchTimelineToMorphWith: aNode].