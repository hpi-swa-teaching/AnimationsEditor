accessing
createAnimationFor: aMorph withKey: aKey withLastKey: aLastKey withValue: aValue withLastValue: aLastTargetValue
	^ AnimCompositeAnimation new
		 add:
			(AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: ((aKey-aLastKey)//2);
				finishBlock: [aMorph color: (Color colorFrom:aValue)]);
		add:  
			(AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: ((aKey-aLastKey)//2));
		yourself.
		