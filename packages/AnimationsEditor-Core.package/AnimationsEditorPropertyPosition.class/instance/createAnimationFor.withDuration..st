accessing
createAnimationFor: aMorph withDuration: aNumber
	^ (AnimPropertyAnimation new
									   duration: aNumber;
									   property: #position;
									   startValue: (aMorph position);
									   endValue: position;
									   target: aMorph;
									   state: #paused).