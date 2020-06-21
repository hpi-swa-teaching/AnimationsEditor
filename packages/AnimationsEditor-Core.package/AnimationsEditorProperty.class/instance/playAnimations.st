accessing
playAnimations
	 self animationsForTarget collect: [ :each | 
												    each register.
												    each start]. 