eventHandling
deleteMorph
	self initializeDeleteMorph.
	self propertyList isEmpty
		ifFalse: [self selectedTreeNode: (self propertyList first).
			self propertyStartEnd update: #deleteMorph]
		ifTrue: [self selectedTreeNode: nil.
			self propertyStartEnd update: #deleteLastMorph].

	self timeline clearTimeline.
	self updateInformationText: self messageMorphDeleted.
	
	

	
	