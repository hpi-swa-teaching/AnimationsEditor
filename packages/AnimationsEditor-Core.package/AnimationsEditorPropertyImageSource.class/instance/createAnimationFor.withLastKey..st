animation
createAnimationFor: aKey withLastKey: aLastKey
	| halfDuration |
	
	halfDuration := (aKey-aLastKey)//2.
	^ AnimCompositeAnimation new
		 add:
			(AnimAlphaBlendAnimation new
				morph: self targetMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: halfDuration;
				finishBlock: [self targetMorph image: (Form fromFileNamed: (self targetValues at: aKey))]);
		add:  
			(AnimAlphaBlendAnimation new
				morph: self targetMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: halfDuration);
		yourself.
		