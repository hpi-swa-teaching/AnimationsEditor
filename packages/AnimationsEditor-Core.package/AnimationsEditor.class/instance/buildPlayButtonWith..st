buildComponents
buildPlayButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Play animations';
		"color: Color veryLightGray;"
		 action: #playAnimations;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 0.6;
						leftFraction: 0.4;
						yourself);
		 yourself.