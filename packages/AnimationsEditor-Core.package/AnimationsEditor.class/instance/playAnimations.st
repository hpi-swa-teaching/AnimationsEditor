eventHandling
playAnimations
	self resetTargetMorph.
	self updateInformationText: self messagePlayAnimations.
	self selectedTreeNode playAnimationWithStartEnd: self propertyStartEnd.
	self timeline createMovingLine.