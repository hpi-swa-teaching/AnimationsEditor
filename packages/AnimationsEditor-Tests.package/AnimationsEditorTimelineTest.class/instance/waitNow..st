calculation
waitNow: milliseconds
	|referenceTime|
	referenceTime := referenceTime + milliseconds.
	AnimAnimationRegistry value updateAnimations: referenceTime.