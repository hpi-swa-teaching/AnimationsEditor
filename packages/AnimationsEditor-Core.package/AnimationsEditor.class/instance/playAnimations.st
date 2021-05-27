eventHandling
playAnimations
	self resetTargetMorph.
	"self propertyList collect: [:each | each playAnimations]."
	self updateInformationText: self messagePlayAnimations.
	(self selectedTreeNode) playAnimationWithStartEnd: self propertyStartEnd.