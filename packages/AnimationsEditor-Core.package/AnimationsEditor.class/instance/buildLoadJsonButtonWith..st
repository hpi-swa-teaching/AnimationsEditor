buildComponents
buildLoadJsonButtonWith: aBuilder 
	| rightFraction leftFraction |
	
	rightFraction := 5 * (1 / self numberButtons).
	leftFraction := 4 * (1 / self numberButtons).
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Load JSON';
		 action: #handleLoadJsonButton;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 rightFraction: rightFraction;
			 leftFraction: leftFraction;
			 yourself);
		 yourself.