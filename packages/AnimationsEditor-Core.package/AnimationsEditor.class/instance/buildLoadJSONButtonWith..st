buildComponents
buildLoadJSONButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Load JSON';
		 action: #openMorphLoadingField;
		 frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0.8;
						yourself);
		 yourself.