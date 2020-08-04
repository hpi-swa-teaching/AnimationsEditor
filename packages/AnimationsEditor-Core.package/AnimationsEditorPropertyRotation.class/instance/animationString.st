initialize-release
animationString
	self flag: #todo.
	^ 'AnimPropertyAnimation new
									   duration: 500;
									   property: #rotationDegrees;
									   startValue: ', self targetMorph rotationDegrees, ';
									   endValue: ', self rotation, ';
									   target: aMorph;
									   state: #paused'