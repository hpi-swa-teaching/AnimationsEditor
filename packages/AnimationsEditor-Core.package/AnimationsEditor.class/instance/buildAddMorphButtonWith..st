buildComponents
buildAddMorphButtonWith: aBuilder 
	| rightFraction |
	
	rightFraction:= 1 * (1 / self numberButtons).
	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Add morph';
		action: #selectMorphByHand;
		frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 rightFraction: rightFraction;
			 leftFraction: 0;
			 yourself);
		yourself.