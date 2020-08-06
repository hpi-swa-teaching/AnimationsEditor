accessing
createAnimationFor: aMorph withDuration: aNumber
	self targetDuration: aNumber.
	^ AnimPropertyAnimation new
									   duration: aNumber;
									   property: #position;
									   startValue: (aMorph position);
									   endValue: self targetPosition;
									   target: aMorph;
									   state: #paused;
									   yourself.