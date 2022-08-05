buildComponents
buildTextHeightWith: aBuilder 
	^ aBuilder pluggableButtonSpec new 
			model: self;
		 	label: 'Height (in Pixels)';
		 	enabled: false;
		 	frame: (LayoutFrame new topFraction: 0.3;
			 	bottomFraction: 0.5;
			 	leftFraction: 0.5;
			 	rightFraction: 1;
			 	yourself);
		 	yourself.