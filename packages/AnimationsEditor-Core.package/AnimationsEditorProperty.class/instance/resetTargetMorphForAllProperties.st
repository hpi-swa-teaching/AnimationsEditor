animation
resetTargetMorphForAllProperties
	self subproperties collect: [ :each | each resetTargetMorph ].