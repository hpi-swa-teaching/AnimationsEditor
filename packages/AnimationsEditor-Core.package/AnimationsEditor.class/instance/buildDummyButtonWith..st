buildComponents
buildDummyButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Add morph';
		"color: Color veryLightGray;"
		 action: #selectMorphByHand;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 0.5;
						leftFraction: 0;
						yourself);
		 yourself.