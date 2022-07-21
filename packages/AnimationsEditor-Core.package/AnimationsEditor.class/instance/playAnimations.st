eventHandling
playAnimations

	self selectedTreeNode ifNil:[self updateInformationText:self messageNoMorphAddedOrActivatedProperty. ^ 'break'.].
	self resetTargetMorph.
	self updateInformationText: self messagePlayAnimations.
	self selectedTreeNode playAnimationWithStartEnd: self propertyStartEnd.
	self timeline createMovingLine.