initialization
initialize


	super initialize.
	self isActivated: false.
	self addStartFrame.
	self process: [
                 [ 1 seconds asDelay wait.
                   self targetMorph isInWorld ifFalse: [self animationsEditor deleteMorph: self process.]. 
                 ] repeat.
               ] fork.