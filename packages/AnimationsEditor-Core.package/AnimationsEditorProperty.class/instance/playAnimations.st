accessing
playAnimations
	self copyOfTargetMorph: self targetMorph copy.
	self animationsForTarget collect: [ :each | 
											    each register.
											    each start]. 
