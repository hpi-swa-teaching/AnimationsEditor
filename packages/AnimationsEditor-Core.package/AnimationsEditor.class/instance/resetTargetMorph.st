eventHandling
resetTargetMorph
	self updateInformationText: 'Reset morph'.
	self propertyList collect: [:each | each resetTargetMorphForAllProperties].