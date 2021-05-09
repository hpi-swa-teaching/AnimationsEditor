buildComponents
buildResetButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Reset animations';
		 action: #resetTargetMorph;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 4*(1/self numberButtons);
						leftFraction: 3*(1/self numberButtons);
						yourself);
		 yourself.