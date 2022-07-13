eventHandling
addKeyframe
	self updateInformationText: 'Added keyframe.'.
	self selectedTreeNode addKeyframe.
	
	"this should be necessary to update animation length"
	self propertyStartEnd addKeyframe.