accessing
selectedTreeNode: aNode 
	selectedTreeNode := aNode.
	aNode canRenderUI
		ifTrue: [
				(aNode isActivated) ifTrue: [
					self
				insertMorph: (aNode buildUIWith: self toolBuilder)
				Into: self propertyEditorPanel]
				ifFalse: [ self
				insertMorph: (aNode buildSelectPanelWith:  self toolBuilder) Into: self propertyEditorPanel
					].	
					].
				
					
	aNode isStartEnd
		ifFalse: [self switchTimelineToMorphWith: aNode].