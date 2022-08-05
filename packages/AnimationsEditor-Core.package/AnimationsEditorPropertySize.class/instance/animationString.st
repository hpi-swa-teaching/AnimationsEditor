accessing
animationString
	^ 'AnimPropertyAnimation new
			duration: ' , self targetFrame , ';
			property: #extent;
			startValue: ' , self targetMorph extent , ';
			endValue: ' , self currentValue , ';
			target: aMorph;
			state: #paused'.