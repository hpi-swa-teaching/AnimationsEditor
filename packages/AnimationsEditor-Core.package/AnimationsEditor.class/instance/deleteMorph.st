eventHandling
deleteMorph


"not tested on other morphs apart from normal morph"

	self selectedTreeNode ifNil: [self updateInformationText: self messageNoMorphSelected. ^ 'break']. 
	self removeMorphProperties. 
	self clearPropertyEditorPanel. 
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.

	self propertyList isEmpty
		ifFalse: [self selectedTreeNode: (self propertyList first).
			self propertyStartEnd update: #deleteMorph]
		ifTrue: [self selectedTreeNode: nil.
			self propertyStartEnd update: #deleteLastMorph].

	self timeline clearTimeline.
	self updateInformationText: self messageMorphDeleted.
	
	
	"to do: delete the JSON! for that look in animations editor property animated >> deleteAllKeyframes"
	
	

	
	