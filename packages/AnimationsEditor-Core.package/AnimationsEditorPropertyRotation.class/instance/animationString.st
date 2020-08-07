accessing
animationString
	^ 'AnimPropertyAnimation new
									   duration: ', self targetDuration,';
									   property: #rotationDegrees;
									   startValue: ', self targetMorph rotationDegrees, ';
									   endValue: ', self targetRotation, ';
									   target: aMorph;
									   state: #paused'.