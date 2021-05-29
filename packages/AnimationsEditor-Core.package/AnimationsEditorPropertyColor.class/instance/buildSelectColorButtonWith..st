buildComponents
buildSelectColorButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Select Color';
		 action: #updateTargetColor;
		 frame: (LayoutFrame new
						topFraction: 0.3;
						bottomFraction: 0.5;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
		 yourself.