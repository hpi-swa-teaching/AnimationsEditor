buildComponents
createAnimationFor: aMorph withKey: aKey withLastKey: aLastKey withValue: aValue withLastValue: aLastTargetValue

	^ (AnimPropertyAnimation new
		   duration: aKey - aLastKey;
		   property: #position;
		   startValue: aLastTargetValue;
		   endValue: aValue;
		   target: aMorph;
		   state: #paused;
		   yourself).