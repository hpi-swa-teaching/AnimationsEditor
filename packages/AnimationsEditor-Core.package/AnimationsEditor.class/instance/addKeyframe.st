eventHandling
addKeyframe

	self selectedTreeNode isActivated 
		ifTrue: [
			self updateInformationText: 'Added keyframe.'.
			self selectedTreeNode addKeyframe.] 
		ifFalse: [
			self updateInformationText: 'Activate property first'.].