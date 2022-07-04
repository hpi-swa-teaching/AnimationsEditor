accessing
playMovingAnimation
	| animation |
	animation:= AnimPathAnimation on: self between: {self position . self position + (self animationDuration@0)} within: self animationDuration.
	animation
		state: #paused;
		finishBlock: [self abandon];
		start.
