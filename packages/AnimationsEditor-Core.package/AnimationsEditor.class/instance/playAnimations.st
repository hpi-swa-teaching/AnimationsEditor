eventHandling
playAnimations
	self resetTargetMorph.
	"self propertyList collect: [:each | each playAnimations]."
	self updateInformationText: 'Playing selected Animation'.
	(self selectedTreeNode) playAnimationWithDuration: self propertyStartEnd duration.