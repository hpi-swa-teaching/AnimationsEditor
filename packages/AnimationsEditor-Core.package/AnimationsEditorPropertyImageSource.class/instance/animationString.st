codeGeneration
animationString
	| duration |
	
	duration:= (self targetFrame//2).
	^ 'AnimCompositeAnimation new
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: ', duration ,';
				finishBlock: [aMorph image: (Form fromFileNamed: ', (self currentValue), ')]);
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: ', duration ,';
			loopCount: 1;
			register;
			state: #paused;
			yourself.'.