accessing
createAnimationFor: aKey withLastKey: aLastKey
	^ (AnimPropertyAnimation new
		   duration: aKey - aLastKey;
		   property: #extent;
		   startValue: (self targetValues at: aLastKey);
		   endValue: (self targetValues at: aKey);
		   target: self targetMorph;
		   state: #paused;
		   yourself).