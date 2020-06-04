buildComponents
buildDummyButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'dummy button';
		"color: Color veryLightGray;"
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
		 yourself.