buildComponents
createAnimationFor: aMorph withKey: key withLastKey: lastKey withValue: value withLastValue: lastTargetValue

	^ (AnimPropertyAnimation new
		   duration: key - lastKey;
		   property: #position;
		   startValue: lastTargetValue;
		   endValue: value;
		   target: aMorph;
		   state: #paused;
		   yourself).