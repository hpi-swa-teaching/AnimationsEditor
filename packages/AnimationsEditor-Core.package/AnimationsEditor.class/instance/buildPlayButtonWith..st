buildComponents
buildPlayButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Play animations';
		"color: Color veryLightGray;"
		 action: #playAnimations;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 3*(1/self numberButtons);
						leftFraction: 2*(1/self numberButtons);
						yourself);
		 yourself.