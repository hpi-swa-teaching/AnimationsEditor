accessing
createAnimationFor: aMorph withDuration: aNumber
	^ (AnimPropertyAnimation new
									   duration: aNumber;
									   property: #extent;
									   startValue: (aMorph extent);
									   endValue: targetSize;
									   target: aMorph;
									   state: #paused).