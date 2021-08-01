buildComponents
buildSaveButtonWith: aBuilder 
	| rightFraction leftFraction |
	
	rightFraction := 2 * (1 / self numberButtons).
	leftFraction := 1 * (1 / self numberButtons).
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Save animations';
		 action: #saveAnimations;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 rightFraction: rightFraction;
			 leftFraction: leftFraction;
			 yourself);
		 yourself.