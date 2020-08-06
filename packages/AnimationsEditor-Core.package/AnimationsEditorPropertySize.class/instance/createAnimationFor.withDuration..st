accessing
createAnimationFor: aMorph withDuration: aNumber
	self targetDuration: aNumber.
	^ AnimPropertyAnimation new
									   duration: aNumber;
									   property: #extent;
									   startValue: (aMorph extent);
									   endValue: self targetSize;
									   target: aMorph;
									   state: #paused;
									   yourself.