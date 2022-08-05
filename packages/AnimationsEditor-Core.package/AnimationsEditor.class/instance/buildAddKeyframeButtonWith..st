buildComponents
buildAddKeyframeButtonWith: aBuilder 
	| rightFraction leftFraction |
	
	rightFraction := 6 * (1 / self numberButtons).
	leftFraction := 5 * (1 / self numberButtons).
	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Add keyframe';
		action: #addKeyframe;
		frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 rightFraction: rightFraction;
			 leftFraction: leftFraction;
			 yourself);
		yourself.