accessing
animationString
	self flag: #todo.
	^ 'AnimPropertyAnimation new
									   duration: 500;
									   property: #position;
									   startValue: ', (self targetMorph position), ';
									   endValue:', position asString, ';
									   target: aMorph;
									   state: #paused'.