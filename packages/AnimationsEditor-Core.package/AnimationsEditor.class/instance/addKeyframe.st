eventHandling
addKeyframe
	self updateInformationText: 'Added keyframe.'.
	(self selectedTreeNode) playAnimationWithDuration: self propertyStartEnd duration.