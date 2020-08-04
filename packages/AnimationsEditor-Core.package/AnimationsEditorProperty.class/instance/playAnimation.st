accessing
playAnimation
	self copyOfTargetMorph: self targetMorph copy.
	(self createAnimationFor: self targetMorph) 
													register;
											    	start. 