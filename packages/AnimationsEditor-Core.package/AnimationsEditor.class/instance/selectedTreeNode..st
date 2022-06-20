accessing
selectedTreeNode: aNode 
Transcript show: aNode.
	selectedTreeNode := aNode.
	aNode canRenderUI
		ifTrue: [
				(self isSelected: aNode) ifTrue: [
					self
				insertMorph: (aNode buildUIWith: self toolBuilder)
				Into: self propertyEditorPanel]
				ifFalse: [ self
				insertMorph: (aNode buildSelectTrackUIWith: self toolBuilder) Into: self propertyEditorPanel
					].	
					].
				
					
	aNode isStartEnd
		ifFalse: [self switchTimelineToMorphWith: aNode].