buildComponents
buildSaveButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Save animations';
		 action: #saveAnimations;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 2*(1/self numberButtons);
						leftFraction: 1*(1/self numberButtons);
						yourself);
		 yourself.