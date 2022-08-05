eventHandling
addKeyframe
	self selectedTreeNode 
		ifNil:[ self updateInformationText: self messageNoMorphAddedOrActivatedProperty. ^ 'break'].
	self selectedTreeNode isActivated
		ifTrue: [self updateInformationText: self messageAddedKeyframe.
			self selectedTreeNode addKeyframe]
		ifFalse: [self updateInformationText: self messageNoPropertySelected].
				
