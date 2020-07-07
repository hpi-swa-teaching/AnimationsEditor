accessing
createAnimationFor: aMorph
	self flag: #todo.
	^ AnimCompositeAnimation new
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: 300;
				finishBlock: [aMorph color: self color.]);
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: 200);
			loopCount: 1;
			register;
			state: #paused.