accessing
createAnimationFor: aMorph withDuration: aNumber
	self targetDuration: aNumber.
	^ (AnimPropertyAnimation new
									   duration: aNumber;
									   property: #rotationDegrees;
									   startValue: (aMorph rotationDegrees);
									   endValue: (self rotation);
									   target: aMorph;
									   state: #paused).