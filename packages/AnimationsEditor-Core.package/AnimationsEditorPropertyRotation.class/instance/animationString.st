accessing
animationString
	^ 'AnimPropertyAnimation new
									   duration: ', self targetFrame,';
									   property: #rotationDegrees;
									   startValue: ', self targetMorph rotationDegrees, ';
									   endValue: ', self currentValue, ';
									   target: aMorph;
									   state: #paused'.