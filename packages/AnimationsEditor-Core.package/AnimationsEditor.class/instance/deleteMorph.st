eventHandling
deleteMorph
"NEEDS REFACTORING"
"selected tree node needs to be set to some property when the morph is added"
"not tested on other morphs apart from normal morph"

	self selectedTreeNode ifNil: [self updateInformationText: self messageNoMorphSelected. ^ 'break']. 
	self removeMorphProperties. 
	self clearPropertyEditorPanel. 
	self timeline clearTimeline. 
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	self selectedTreeNode: nil. 
	self updateInformationText: self messageMorphDeleted.
	
	
	
"	self selectedTreeNode ifNil: [^ 'break']. 
	

	Transcript show: self selectedTreeNode; cr. 
	to do: delete the JSON! for that look in animations editor property animated >> deleteAllKeyframes
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	self updateInformationText: self messageMorphDeleted.
	self selectedTreeNode ifNil:[self updateInformationText: self messageNoMorphExistingNoActivatedProperty.].

	
	need to terminate process for each property
	
	self selectedTreeNode process terminate." "doesnot work
	
	self clearPropertyEditorPanel. 
	self timeline clearTimeline. 
	self selectedTreeNode: nil. "
	

	
	