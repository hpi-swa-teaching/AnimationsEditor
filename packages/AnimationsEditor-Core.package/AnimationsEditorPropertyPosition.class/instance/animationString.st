accessing
animationString
	^ 'AnimPropertyAnimation new
									   duration: ', self targetFrame,';
									   property: #position;
									   startValue: ', (self targetMorph position), ';
									   endValue:', self targetPosition asString, ';
									   target: aMorph;
									   state: #paused'.