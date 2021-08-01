buildComponents
buildTextColorWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Color (as HEX)';
		 enabled: false;
		 frame: (LayoutFrame new topFraction: 0.4;
			 bottomFraction: 0.5;
			 leftFraction: 0.5;
			 rightFraction: 1;
			 yourself);
		 yourself.