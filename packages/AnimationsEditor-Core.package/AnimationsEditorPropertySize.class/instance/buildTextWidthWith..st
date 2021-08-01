buildComponents
buildTextWidthWith: aBuilder
	^ aBuilder pluggableButtonSpec new
				model: self;
				label: 'Width (in Pixels)';
				enabled: false;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.3;
								leftFraction: 0.5;
								rightFraction: 1;
								yourself);
				 yourself.