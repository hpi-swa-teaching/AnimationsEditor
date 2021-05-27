accessing
createAnimationFor: aMorph withKey: key withLastKey: lastKey withValue: value withLastValue: lastTargetValue

	^ AnimCompositeAnimation new
		 add:
			(AnimAlphaBlendAnimation new
					morph: aMorph;
					startValue: 1.0;
					endValue: 0.0;
					duration: ((key-lastKey)//2);
					finishBlock: [aMorph color: value.]);
		add:  
			(AnimAlphaBlendAnimation new
					morph: aMorph;
					startValue: 0.0;
					endValue: 1.0;
					duration: ((key-lastKey)//2));
		yourself.