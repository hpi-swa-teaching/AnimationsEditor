support
waitNow: milliseconds
	self referenceTime: self referenceTime + milliseconds.
	AnimAnimationRegistry value updateAnimations: referenceTime.