accessing
propertyToAnimationFor: aMorph
	^ (AnimPropertyAnimation new
									   duration: 500;
									   property: #position;
									   startValue: (aMorph position);
									   endValue: position;
									   target: aMorph;
									   state: #paused).