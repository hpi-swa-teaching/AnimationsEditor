buildComponents
buildPlayButtonWith: aBuilder 
	| rightFraction leftFraction |
	
	rightFraction := 3 * (1 / self numberButtons).
	leftFraction := 2 * (1 / self numberButtons).
	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Play animations';
		action: #playAnimations;
		frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 rightFraction: rightFraction;
			 leftFraction: leftFraction;
			 yourself);
		yourself.