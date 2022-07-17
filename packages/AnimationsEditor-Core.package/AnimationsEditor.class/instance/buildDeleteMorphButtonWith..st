buildComponents
buildDeleteMorphButtonWith: aBuilder 
	| rightFraction leftFraction |
	
	rightFraction := 7 * (1 / self numberButtons).
	leftFraction := 6 * (1 / self numberButtons).
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Delete Morph';
		 action: #deleteMorph;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 rightFraction: rightFraction;
			 leftFraction: leftFraction;
			 yourself);
		 yourself.