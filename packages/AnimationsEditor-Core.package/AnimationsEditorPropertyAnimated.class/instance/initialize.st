initialization
initialize
"|planProcess|"

	super initialize.
	self isActivated: false.
	self addStartFrame.
	"planProcess := [
                 [ 1 seconds asDelay wait.
                   self targetMorph isInWorld ifFalse: [self animationsEditor deleteMorph. planProcess terminate.]. the question is if the process actually terminates
                 ] repeat.
               ] fork."