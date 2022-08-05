animation
resetTargetMorph
	 self targetValues at: 0 ifPresent: [ :value | 
		self setAnimationProperty: value].