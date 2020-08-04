buildComponents
buildSaveButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Save animations';
		 action: #saveAnimations;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 0.5;
						leftFraction: 0.25;
						yourself);
		 yourself.