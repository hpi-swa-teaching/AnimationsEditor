accessing
animationString
	^ 'AnimPropertyAnimation new
									   duration: ', self targetFrame,';
									   property: #rotationDegrees;
									   startValue: ', self targetMorph rotationDegrees, ';
									   endValue: ', self targetRotation, ';
									   target: aMorph;
									   state: #paused'.