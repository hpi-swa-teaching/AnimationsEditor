accessing
createAnimationFor: aMorph withKey: aKey withLastKey: aLastKey withValue: aValue withLastValue: aLastTargetValue

	^ (AnimPropertyAnimation new
		   duration: aKey - aLastKey;
		   property: #rotationDegrees;
		   startValue: aLastTargetValue;
		   endValue: aValue;
		   target: aMorph;
		   state: #paused;
		   yourself).