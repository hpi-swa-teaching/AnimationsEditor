initialize-release
animationString
	self flag: #todo.
	^ 'AnimPropertyAnimation new
									   duration: 500;
									   property: #extent;
									   startValue: ', self targetMorph extent, ';
									   endValue: ', targetSize, ';
									   target: aMorph;
									   state: #paused'