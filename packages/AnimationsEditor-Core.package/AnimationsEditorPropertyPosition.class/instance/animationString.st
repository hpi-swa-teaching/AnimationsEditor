accessing
animationString
	^ 'AnimPropertyAnimation new
			duration: ', self targetFrame,';
			property: #position;
			startValue: ', (self targetMorph position), ';
			endValue:', self currentValue asString, ';
			target: aMorph;
			state: #paused'.