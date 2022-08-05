stepping and presenter
playMovingAnimation
	| animation |

	animation:= (AnimPropertyAnimation 
					on: self 
					property: #position
					start: self position 
					end: self position + (self animationDuration @ 0)
					duration: self animationDuration)
					start;
					register;
					finishBlock: [self abandon].