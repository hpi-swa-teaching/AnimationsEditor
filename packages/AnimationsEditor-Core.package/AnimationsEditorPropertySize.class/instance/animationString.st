accessing
animationString
	^ 'AnimPropertyAnimation new
									   duration: ', self targetDuration,';
									   property: #extent;
									   startValue: ', self targetMorph extent, ';
									   endValue: ', self targetSize, ';
									   target: aMorph;
									   state: #paused'.