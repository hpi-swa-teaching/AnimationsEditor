eventHandling
initializeDeleteMorph
	self selectedTreeNode ifNil: [self updateInformationText: self messageNoMorphSelected. ^ 'break']. 
	self removeMorphProperties. 
	self clearPropertyEditorPanel. 
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	
	

	
	