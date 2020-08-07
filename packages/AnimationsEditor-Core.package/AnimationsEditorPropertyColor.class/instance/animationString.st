accessing
animationString
	^ 'AnimCompositeAnimation new
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: ', (self targetDuration//2),';
				finishBlock: [aMorph color: ', self targetColorAsString, '.]);
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: ',(self targetDuration//2),');
			loopCount: 1;
			register;
			state: #paused.'.