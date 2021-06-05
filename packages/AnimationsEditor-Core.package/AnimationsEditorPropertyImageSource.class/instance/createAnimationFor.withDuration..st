codeGeneration
createAnimationFor: aMorph withDuration: aNumber
	self targetDuration: aNumber.
	^ AnimCompositeAnimation new
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: (aNumber//2);
				finishBlock: [aMorph image: (Form fromFileNamed: self targetSource)]);
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: (aNumber//2));
			loopCount: 1;
			register;
			state: #paused;
			yourself.