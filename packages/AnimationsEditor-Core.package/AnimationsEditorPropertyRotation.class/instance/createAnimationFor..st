accessing
createAnimationFor: aMorph
	^ (AnimPropertyAnimation new
									   duration: 500;
									   property: #rotationDegrees;
									   startValue: (aMorph rotationDegrees);
									   endValue: (self rotation);
									   target: aMorph;
									   state: #paused).