animation
createCompositeAnimationWith: aBlock withKey: aKey withPreviousKey: aPreviousKey
	| halfDuration |
	
	halfDuration := (aKey-aPreviousKey)//2.
	^ AnimCompositeAnimation new
		 add:
			(AnimAlphaBlendAnimation new
				morph: self targetMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: halfDuration;
				finishBlock: aBlock);
		add:  
			(AnimAlphaBlendAnimation new
				morph: self targetMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: halfDuration);
		yourself.