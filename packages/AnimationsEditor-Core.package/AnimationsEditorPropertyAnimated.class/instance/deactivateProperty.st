buildComponents
deactivateProperty
	self animationsEditor selectedTreeNode isActivated: false.
	self animationsEditor selectedTreeNode: self.
	self animationsEditor selectedTreeNode deleteAllKeyframes.