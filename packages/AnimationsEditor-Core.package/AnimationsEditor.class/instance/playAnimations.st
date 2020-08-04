buildComponents
playAnimations
	self resetTargetMorph.
	"self propertyList collect: [:each | each playAnimations]."
	(self selectedTreeNode) playAnimationWithDuration: self propertyStartEnd duration.