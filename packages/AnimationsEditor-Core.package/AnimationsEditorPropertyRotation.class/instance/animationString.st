initialize-release
animationString
	self flag: #todo.
	^ 'AnimPropertyAnimation new
									   duration: ', self targetDuration,';
									   property: #rotationDegrees;
									   startValue: ', self targetMorph rotationDegrees, ';
									   endValue: ', self rotation, ';
									   target: aMorph;
									   state: #paused'.