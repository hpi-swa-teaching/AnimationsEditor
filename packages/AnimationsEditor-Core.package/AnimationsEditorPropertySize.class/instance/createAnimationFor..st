accessing
createAnimationFor: aMorph
	^ (AnimPropertyAnimation new
									   duration: 500;
									   property: #extent;
									   startValue: (aMorph extent);
									   endValue: targetSize;
									   target: aMorph;
									   state: #paused).