buildComponents
buildPlayButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Play animations';
		"color: Color veryLightGray;"
		 action: #playAnimations;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 0.75;
						leftFraction: 0.55;
						yourself);
		 yourself.