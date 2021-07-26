animation
createAtomarAnimationFor: aProperty withKey: aKey withPreviousKey: aPreviousKey 
	^ (AnimPropertyAnimation new
		   duration: aKey - aPreviousKey;
		   property: aProperty;
		   startValue: (self targetValues at: aPreviousKey);
		   endValue: (self targetValues at: aKey);
		   target: self targetMorph;
		   state: #paused;
		   yourself).