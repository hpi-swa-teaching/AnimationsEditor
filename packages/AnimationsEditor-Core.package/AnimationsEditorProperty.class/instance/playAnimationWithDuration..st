accessing
playAnimationWithDuration: aNumber
	self copyOfTargetMorph: self targetMorph copy.
	(self createAnimationFor: self targetMorph withDuration: aNumber) 
													register;
											    		start. 