accessing
animationString
	| duration |
	
	duration := -7.5 @ 7.5.
	^ 'AnimCompositeAnimation new
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: ' , duration , ';
				finishBlock: [aMorph color: ' , self currentValueAsString , '.]);
			add: (AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: ' , duration , ');
			loopCount: 1;
			register;
			state: #paused.'.