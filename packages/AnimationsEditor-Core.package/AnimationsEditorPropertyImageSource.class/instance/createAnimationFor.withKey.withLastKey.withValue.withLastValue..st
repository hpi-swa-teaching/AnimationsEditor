animation
createAnimationFor: aMorph withKey: aKey withLastKey: aLastKey withValue: aValue withLastValue: aLastTargetValue
	| halfDuration |
	
	halfDuration := (aKey-aLastKey)//2.
	^ AnimCompositeAnimation new
		 add:
			(AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: halfDuration;
				finishBlock: [aMorph image: (Form fromFileNamed: aValue)]);
		add:  
			(AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: halfDuration);
		yourself.
		