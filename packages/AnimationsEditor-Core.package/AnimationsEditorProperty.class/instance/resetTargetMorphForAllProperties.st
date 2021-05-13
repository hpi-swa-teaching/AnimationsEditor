animation
resetTargetMorphForAllProperties
	self subproperties valuesDo: [ :each | each resetTargetMorph ].