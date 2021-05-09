buildComponents
buildAddMorphButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Add morph';
		 action: #selectMorphByHand;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1*(1/self numberButtons);
						leftFraction: 0;
						yourself);
		 yourself.