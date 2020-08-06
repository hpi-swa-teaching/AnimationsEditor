accessing
createAnimationFor: aMorph withDuration: aNumber
	self targetDuration: aNumber.
	^ AnimPropertyAnimation new
									   duration: aNumber;
									   property: #rotationDegrees;
									   startValue: (aMorph rotationDegrees);
									   endValue: (self targetRotation);
									   target: aMorph;
									   state: #paused;
									   yourself.