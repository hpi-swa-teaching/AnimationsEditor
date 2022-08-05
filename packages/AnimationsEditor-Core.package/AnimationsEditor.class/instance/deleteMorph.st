eventHandling
deleteMorph
	self selectedTreeNode ifNil: [self updateInformationText: self messageNoMorphSelected. ^ 'break']. 
	self removeMorphProperties. 
	self clearPropertyEditorPanel. 
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	self updateEndTime.
	self timeline clearTimeline.
	self updateInformationText: self messageMorphDeleted.
	self selectedTreeNode: nil.
	

	
	