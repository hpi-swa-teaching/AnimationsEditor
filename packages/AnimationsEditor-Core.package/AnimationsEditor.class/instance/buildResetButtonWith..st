buildComponents
buildResetButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Reset animations';
		 action: #resetTargetMorph;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0.75;
						yourself);
		 yourself.