eventHandling
deleteMorph


"not tested on other morphs apart from normal morph"

	self selectedTreeNode ifNil: [self updateInformationText: self messageNoMorphSelected. ^ 'break']. 
	self removeMorphProperties. 
	self clearPropertyEditorPanel. 
	self timeline clearTimeline. 
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	self selectedTreeNode: nil. 
	self updateInformationText: self messageMorphDeleted.
	
	
	"to do: delete the JSON! for that look in animations editor property animated >> deleteAllKeyframes"
	
	

	
	