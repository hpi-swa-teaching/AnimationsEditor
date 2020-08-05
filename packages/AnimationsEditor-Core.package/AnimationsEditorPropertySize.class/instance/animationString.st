initialize-release
animationString
	self flag: #todo.
	^ 'AnimPropertyAnimation new
									   duration: 500;
									   property: #extent;
									   startValue: ', self targetMorph extent, ';
									   endValue: ', self targetSize, ';
									   target: aMorph;
									   state: #paused'.