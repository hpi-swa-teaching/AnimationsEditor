buildComponents
buildResetButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Reset animations';
		 action: #resetTargetMorph;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 0.8;
						leftFraction: 0.6;
						yourself);
		 yourself.