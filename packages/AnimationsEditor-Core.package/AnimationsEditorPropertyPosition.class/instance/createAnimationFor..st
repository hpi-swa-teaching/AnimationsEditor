accessing
createAnimationFor: aMorph
	^ (AnimPropertyAnimation new
									   duration: 500;
									   property: #position;
									   startValue: (aMorph position);
									   endValue: (self positionX asInteger)@(self positionY asInteger);
									   target: aMorph;
									   state: #paused).